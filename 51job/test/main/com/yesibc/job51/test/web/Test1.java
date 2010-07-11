/**
 * 
 */
package com.yesibc.job51.test.web;

import junit.framework.TestCase;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.yesibc.job51.common.ClawerConstants;

/**
 * @author Administrator
 * 
 */
public class Test1 extends TestCase {

	private static Log log = LogFactory.getLog(Test1.class);

	/**
	 * @param name
	 */
	public void test1() {
		String fax = "(021)56779300,56779300";
		String[] sa = null;
		boolean split = false;
		for (String temp : ClawerConstants.TEL_SPLITS) {
			System.out.println("=TEL_SPLITS=" + temp);
			if(fax.indexOf(temp) > -1){
				split = true;
				sa = fax.split(temp);
				System.out.println("=split= true");
				break;
			}
		}
		
		if(!split){
			sa = new String[] {fax};
		}
		
		System.out.println("=sa.length=" + sa.length);
		
		for(String temp : sa){
			System.out.println("==" + temp);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see junit.framework.TestCase#setUp()
	 */
	protected void setUp() throws Exception {
		super.setUp();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see junit.framework.TestCase#tearDown()
	 */
	protected void tearDown() throws Exception {
		super.tearDown();
	}

}
