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
 * ʹ�÷���loadBean()��spring��beanFactory��̬��װ��bean���÷����Ĳ���configLocationString��ͬ��
 * spring�����е�contextConfigLocation��ͬ��֧������"/WEB-INF/ApplicationContext-*.xml"��д����
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
	 * ��spring��beanFactory��̬��װ��bean
	 * @param configLocationString Ҫװ�ص�bean���ڵ�xml�����ļ�λ�á�
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
