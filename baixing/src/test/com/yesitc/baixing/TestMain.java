package com.yesitc.baixing;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.spring.SpringContext;
import com.yesitc.baixing.web.parse.ParseProcess;

public class TestMain {

	private static Log log = LogFactory.getLog(TestMain.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ParseProcess parseProcess = (ParseProcess)SpringContext.getBean("parseProcess");
		try {
			parseProcess.getBaseInfo(2, "981050", 2, "981050~");
			parseProcess.main();
		} catch (Exception e) {
			log.info(" Exception:", e);
		}

	}

}
