/**
 * 
 */
package com.yesibc.job51.test.web;

import java.util.ArrayList;
import java.util.List;

import junit.framework.TestCase;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @author Administrator
 * 
 */
public class Test2 extends TestCase {

	private static Log log = LogFactory.getLog(Test1.class);


	public void test2() {
		try {
			Integer sizeOfWRE = 10;
			List<String> is = new ArrayList<String>();
			for (int i = 0; i < sizeOfWRE; i++) {
				is.add(i + "" + i);
			}
			is.remove(0);
			is.remove(1 + "" + 1);
			for (String i : is) {
				log.info(i);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
