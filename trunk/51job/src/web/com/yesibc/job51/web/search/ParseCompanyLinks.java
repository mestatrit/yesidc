package com.yesibc.job51.web.search;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.job51.web.support.LocateCompanyInfo;

public class ParseCompanyLinks {

	private static Log log = LogFactory.getLog(ParseCompanyLinks.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

	public static void parseCompanyLinks(ProcessContext processContext) {
		long l = System.currentTimeMillis();
		if (LocateCompanyInfo.checkValidation(processContext.getBrowser()) < 1) {
			return;
		}
		log.info(processContext.getLogTitle() + "Check Company List!Time is "
				+ (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		CompanyJobContext.putCompanyLinks2Context(processContext);
		
		log.info(processContext.getLogTitle()
				+ "Parse company  to context!Time is "
				+ (System.currentTimeMillis() - l));
	}


}
