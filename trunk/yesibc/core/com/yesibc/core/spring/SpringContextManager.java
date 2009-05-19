/**
 * $Id: SpringContextManager.java,v 1.1 2008/01/08 09:52:24 abel Exp $
 */

package com.yesibc.core.spring;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Jan 8, 2008 1:47:01 PM
 */
public class SpringContextManager {
	protected final Log log = LogFactory.getLog(getClass());

	private ApplicationContext springContext = null;

	private static SpringContextManager me;
	static {
		me = new SpringContextManager();
	}

	private SpringContextManager() {
	}

	public static SpringContextManager instance() {
		return me;
	}

	public void setSpringApplicationContext(ApplicationContext context) {
		if (context == null) {
			throw new IllegalArgumentException(
					"Parameter context can not be null.");
		}
		springContext = context;
		log.info("Binded ApplicationContext at SpringContextManager.");
	}

	public ApplicationContext getApplicationContext() {
		if (springContext == null) {
			throw new IllegalArgumentException("Can not find context.");
		}
		return springContext;
	}

}
