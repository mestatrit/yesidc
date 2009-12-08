package com.yesibc.job51.web.search;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.support.LocateCompanyInfo;
import com.yesibc.job51.web.support.LogHandler;

public class ParsePagesLinks {

	private static Log log = LogFactory.getLog(ParsePagesLinks.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

	public static void parsePagesLinks(ProcessContext processContext) {
		long l = System.currentTimeMillis();
		if (LocateCompanyInfo.checkValidation(processContext.getBrowser()) < 1) {
			return;
		}
		log.info(processContext.getLogTitle() + "Check Company List!Time is "
				+ (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		int total = LocateCompanyInfo.getTotal(processContext.getBrowser()
				.getDocument());
		CompanyJobContext.putCompanyLinks2Context(processContext);
		log.info(processContext.getLogTitle()
				+ "Get Total and parse company in first page "
				+ "to context!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		if (total > ClawerConstants.PAGESIZE_COMPANY) {
			putPagesLinks2Context(total, processContext);
			log.info(processContext.getLogTitle()
					+ "Put Page Links to Context!Time is "
					+ (System.currentTimeMillis() - l));
		}
	}

	private static void putPagesLinks2Context(int total,
			ProcessContext processContext) {
		
		int pages = total % ClawerConstants.PAGESIZE_COMPANY == 0 ? total
				/ ClawerConstants.PAGESIZE_COMPANY
				: (total / ClawerConstants.PAGESIZE_COMPANY) + 1;
		String url = processContext.getBrowser().getURL();
		for(int i=2;i<=pages;i++){
			url = CompanyJobContext.getNewUrlPage(url,i);
			CompanyJobContext.setUrlPages(url);
		}

		LogHandler.info(processContext.getLogTitle() + "Put ["
				+ processContext.getBrowser().getURL()
				+ "] to page links List!Total pages [" + pages + "].");
	}

}
