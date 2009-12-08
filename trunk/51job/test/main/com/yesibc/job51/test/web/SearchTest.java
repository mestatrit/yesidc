package com.yesibc.job51.test.web;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.yesibc.job51.common.ClawerConstants;

public class SearchTest {

	private static Log log = LogFactory.getLog(SearchTest.class);
	
	static long l = 0;

	static {
		BrowserFactory.setLicenseData(ClawerConstants.WEBRENDERER_ID,
				ClawerConstants.WEBRENDERER_SN);
		l = System.currentTimeMillis();
		log.info(ClawerConstants.PROC_LOG + "Load license OK! Time is "
				+ (System.currentTimeMillis() - l));
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
