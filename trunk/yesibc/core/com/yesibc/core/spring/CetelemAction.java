/**
 * $Id: CetelemAction.java,v 1.1 2007/10/22 08:28:18 abel Exp $
 */

package com.yesibc.core.spring;

import javax.servlet.ServletContext;

import org.apache.struts.action.ActionServlet;
import org.apache.struts.config.ModuleConfig;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.struts.DelegatingActionProxy;

/**
 * @author David.ye o_olle_e@hotmail.com create time: 2007-10-16 下午09:45:40
 */
public class CetelemAction extends DelegatingActionProxy {

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
