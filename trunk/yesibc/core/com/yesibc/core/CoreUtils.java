/**
 * 
 */
package com.yesibc.core;

import com.yesibc.core.utils.ReadProperties;

/**
 * @author Administrator
 * 
 */
public class CoreUtils {

	private static ReadProperties sourProperties = ReadProperties.getInst("conf");

	public static String getValByKey(String key) {
		return sourProperties.getValuesByKey("conf", key);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
