/**
 * $Id: ExtendsDelegatingActionProxy.java,v 1.1 2007/10/22 08:28:18 abel Exp $
 */

package com.yesibc.core.spring;

import javax.servlet.ServletContext;

import org.apache.struts.action.ActionServlet;
import org.apache.struts.config.ModuleConfig;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.struts.DelegatingActionProxy;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Oct 18, 2007 2:44:12 PM
 */
public class ExtendsDelegatingActionProxy extends DelegatingActionProxy {

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.springframework.web.struts.DelegatingActionProxy#getWebApplicationContext(org.apache.struts.action.ActionServlet,
	 *      org.apache.struts.config.ModuleConfig)
	 */
	@Override
	protected WebApplicationContext getWebApplicationContext(
			ActionServlet actionServlet, ModuleConfig moduleConfig)
			throws IllegalStateException {
		ServletContext sc = actionServlet.getServletContext();
		WebApplicationContext wac = null;
		wac = WebApplicationContextUtils.getWebApplicationContext(sc);
		return wac;
	}

}
