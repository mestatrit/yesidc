package com.yesibc.core.spring;


public class SpringContextSupport {

	public static Object getBean(String name) {
		return SpringContextSpy.getApplicationContext().getBean(name);
	}
}
