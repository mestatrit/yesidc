/**
 * $Id: SpringContextAdapterImpl.java,v 1.2 2009/01/05 09:51:08 abel Exp $
 */

package com.yesibc.core.spring;

import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Jan 8, 2008 1:49:59 PM
 */
@SuppressWarnings("unchecked")
public class SpringContextAdapterImpl implements SpringContextAdapter {

	public SpringContextAdapterImpl() {
		Map args = null;
		ApplicationContext ctx = null;

		try {
			ctx = getApplicationContext();
		} catch (IllegalArgumentException e) {
		}

		if (ctx == null) {
			initApplicationContext(args);
		}

	}

	public void setSpringApplicationContext(ApplicationContext context) {
		ctxManager.setSpringApplicationContext(context);

	}

	public ApplicationContext getApplicationContext() {
		return ctxManager.getApplicationContext();
	}

	public void initApplicationContext(Map args) {
		String[] paths = { "classpath*:/spring/*Context*.xml"};
		if (args == null
				|| args.get(SpringContextAdapter.KEY_CONTEXT_FILE_PATH) == null) {
			// default
		} else {
			// get from input parameter
			paths = (String[]) args
					.get(SpringContextAdapter.KEY_CONTEXT_FILE_PATH);
		}
		ApplicationContext ctx = new ClassPathXmlApplicationContext(paths);
		setSpringApplicationContext(ctx);

	}

}