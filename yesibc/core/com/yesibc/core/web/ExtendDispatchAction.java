/**
 * $Id: ExtendDispatchAction.java,v 1.1 2008/03/06 07:57:38 abel Exp $
 */

package com.yesibc.core.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.yesibc.core.utils.MessageUtils;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Feb 28, 2008 3:35:38 PM
 */
public class ExtendDispatchAction extends DispatchAction {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		if (isCancelled(request)) {
			ActionForward af = cancelled(mapping, form, request, response);
			if (af != null)
				return af;
		}
		String parameter = getParameter(mapping, form, request, response);
		String name = getMethodName(mapping, form, request, response, parameter);
		
		// set language
		MessageUtils.getLocalLan(request);		

		if ("execute".equals(name) || "perform".equals(name)) {
			String message = messages.getMessage("dispatch.recursive", mapping
					.getPath());
			log.error(message);
			throw new ServletException(message);
		} else {
			return dispatchMethod(mapping, form, request, response, name);
		}
	}
	
	

}
