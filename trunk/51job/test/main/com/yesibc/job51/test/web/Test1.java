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
	public void test1(String name) {
		long l = System.currentTimeMillis();
		BrowserFactory.setLicenseData(ClawerConstants.WEBRENDERER_ID,
				ClawerConstants.WEBRENDERER_SN);
		log.info(ClawerConstants.PROC_LOG + "Load license OK! Time is "
				+ (System.currentTimeMillis() - l));
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
