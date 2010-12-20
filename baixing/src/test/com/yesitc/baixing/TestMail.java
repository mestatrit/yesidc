package com.yesitc.baixing;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesiic.common.ErrorHandler;

public class TestMail {

	private static Log log = LogFactory.getLog(TestMail.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			ErrorHandler.errorLogAndMail("tttttt");
		} catch (Exception e) {
			log.info(" Exception:", e);
		}

	}

}
