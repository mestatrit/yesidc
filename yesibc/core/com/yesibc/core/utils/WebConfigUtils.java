/**
 * $Id: WebConfigUtils.java,v 1.1 2008/11/04 07:10:22 abel Exp $
 */
package com.yesibc.core.utils;

import java.util.Properties;

/**
 * @author abel.ye
 * 
 */
public final class WebConfigUtils {
	private static final WebConfigUtils instance = new WebConfigUtils();

	public static final WebConfigUtils getInstance() {
		return instance;
	}

	private static final Properties config = new Properties();

	public static void putParam(String key, String value) {
		config.setProperty(key, value);
	}

	public static String getConfig(String key) {
		return config.getProperty(key);
	}

	public static void  main(String[] args){
		WebConfigUtils.putParam("a", "b");
		System.out.println(WebConfigUtils.getConfig("a"));
		WebConfigUtils.putParam("b", "c");
		System.out.println(WebConfigUtils.getConfig("b"));
		WebConfigUtils.putParam("a", "c");
		System.out.println(WebConfigUtils.getConfig("a"));
	}
}
