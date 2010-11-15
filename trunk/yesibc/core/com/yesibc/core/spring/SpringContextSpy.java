package com.yesibc.core.spring;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;


public class SpringContextSpy implements ApplicationContextAware {
	private static final Logger log = Logger.getLogger(SpringContextSpy.class);

	public static ApplicationContext context;

	public static ApplicationContext getApplicationContext() {
		return context;
	}

	@SuppressWarnings("static-access")
	public void setApplicationContext(ApplicationContext context) {
		log.info("get ApplicationContext " + context);

		this.context = context;
	}
}
