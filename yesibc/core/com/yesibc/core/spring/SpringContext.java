/**
 * $Id: SpringContext.java,v 1.4 2008/03/06 07:53:46 abel Exp $
 */

package com.yesibc.core.spring;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;

/**
 * It is about spring context.
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-14 下午03:36:20
 */
public class SpringContext {

	private static Log log = LogFactory.getLog(SpringContext.class);

	private static WebApplicationContext webApplicationContext;

	/**
	 * Get Bean from Spring Context
	 * 
	 * @param name
	 *            id of the Bean
	 * @return Bean
	 */
	public static Object getBean(String name) {
		if (webApplicationContext != null) { // ApplicationContext
			// load from WebApp
			return webApplicationContext.getBean(name);
		} else { // load ApplicationContext from ClassPath
			SpringContextAdapter contextManager = new SpringContextAdapterImpl();
			ApplicationContext ctx = contextManager.getApplicationContext();
			return ctx.getBean(name);
		}
	}
	
	/**
	 * Get Bean from Spring Context
	 * 
	 * @param name
	 *            id of the Bean
	 * @return Bean
	 */
	public static String[] getBeans() {
		if (webApplicationContext != null) { // ApplicationContext
			// load from WebApp
			return webApplicationContext.getBeanDefinitionNames();
		} else { // load ApplicationContext from ClassPath
			SpringContextAdapter contextManager = new SpringContextAdapterImpl();
			ApplicationContext ctx = contextManager.getApplicationContext();
			return ctx.getBeanDefinitionNames();
		}
	}
	

	/**
	 * Spring Context
	 * 
	 * @return Returns the webApplicationContext.
	 */
	public static WebApplicationContext getWebApplicationContext() {
		return webApplicationContext;
	}

	/**
	 * @param webApplicationContext
	 *            The webApplicationContext to set.
	 */
	public static void setWebApplicationContext(
			WebApplicationContext webApplicationContext) {

		SpringContext.webApplicationContext = webApplicationContext;
		log.info("ServiceLocator get WebApplicationContext: "
				+ webApplicationContext);
		afterContextInit();
	}

	private static void afterContextInit() {
	}

}
