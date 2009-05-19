/**
 * $Id: ConfigListener.java,v 1.2 2008/11/04 09:29:10 abel Exp $
 */
package com.yesibc.core.web;

import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;

import com.yesibc.core.utils.WebConfigUtils;

/**
 * @author abel.ye
 * 
 */
public class ConfigListener implements javax.servlet.ServletContextListener {
	public void contextDestroyed(ServletContextEvent event) {
		System.out.println("Bye!");
	}

	@SuppressWarnings("unchecked")
	public void contextInitialized(ServletContextEvent event) {
		ServletContext ctx = event.getServletContext();
		Enumeration<String> names = ctx.getInitParameterNames();
		while (names.hasMoreElements()) {
			String key = names.nextElement();
			WebConfigUtils.putParam(key, ctx.getInitParameter(key));
		}
	}
}
