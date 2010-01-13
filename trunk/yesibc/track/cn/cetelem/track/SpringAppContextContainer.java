package cn.cetelem.track;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Jan 6, 2009 10:49:23 AM
 */

public class SpringAppContextContainer {
	
	protected static Logger log = Logger.getLogger(SpringAppContextContainer.class);
	
	private final static String[] classPaths = { "classpath*:/conf/spring/track-applicationContext*.xml"};
	private static ApplicationContext appContext;

    public static ApplicationContext getApplicationContext() {
        if(appContext == null){
        	appContext = new ClassPathXmlApplicationContext(classPaths);
        }
    	return appContext;
    }
    
    public static Object getBean(String name) {
    	return getApplicationContext().getBean(name);
    }

}
