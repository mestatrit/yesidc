/**
 * $Id: SpringContextAdapter.java,v 1.1 2008/01/08 09:52:24 abel Exp $
 */

package com.yesibc.core.spring;

import java.util.Map;

import org.springframework.context.ApplicationContext;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Jan 8, 2008 1:45:15 PM
 */
public interface SpringContextAdapter {
	
	public static SpringContextManager ctxManager = SpringContextManager
			.instance();

	public static final String KEY_CONTEXT_FILE_PATH = "path";

	public void setSpringApplicationContext(ApplicationContext context);

	public ApplicationContext getApplicationContext();

	@SuppressWarnings("unchecked")
	public void initApplicationContext(Map args);

}
