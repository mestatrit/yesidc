/**
 * $Id: StrutsAction.java,v 1.5 2009/02/16 09:07:07 abel Exp $
 */

package com.yesibc.core.web;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DoubleConverter;
import org.apache.commons.beanutils.converters.FloatConverter;
import org.apache.commons.beanutils.converters.IntegerConverter;
import org.apache.commons.beanutils.converters.LongConverter;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.springframework.util.ReflectionUtils;

import com.yesibc.core.web.support.DateConverter;
import com.yesibc.core.web.support.StringConverter;


/**
 * Enhance Struts DispatchAction
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007/10/17 10:21:37
 */
public class StrutsAction extends ExtendDispatchAction {

	public static final String SUCCESS = "success";

	public static final String DIRECTLY_MESSAGE_KEY = "message";

	static {
		registConverter();
	}

	/**
	 * some convert
	 */
	public static void registConverter() {
		ConvertUtils.register(new StringConverter(), String.class);
		ConvertUtils.register(new IntegerConverter(null), Integer.class);
		ConvertUtils.register(new LongConverter(null), Long.class);
		ConvertUtils.register(new FloatConverter(null), Float.class);
		ConvertUtils.register(new DoubleConverter(null), Double.class);
		ConvertUtils.register(new DateConverter("yyyy-MM-dd"), Date.class);
	}

	/**
	 * Copy FormBean to Object
	 */
	protected void bindEntity(ActionForm form, Object object) {
		if (form != null) {
			try {
				BeanUtils.copyProperties(object, form);
			} catch (Exception e) {
				ReflectionUtils.handleReflectionException(e);
			}
		}
	}

	/**
	 * Copy Object to FormBean
	 */
	protected void bindForm(ActionForm form, Object object) {
		if (object != null) {
			try {
				BeanUtils.copyProperties(form, object);
			} catch (Exception e) {
				ReflectionUtils.handleReflectionException(e);
			}
		}
	}

	/**
	 * get session
	 * 
	 * @param request
	 * @return
	 */
	protected HttpSession getSession(HttpServletRequest request) {
		return request.getSession(true);
	}

	/**
	 * get session
	 * 
	 * @param request
	 * @return
	 */
	protected HttpSession getSession(HttpServletRequest request, boolean tag) {
		return request.getSession(tag);
	}

	/**
	 * get application
	 * 
	 * @param request
	 * @return
	 */
	protected ServletContext getApplication(HttpServletRequest request) {
		ServletContext application = getSession(request).getServletContext();
		return application;
	}

	/**
	 * Get string from session
	 * 
	 * @param request
	 * @param key
	 * @return
	 */
	protected String getStrFromSession(HttpServletRequest request, String key) {
		return getSession(request).getAttribute(key) == null ? "" : (getSession(request).getAttribute(key)).toString();
	}

	/**
	 * Get object from session
	 * 
	 * @param request
	 * @param key
	 * @return
	 */
	protected Object getOFromSession(HttpServletRequest request, String key) {
		return getSession(request, false).getAttribute(key);
	}

	/**
	 * set object to session
	 * 
	 * @param request
	 * @param key
	 * @param o
	 */
	protected void setSession(HttpServletRequest request, String key, Object o) {
		getSession(request).setAttribute(key, o);
	}

	/**
	 * Save a piece of message to Message
	 */
	protected void saveMessage(HttpServletRequest request, String key, String... values) {
		ActionMessages msgs = new ActionMessages();
		msgs.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(key, values));
		saveMessages(request.getSession(), msgs);
	}

	/**
	 * Save text message(no i18n) to Message directly
	 * 
	 * @param message
	 *            text message
	 */
	protected void saveDirectlyMessage(HttpServletRequest request, String message) {
		ActionMessages msgs = new ActionMessages();
		msgs.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(DIRECTLY_MESSAGE_KEY, message));
		saveMessages(request.getSession(), msgs);
	}

	/**
	 * Save a piece of message to Error
	 */
	protected void saveError(HttpServletRequest request, String key, String... values) {
		ActionMessages errors = new ActionMessages();
		errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(key, values));
		saveErrors(request.getSession(), errors);
	}

	/**
	 * Save text directly in session to show in the page.
	 * 
	 * @param message
	 *            text message
	 */
	protected void saveErrorMessage(HttpServletRequest request, String message) {
		ActionMessages errors = new ActionMessages();
		errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(message, false));
		saveErrors(request.getSession(), errors);
	}

	/**
	 * Save text message(no i18n) to Error directly
	 * 
	 * @param message
	 *            text message
	 */
	protected void saveDirectlyError(HttpServletRequest request, String message) {
		ActionMessages errors = new ActionMessages();
		errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(DIRECTLY_MESSAGE_KEY, message));
		saveErrors(request.getSession(), errors);
	}

	/**
	 * output to client.
	 * 
	 * @param contentType
	 *            It includes ".html,text,xml".
	 */
	protected void render(HttpServletResponse response, String text, String contentType) {
		try {
			response.setContentType(contentType);
			response.getWriter().write(text);
		} catch (IOException e) {
			log.error(e.getMessage(), e);
		}
	}

	/**
	 * Output Text to client directly.
	 */
	protected void renderText(HttpServletResponse response, String text) {
		render(response, text, "text/plain;charset=UTF-8");
	}

	/**
	 * Output HTML to client directly.
	 */
	protected void renderHtml(HttpServletResponse response, String text) {
		render(response, text, "text/html;charset=UTF-8");
	}

	/**
	 * Output XML to client directly.
	 */
	protected void renderXML(HttpServletResponse response, String text) {
		render(response, text, "text/xml;charset=UTF-8");
	}
}
