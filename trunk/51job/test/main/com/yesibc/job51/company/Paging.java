package com.yesibc.job51.company;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.company.search1.LocateMainElements;

public class Paging {

	public static int pageSize = 1;
	public static int searchingTimes = 1;
	public static long l = 0;
	private static Log log = LogFactory.getLog(Paging.class);

	public static void doPaging() throws ApplicationException {
		IElement element = LocateMainElements.locatePaging();
		if (element == null) {
			return;
		}
		pageSize++;
		l = System.currentTimeMillis();
		LogHandler.info("Paging:" + pageSize);
		pagingAndParseCompany(element);
		log.info(ClawerConstants.PROC_LOG + "Parse Companies by "
				+ Paging.searchingTimes + " time searching " + pageSize
				+ " OK!Time is " + (System.currentTimeMillis() - l));
	}

	private static void pagingAndParseCompany(IElement element) throws ApplicationException {
		if (JobMain.TEST && pageSize > 3) {
			return;
		}
		JobMain.FINISH = false;
		element.click();
		JobMain.waitingLoading();
		ParseCompanyList.parseCompanies();
		doPaging();
	}

}
