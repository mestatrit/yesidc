/**
 * $Id: ApplicationListener.java,v 1.1 2008/01/08 09:52:40 abel Exp $
 */

package com.yesibc.core.web;

import javax.servlet.ServletContextEvent;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.yesibc.core.spring.SpringContext;


/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Jan 8, 2008 1:58:37 PM
 */
public class ApplicationListener extends ContextLoaderListener {
	private final Log logger = LogFactory.getLog(this.getClass());

	public void contextInitialized(ServletContextEvent event) {
		super.contextInitialized(event);

		if (logger.isDebugEnabled()) {
			logger.debug("init ApplicationListener ...");
		}

		WebApplicationContext wac = WebApplicationContextUtils
				.getRequiredWebApplicationContext(event.getServletContext());

		SpringContext.setWebApplicationContext(wac);
	}

}
