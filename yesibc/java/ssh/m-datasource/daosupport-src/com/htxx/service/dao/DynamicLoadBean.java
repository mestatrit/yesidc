package com.htxx.service.dao;

import java.io.IOException;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.xml.ResourceEntityResolver;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.support.AbstractXmlApplicationContext;

/**
 * 使用方法loadBean()向spring的beanFactory动态地装载bean，该方法的参数configLocationString等同于
 * spring配置中的contextConfigLocation，同样支持诸如"/WEB-INF/ApplicationContext-*.xml"的写法。
 * @author FanGang
 *
 */
public class DynamicLoadBean implements ApplicationContextAware{

	private AbstractXmlApplicationContext applicationContext = null;
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.applicationContext = (AbstractXmlApplicationContext)applicationContext;
	}
	public AbstractXmlApplicationContext getApplicationContext() {
		return applicationContext;
	}
	
	/**
	 * 向spring的beanFactory动态地装载bean
	 * @param configLocationString 要装载的bean所在的xml配置文件位置。
	 */
	public void loadBean(String configLocationString){
		XmlBeanDefinitionReader beanDefinitionReader = new XmlBeanDefinitionReader((BeanDefinitionRegistry)getApplicationContext().getBeanFactory());
		beanDefinitionReader.setResourceLoader(getApplicationContext());
		beanDefinitionReader.setEntityResolver(new ResourceEntityResolver(getApplicationContext()));
		try {
			String[] configLocations = new String[]{configLocationString};
			for(int i=0;i<configLocations.length;i++)
				beanDefinitionReader.loadBeanDefinitions(getApplicationContext().getResources(configLocations[i]));
		} catch (BeansException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
