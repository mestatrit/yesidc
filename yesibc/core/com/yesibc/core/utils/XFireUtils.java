/**
 * $Id: XFireUtils.java,v 1.3 2009/01/05 09:51:08 abel Exp $
 */

package com.yesibc.core.utils;

import javax.xml.bind.JAXBElement;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Oct 16, 2007 12:18:49 PM
 */
@SuppressWarnings("unchecked")
public class XFireUtils {


	public static Object getValue(JAXBElement element) {
		if (element == null) {
			return null;
		}
		return element.getValue();
	}

	// public static String getValue(JAXBElement<String> element) {
	// if (element == null) {
	// return "";
	// }
	// return element.getValue();
	// }
	//
	// public static Date getValue(JAXBElement<Date> element) {
	// if (element == null) {
	// return null;
	// }
	// return element.getValue();
	// }

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

}
