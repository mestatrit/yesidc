package com.yesibc.job51.web.search;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.dao.WebPagesDao;
import com.yesibc.job51.model.WebPages;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.LocateCompanyInfo;
import com.yesibc.job51.web.support.LogHandler;

public class ParseSearchList {

	private static Log log = LogFactory.getLog(ParseSearchList.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

	public static void parseSearchList(ProcessContext processContext) throws ApplicationException {
		long l = System.currentTimeMillis();

		int total = LocateCompanyInfo.getTotal(processContext);

		int size = CompanyJobContext.putCompanyLinks2Context(processContext);
		int jobSize = 0;
		if (size > -1) {
			jobSize = CompanyJobContext.putJobsURL2Context(processContext);
		}

		log.info(processContext.getLogTitle() + " Company size " + size + ",job size " + jobSize
				+ " to context!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		if (total > ClawerConstants.PAGESIZE_JOBS) {
			List<WebPages> wps1 = putSearchPages2Context(total, processContext);
			try {
				if (!ClawerConstants.TEST_DAO) {
					WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
					webPagesDao.saveByBatch(wps1);
				}
			} catch (Exception e) {
				ErrorHandler.errorLogAndMail("putSearchPages2Context error!size=" + wps1.size(), e);
			}
		}
	}

	private static List<WebPages> putSearchPages2Context(int total, ProcessContext processContext) {

		int pages = total % ClawerConstants.PAGESIZE_JOBS == 0 ? total / ClawerConstants.PAGESIZE_JOBS
				: (total / ClawerConstants.PAGESIZE_JOBS) + 1;
		String url = processContext.getBrowser().getURL();
		List<WebPages> wps = new ArrayList<WebPages>();
		for (int i = 2; i <= pages; i++) {
			url = CompanyJobContext.getNewUrlPage(url, i);
			if (CompanyJobContext.getPagesURL().contains(url)) {
				continue;
			}
			WebPages wp = new WebPages();
			wp.setUrl(url);
			wp.setPageType(WebPages.PAGE_TYPE_SEARCH_PAGES);
			wp.setRequestId(ClawerConstants.REQUEST_ID);
			wp.setStatus(WebPages.STATUS_KO);
			wp.setUpdateDate(new Date());
			wps.add(wp);
			CompanyJobContext.putSearchPages2Conext(wp);
		}

		LogHandler.info(processContext.getLogTitle() + " [" + processContext.getBrowser().getURL()
				+ "] Put search pages to  context!Total pages [" + pages + "].");

		return wps;
	}

}
