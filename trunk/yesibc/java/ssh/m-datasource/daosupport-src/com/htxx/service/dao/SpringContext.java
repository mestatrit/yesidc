/**
 * 
 */
package com.htxx.service.dao;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * 不在spring配置范围内的类静态地使用该类的getBean()方法可以得到spring的ApplicationContext
 * @author FanGang
 *
 */
public class SpringContext implements ApplicationContextAware {

	private static ApplicationContext context;
	/* (non-Javadoc)
	 * @see org.springframework.context.ApplicationContextAware#setApplicationContext(org.springframework.context.ApplicationContext)
	 */
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		context = applicationContext;
	}

	public static Object getBean(String name){
		return context.getBean(name);
	}
}
