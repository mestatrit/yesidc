package com.yesitc.baixing;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.spring.SpringContext;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.Parser;
import com.yesiic.webswith.model.WebPages;

public class TestParseDeatail {

	private static Log log = LogFactory.getLog(TestParseDeatail.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		for (String name : ClawerConstants.PROVINCE_FILTERS) {
			System.out.print("aaa=" + name);
		}
		Parser parser = (Parser) SpringContext.getBean("parseDetail");
		try {
			WebPages wp = new WebPages();
			wp.setUrl("http://xian.baixing.com/qitajianzhi/a67790915.html");

			ProcessContext processContext = new ProcessContext();
			processContext.setLogTitle("TestParseDeatail");
			processContext.setIndex(0);
			processContext.setRequestId(String.valueOf(System.currentTimeMillis()));
			processContext.setWp(wp);
			
			parser.parse(processContext);

		} catch (Exception e) {
			log.info(" Exception:", e);
		}

	}

}
