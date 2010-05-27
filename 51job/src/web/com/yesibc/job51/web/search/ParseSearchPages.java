package com.yesibc.job51.web.search;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;

public class ParseSearchPages {

	private static Log log = LogFactory.getLog(ParseSearchPages.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

	public static void parseSearchPages(ProcessContext processContext) throws ApplicationException {
		long l = System.currentTimeMillis();

		int size = CompanyJobContext.putCompanyLinks2Context(processContext);
		int jobSize = 0;
		if (size > -1) {
			jobSize = CompanyJobContext.putJobsURL2Context(processContext);
		}

		log.info(processContext.getLogTitle() + " Company size " + size + ",job size " + jobSize
				+ " to context!Time is " + (System.currentTimeMillis() - l));
	}

}
