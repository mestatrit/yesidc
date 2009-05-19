/**
 * $Id: MessageUtils.java,v 1.6 2008/06/25 05:43:50 abel Exp $
 */

package com.yesibc.core.utils;

import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.config.ModuleConfig;
import org.apache.struts.util.MessageResources;
import org.apache.struts.util.ModuleUtils;
import org.apache.struts.util.RequestUtils;

import com.yesibc.core.CoreConstants;


/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Feb 20, 2008 5:19:59 PM
 */
public class MessageUtils {

	public final static String DEFAULT_VALUE = "-1";
	protected static final Log logger = LogFactory.getLog(MessageUtils.class);

	public static String getLocalLan(HttpServletRequest request) {
		String language = request.getParameter("language");
		Locale loc = null;
		loc = (Locale) getCurrentLocale(request);
		if (language == null) {
			if (loc != null) {
				language = loc.getLanguage();
			} else {
				language = CoreConstants.LANGUAGE_EN;
			}
		} else {
			if (CoreConstants.LANGUAGE_FR.equals(language)) {
				loc = Locale.FRANCE;
			} else if (CoreConstants.LANGUAGE_EN.equals(language)) {
				loc = Locale.ENGLISH;
			} else if (CoreConstants.LANGUAGE_ZH.equals(language)) {
				loc = Locale.CHINESE;
			} else {
				loc = new Locale(language);
			}
			language = loc.getLanguage();
		}
		HttpSession session = request.getSession(true);
		setCurrentLocale(session, loc);
		return language;
	}

	public final static Locale getCurrentLocale(PageContext pc) {
		Locale loc = (Locale) pc.getAttribute(CoreConstants.LOCALE_KEY,
				PageContext.SESSION_SCOPE);
		if (loc == null) {
			loc = pc.getRequest().getLocale();
			if (loc == null)
				loc = Locale.getDefault();
			pc.setAttribute(CoreConstants.LOCALE_KEY, loc,
					PageContext.SESSION_SCOPE);
		}

		return loc;
	}

	public final static Locale getLocale(PageContext pc, String id) {
		if (CoreConstants.LOCALE_KEY.equals(id))
			return getCurrentLocale(pc);

		Locale locale = (Locale) pc.getAttribute(id, PageContext.SESSION_SCOPE);
		return locale;
	}

	public static Locale findAvailableLocale(Locale pref) {
		return findFormattingMatch(pref, Locale.getAvailableLocales());
	}

	public static Locale findFormattingMatch(Locale pref, Locale[] avail) {
		Locale match = null;
		for (int i = 0; i < avail.length; i++) {
			if (pref.equals(avail[i])) {
				// Exact match
				match = avail[i];
				break;
			} else if (pref.getLanguage().equals(avail[i].getLanguage())
					&& ("".equals(avail[i].getCountry()))) {
				// Language match
				if (match == null)
					match = avail[i];
			}
		}

		return match;
	}

	/**
	 * Find and initialise the current default Locale. first we look if the
	 * default locale has been initialise, if we find it, we return it. second,
	 * if they are no session, we create one, and initialise the default locale
	 * with :
	 * <ul>
	 * <li>the client locale (request.getLocale())</li>
	 * <li>the application default locale (Locale.getDefault())</li>
	 * </ul>
	 * 
	 * @param request
	 *            http request
	 * @return Locale the default Locale for this session
	 */
	public final static Locale getCurrentLocale(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		Locale loc = null;
		if (session != null) {
			loc = (Locale) session.getAttribute(CoreConstants.LOCALE_KEY);
		}

		if (loc == null) {
			if (request.getLocale() != null) {
				loc = findAvailableLocale(request.getLocale());
			} else {
				loc = Locale.getDefault();
			}
			session = request.getSession(true);
			session.setAttribute(CoreConstants.LOCALE_KEY, loc);
		}

		return loc;
	}

	/**
	 * find the locale use specify id. if there are no session return null
	 * 
	 * @param request
	 *            HttpServletRequest
	 * @param id
	 *            session identifiant used to find the locale
	 * @return Locale null if no session, current default Locale if id is
	 *         Const.LOCALE.KEY, and looking for locale with id in session.
	 */
	public final static Locale getLocale(HttpServletRequest request, String id) {
		if (CoreConstants.LOCALE_KEY.equals(id))
			return getCurrentLocale(request);

		HttpSession session = request.getSession(false);
		if (session == null)
			return null;

		Locale locale = (Locale) session.getAttribute(id);

		return locale;
	}

	/**
	 * initialise current default locale
	 * 
	 * @param session
	 *            HttpSession where to initialise the default Locale
	 * @param locale
	 *            Locale
	 */
	public final static void setCurrentLocale(HttpSession session, Locale locale) {
		Locale loc = findAvailableLocale(locale);
		session.setAttribute(CoreConstants.LOCALE_KEY, loc);
	}

	public final static void setLocale(HttpSession session, Locale locale,
			String id) {
		if (CoreConstants.LOCALE_KEY.equals(id))
			setCurrentLocale(session, locale);
		else {
			Locale loc = findAvailableLocale(locale);
			session.setAttribute(id, loc);
		}
	}

	public static String getMessageValue(HttpServletRequest request,
			String msgCode) {
		try {
			Locale locale = getLocale(request);
			MessageResources messages = getResources(request);
			String msgValue = StringUtils.trim2Empty(messages.getMessage(
					locale, msgCode));
			if ("".equals(msgValue)) {
				msgValue = DEFAULT_VALUE;
			}
			return msgValue;
		} catch (Exception e) {
			logger.error("getMessageValue", e);
			e.printStackTrace();
			return DEFAULT_VALUE;
		}
	}

	public static String getMessageValue(HttpServletRequest request,
			String key, String msgCode) {
		try {
			Locale locale = getLocale(request);
			MessageResources messages = getResources(request, key);
			String msgValue = StringUtils.trim2Empty(messages.getMessage(
					locale, msgCode));
			if ("".equals(msgValue)) {
				msgValue = DEFAULT_VALUE;
			}
			return msgValue;
		} catch (Exception e) {
			logger.error("getMessageValue", e);
			e.printStackTrace();
			return DEFAULT_VALUE;
		}
	}

	public static String getMessageValue(HttpServletRequest request,
			String key, String msgCode, Object[] args) {
		try {
			Locale locale = getLocale(request);
			MessageResources messages = getResources(request, key);
			String msgValue = StringUtils.trim2Empty(messages.getMessage(
					locale, msgCode, args));
			if ("".equals(msgValue)) {
				msgValue = DEFAULT_VALUE;
			}
			return msgValue;
		} catch (Exception e) {
			logger.error("getMessageValue", e);
			e.printStackTrace();
			return DEFAULT_VALUE;
		}
	}

	protected static Locale getLocale(HttpServletRequest request) {
		return RequestUtils.getUserLocale(request, null);
	}

	protected static MessageResources getResources(HttpServletRequest request) {
		return (MessageResources) request.getAttribute(CoreConstants.MESSAGES_KEY);
	}

	protected static MessageResources getResources(HttpServletRequest request,
			String key) {
		ServletContext context = request.getSession().getServletContext();
		ModuleConfig moduleConfig = ModuleUtils.getInstance().getModuleConfig(
				request, context);
		return (MessageResources) context.getAttribute(key
				+ moduleConfig.getPrefix());
	}

}
