package com.yesibc.job51.web.search;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.DateUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.dao.SearchResultDao;
import com.yesibc.job51.dao.WebPagesDao;
import com.yesibc.job51.model.SearchResult;
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
		int x = validateContent(processContext);
		log.info(processContext.getLogTitle() + " validateContent ok!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		if (x == 0) {
			log.info(processContext.getLogTitle() + " No recored found!");
			return;
		}

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
				if (!ClawerConstants.TEST_DAO && !CollectionUtils.isEmpty(wps1)) {
					WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
					webPagesDao.saveByBatch(wps1);
				}
			} catch (Exception e) {
				ErrorHandler.errorLogAndMail("putSearchPages2Context error!size=" + wps1.size(), e);
			}
		}
	}

	private static int validateContent(ProcessContext processContext) throws ApplicationException {
		int k = 0;
		int x = -1;
		while (true) {
			k++;
			try {
				x = LocateCompanyInfo.validationTableOfJobList(processContext);
			} catch (Exception e) {
				x = -1;
				log.error(processContext.getLogTitle() + " validationTableOfJobList error.times:" + k, e);
			}

			if (x > -1) {
				break;
			}

			log.warn(processContext.getLogTitle() + " LocateCompanyInfo.validationTableOfJobList Error.times:" + k);

			try {
				Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
			} catch (InterruptedException e) {
				ErrorHandler.errorLogAndMail(
						"LocateCompanyInfo.validationTableOfJobList error!InterruptedException@times:" + k, e);
			}

			if (k > ClawerConstants.WAITING_TIMES / 2) {
				throw new ApplicationException("LocateCompanyInfo.validationTableOfJobList Error.times:" + k);
			}

		}
		return x;
	}

	/**
	 * 和DB里的pages进行比较，如果pages小于等于pages_DB，则update，如果大于pages_DB，则只保存大于pages_DB的部分
	 * 。
	 * 
	 * @param total
	 * @param processContext
	 * @return
	 */
	private static List<WebPages> putSearchPages2Context(int total, ProcessContext processContext) {

		int pages = total % ClawerConstants.PAGESIZE_JOBS == 0 ? total / ClawerConstants.PAGESIZE_JOBS
				: (total / ClawerConstants.PAGESIZE_JOBS) + 1;
		String url = processContext.getUrl();

		saveReults2DB(total, pages, url);

		/**
		 * <pre>
		 * 如果cache中存在该page,根据时间，更改status状态。 
		 * 如果cache中不存在该page,则从DB取.
		 * 如果DB也不存在，则保存到cache和DB。
		 * 如果DB中存在，则保存到cache，根据时间决定是否要更改status状态并更新到DB。
		 * </pre>
		 */
		Date date = new Date();
		List<WebPages> wps = new ArrayList<WebPages>();
		for (int i = 2; i <= pages; i++) {
			url = CompanyJobContext.getNewUrlPage(url, i);

			WebPages wp = null;
			if (CompanyJobContext.pagesMap.get(url) != null) {
				wp = CompanyJobContext.pagesMap.get(url);
				if (WebPages.STATUS_OK.equals(wp.getStatus())
						&& DateUtils.substractDate(wp.getUpdateDate(), date) > ClawerConstants.EXPIRED_DAYS) {
					wp.setRequestId(ClawerConstants.REQUEST_ID);
					wp.setUpdateDate(date);
					wp.setStatus(WebPages.STATUS_KO);
				}
				continue;
			}

			wp = existInDB(url);

			if (wp != null) {
				if (WebPages.STATUS_OK.equals(wp.getStatus())
						&& DateUtils.substractDate(wp.getUpdateDate(), date) > ClawerConstants.EXPIRED_DAYS) {
					wp.setRequestId(ClawerConstants.REQUEST_ID);
					wp.setStatus(WebPages.STATUS_KO);
					wp.setUpdateDate(date);
				}
			} else {
				wp = new WebPages();
				wp.setUrl(url);
				wp.setPageType(WebPages.PAGE_TYPE_SEARCH_PAGES);
				wp.setCreateDate(date);
				wp.setRequestId(ClawerConstants.REQUEST_ID);
				wp.setUpdateDate(date);
				wp.setStatus(WebPages.STATUS_KO);
				wps.add(wp);
			}

			CompanyJobContext.addPagesURL(url, wp);
		}

		LogHandler.info(processContext.getLogTitle() + " [" + processContext.getBrowser().getURL()
				+ "] Put search pages to  context!Total pages [" + pages + "].");

		return wps;
	}

	private static void saveReults2DB(int total, int pages, String url) {
		if (!ClawerConstants.TEST_DAO) {
			SearchResultDao searchResultDao = (SearchResultDao) SpringContext.getBean("searchResultDao");
			SearchResult sr = new SearchResult();
			Date date = new Date();
			sr.setCreateDate(date);
			sr.setRequestId(ClawerConstants.REQUEST_ID);
			sr.setStatus(SearchResult.STATUS_KO);
			sr.setTotPages(pages);
			sr.setTotRecords(total);
			sr.setUpdateDate(date);
			sr.setUrlAddr(url);
			searchResultDao.save(sr);
		}

	}

	private static WebPages existInDB(String url) {
		if (!ClawerConstants.TEST_DAO) {
			WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
			List<WebPages> searchPagesWP = webPagesDao.findByNameValue(WebPages.class, "url", url);
			if (!CollectionUtils.isEmpty(searchPagesWP)) {
				return searchPagesWP.get(0);
			}
		}
		return null;
	}

}
