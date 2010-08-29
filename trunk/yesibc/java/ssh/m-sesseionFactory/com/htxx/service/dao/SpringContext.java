/**
 * 
 */
package com.htxx.service.dao;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * ����spring���÷�Χ�ڵ��ྲ̬��ʹ�ø����getBean()�������Եõ�spring��ApplicationContext
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
