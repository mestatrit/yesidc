package com.yesibc.job51.web.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.utils.DateUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.core.web.BaseAction2Support;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.WebPages;
import com.yesibc.job51.web.search.CompanyJobContext;
import com.yesibc.job51.web.search.SearchJobDetailEngine;
import com.yesibc.job51.web.search.SearchListEngine;
import com.yesibc.job51.web.search.SearchPagesEngine;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.WebLinkSupport;

public class Clawer51JobAction1back extends BaseAction2Support {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8228026649441186987L;
	private static Log log = LogFactory.getLog(Clawer51JobAction1back.class);
	private static String finishTag = "false";
	private static long callTimes = System.currentTimeMillis();
	long i = 0;

	// 总线程
	private final static String totalThreadTag = "ToT-[";

	// 总任务/当前任务
	private final static String currentOfToI = "]#All-Cur[";

	private final static String endTag = "].";
	private final static int ERROR_TIMES = 16;
	private final static String FATAL_TAG = "=====================***************================";

	// 某一线程总任务/当前任务
	// private String currentOfToC = "]#CrToC-";

	public String refresh() {
		i = (System.currentTimeMillis() - callTimes) / (1000 * 60);
		getRequest().setAttribute("finishTag", finishTag);
		getRequest().setAttribute("callTimes", i);
		return SUCCESS;
	}

	/**
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public String companySearch() {

		long start = System.currentTimeMillis();

		String fromDBorFile = null;
		if (!ClawerConstants.TEST_WEB_REQUEST) {
			fromDBorFile = getParameter("fromDBorFile");
		}

		CompanyJobContext.initSearchList(fromDBorFile);
		log.info("FromDBorFile:" + fromDBorFile);

		String failedOrNot = null;
		if (ClawerConstants.TEST_WEB_REQUEST) {
			failedOrNot = "0";
		} else {
			failedOrNot = getParameter("failedOrNot");
		}
		if (failedOrNot == null || !StringUtils.isNumberString(failedOrNot)) {
			setMessage("failedOrNot is error!");
			return SUCCESS;
		}
		// 0-default=OK;1-search type list;2-search pages list;3-job list;
		int[] tags = { 0, 1, 2, 3 };
		int failedOrNotInt = Integer.parseInt(failedOrNot);
		if (ArrayUtils.indexOf(tags, failedOrNotInt) < 0) {
			setMessage("failedOrNot is not digit!");
			return SUCCESS;
		}

		String requestId = DateUtils.dateToString(new Date(), DateUtils.DAY_YMD) + "_"
				+ (System.currentTimeMillis() + "").substring(7, 13);

		ClawerConstants.REQUEST_ID = requestId;
		String reqLog = "requestId[" + requestId + "]";

		int threadNumber = ClawerConstants.THREADS_NUMBER;
		if (ClawerConstants.TEST_WEB) {
			threadNumber = ClawerConstants.THREADS_NUMBER;
		} else {

			String mainThreadsStr = "20";
			if (!ClawerConstants.TEST_WEB_REQUEST) {
				mainThreadsStr = getParameter("mainThreads");
			}
			if (mainThreadsStr != null) {
				try {
					threadNumber = Integer.parseInt(mainThreadsStr);
					ClawerConstants.THREADS_NUMBER = threadNumber;
				} catch (Exception e) {
					log.error("Parse threadNumber error:" + mainThreadsStr, e);
				}
			}
		}

		doing(failedOrNotInt, requestId, reqLog, threadNumber);

		checking(failedOrNotInt, requestId, reqLog, threadNumber);

		log.info(reqLog + " is END!Time is [" + (System.currentTimeMillis() - start) / (1000 * 60) + "]m.");
		finishTag = "true";
		return SUCCESS;
	}

	private void checking(int failedOrNotInt, String requestId, String reqLog, int threadNumber) {
		log.info(reqLog + " Start checking!==========");
		for (Iterator<WebPages> it = CompanyJobContext.searchListWP.iterator(); it.hasNext();) {
			WebPages wp = it.next();
			if (WebPages.STATUS_OK.equals(wp.getStatus())) {
				it.remove();
			}
		}
		int size = CompanyJobContext.getSearchListSize();
		reqLog = reqLog + "(retry)";
		log.info(reqLog + " SearchList left:==========" + size);
		if (size > 0 && failedOrNotInt < 1) {
			parseSearchList(threadNumber, requestId, reqLog);
		}

		for (Iterator<WebPages> it = CompanyJobContext.getSearchPagesWP().iterator(); it.hasNext();) {
			WebPages wp = it.next();
			if (WebPages.STATUS_OK.equals(wp.getStatus())) {
				it.remove();
			}
		}
		size = CompanyJobContext.getKOPageSize();
		log.info(reqLog + " SearchPages left:==========" + size);
		if (size > 0 && failedOrNotInt < 2) {
			parseSearchPages(requestId, reqLog, threadNumber);
		}

		for (Iterator<WebPages> it = CompanyJobContext.getJobsWP().iterator(); it.hasNext();) {
			WebPages wp = it.next();
			if (WebPages.STATUS_OK.equals(wp.getStatus())) {
				it.remove();
			}
		}
		size = CompanyJobContext.getKOJobsLength();
		log.info(reqLog + " Jobs left:==========" + size);
		if (size > 0 && failedOrNotInt < 3) {
			parseJobsDetail(requestId, reqLog, threadNumber);
		}
		log.info(reqLog + " End checking!Results:SearchListSize=" + CompanyJobContext.getSearchListSize()
				+ ",SearchPagesSize=" + CompanyJobContext.getPageSizeInCache() + ",JobsWPLength="
				+ CompanyJobContext.getJobsLengthInCache());
	}

	private void doing(int failedOrNotInt, String requestId, String reqLog, int threadNumber) {
		/**
		 * get all the page urls.
		 */
		if (failedOrNotInt < 1) {
			parseSearchList(threadNumber, requestId, reqLog);
		}

		/**
		 * get all the company urls according to page urls.
		 */
		if (failedOrNotInt < 2) {
			parseSearchPages(requestId, reqLog, threadNumber);
		}

		/**
		 * parse job detail pages.
		 */
		if (failedOrNotInt < 3) {
			parseJobsDetail(requestId, reqLog, threadNumber);
		}
	}

	private void parseJobsDetail(String requestId, String reqLog, int threadNumber) {
		try {
			WebLinkSupport
					.refreshContextAndReconnInternet(ClawerConstants.PROC_LOG + "REC By parseJobsPages!0!", false);
		} catch (Exception e) {
			log.error(ClawerConstants.PROC_LOG + "REC By parseJobsPages!0!ERROR!", e);
		}
		long l = System.currentTimeMillis();
		int error = 0;
		try {
			int size = CompanyJobContext.getKOJobsLength();
			if (ClawerConstants.TEST_WEB) {
				size = ClawerConstants.TEST_WEB_NUM;
			}
			int circleTimes = size % threadNumber == 0 ? size / threadNumber : size / threadNumber + 1;

			int totalThreads = threadNumber;
			if (size < threadNumber) {
				totalThreads = size;
			}

			log.info(reqLog + "Parse job detail links start!threadNumber[" + threadNumber + "]job links size[" + size
					+ "]circleTimes[" + circleTimes + "]");

			int current = 0;
			int circleTime = 0;
			int recTimes = 0;
			int errorTimes = 0;
			int loop = 0;
			int currentOfAll = 0;
			List<SearchJobDetailEngine> sjdes = new ArrayList<SearchJobDetailEngine>();
			while (current < size) {
				if (current == size) {
					if (ClawerConstants.TEST_WEB) {
						break;
					}
					log.info(reqLog + "#JobDetails#This time-" + circleTime + " of Jobs is used out.Re-get from DB!");
					CompanyJobContext.intPages();
					size = CompanyJobContext.getKOPageSize();
					if (size < 1) {
						break;
					}
					current = 0;
					circleTimes = size % threadNumber == 0 ? size / threadNumber : size / threadNumber + 1;
					circleTime = 0;
					loop++;
				}

				circleTime++;
				for (int thread = 0; thread < threadNumber; thread++) {
					if (current >= size) {
						break;
					}
					// doing
					SearchJobDetailEngine sce = new SearchJobDetailEngine("JobDetails-loop-" + loop + "#"
							+ totalThreadTag + totalThreads + "-" + thread + "].CircleTimes[" + circleTimes + "-"
							+ circleTime + currentOfToI + size + "-" + current + endTag, CompanyJobContext.getJobsWP()
							.get(current), thread);
					sce.start();
					sjdes.add(sce);
					current++;
					currentOfAll++;
				}

				errorTimes = waitingParseJobDetailLinks(sjdes, errorTimes);

				if (currentOfAll % (ClawerConstants.REFRESH_MUILTI_THREADS_NUMBER * threadNumber) == 0) {
					recTimes++;
					try {
						WebLinkSupport.refreshContextAndReconnInternet(ClawerConstants.PROC_LOG
								+ "REC By parseJobDetails!" + recTimes + "!", false);
					} catch (Exception e) {
						log.error(ClawerConstants.PROC_LOG + "REC By parseJobDetails!ERROR!recTimes=" + recTimes + ".",
								e);
					}
				}
			}

		} catch (Exception e) {
			error++;
			ErrorHandler.errorLogAndMail("parseJobsDetails error in Action:", e);
		}
		l = System.currentTimeMillis() - l;
		log.info("parse parseJobsDetails.Times[" + l / (1000 * 60) + "s]. Error[" + error + "]. URL_COMPANIES="
				+ CompanyJobContext.getCompaniesLength() + ",URL_JOBS=" + CompanyJobContext.getJobsLengthInCache()
				+ ",COMPANY=" + CompanyJobContext.getCompaniesLength() + ",Email="
				+ CompanyJobContext.getEmailsLength() + ".");
	}

	private void parseSearchPages(String requestId, String reqLog, int threadNumber) {
		try {
			WebLinkSupport.refreshContextAndReconnInternet(ClawerConstants.PROC_LOG + "REC By SearchPages!0!", false);
		} catch (Exception e) {
			log.error(ClawerConstants.PROC_LOG + "REC By SearchPages!ERROR!", e);
		}
		long l = System.currentTimeMillis();
		int error = 0;
		try {
			int size = CompanyJobContext.getKOPageSize();
			if (ClawerConstants.TEST_WEB) {
				size = ClawerConstants.TEST_WEB_NUM;
			}

			int totalThreads = threadNumber;
			if (size < threadNumber) {
				totalThreads = size;
			}

			log.info(reqLog + "Parse SearchPages start!threadNumber[" + threadNumber + "]company links size[" + size
					+ "].");

			l = System.currentTimeMillis();

			int current = 0;
			int recTimes = 0;
			int errorTimes = 0;
			int loop = 1;
			int currentOfAll = 0;
			Map<Integer, SearchPagesEngine> sces = new HashMap<Integer, SearchPagesEngine>();

			while (true) {
				if (current == size) {
					if (ClawerConstants.TEST_WEB) {
						break;
					}
					log.info(reqLog + "#SearchPages#This time-" + (++loop) + " of Pages is used out.Re-get from DB!");
					CompanyJobContext.intPages();
					size = CompanyJobContext.getKOPageSize();
					if (size < 1) {
						break;
					}
					current = 0;
				}

				for (int thread = 0; thread < threadNumber; thread++) {
					if (current >= size) {
						break;
					}
					SearchPagesEngine sce = sces.get(sces);
					if (sce != null && sce.isAlive()) {
						continue;
					}
					sce = new SearchPagesEngine("SearchPages-loop-" + loop + "#" + totalThreadTag + totalThreads + "-"
							+ thread + "]." + currentOfToI + size + "-" + current + endTag, CompanyJobContext
							.getSearchPagesWP().get(current), thread);
					sce.start();
					sces.put(thread, sce);
					current++;
					currentOfAll++;
				}

				errorTimes = waitingSearchPages(sces, errorTimes);

				if (currentOfAll % (ClawerConstants.REFRESH_MUILTI_THREADS_NUMBER * threadNumber) == 0) {
					recTimes++;
					try {
						WebLinkSupport.refreshContextAndReconnInternet(ClawerConstants.PROC_LOG + "REC By SearchPages!"
								+ recTimes + "!", false);
					} catch (Exception e) {
						log.error(ClawerConstants.PROC_LOG + "REC By SearchPages!ERROR!recTimes=" + recTimes + ".", e);
					}
				}

			}
		} catch (Exception e) {
			error++;
			ErrorHandler.errorLogAndMail("SearchPages error in Action:", e);
		}

		l = System.currentTimeMillis() - l;
		log.info("parseSearchPages OK.Times[" + l / (1000 * 60) + "s]. Error[" + error + "]Search List="
				+ CompanyJobContext.getSearchListSize() + ",Search Pages=" + CompanyJobContext.getPageSizeInCache()
				+ ",Jobs=" + CompanyJobContext.getJobsLengthInCache() + ",Companies="
				+ CompanyJobContext.getCompaniesLength());
	}

	private void parseSearchList(int threadNumber, String requestId, String reqLog) {
		long l = System.currentTimeMillis();
		int error = 0;
		try {

			int size = CompanyJobContext.getSearchListSize();
			if (ClawerConstants.TEST_WEB) {
				size = ClawerConstants.TEST_WEB_NUM;
			}
			int circleTimes = size % threadNumber == 0 ? size / threadNumber : size / threadNumber + 1;

			int totalThreads = threadNumber;
			if (size < threadNumber) {
				totalThreads = size;
			}

			log.info(reqLog + "Parse search list start!threadNumber[" + threadNumber + "]page size[" + size
					+ "]circleTimes[" + circleTimes + "]");

			int current = 0;
			int circleTime = 0;
			int recTimes = 0;
			int errorTimes = 0;
			int currentOfAll = 0;
			List<SearchListEngine> spes = new ArrayList<SearchListEngine>();
			while (current < size) {
				circleTime++;
				for (int thread = 0; thread < threadNumber; thread++) {
					if (current >= size) {
						break;
					}
					// doing
					SearchListEngine sce = new SearchListEngine("SearchList#" + totalThreadTag + totalThreads + "-"
							+ thread + "].CircleTimes[" + circleTimes + "-" + circleTime + currentOfToI + size + "-"
							+ current + endTag, CompanyJobContext.searchListWP.get(current), thread);
					sce.start();
					spes.add(sce);
					current++;
					currentOfAll++;
				}

				errorTimes = waitingSearchList(spes, errorTimes);

				if (currentOfAll % (ClawerConstants.REFRESH_MUILTI_THREADS_NUMBER * threadNumber) == 0) {
					recTimes++;
					try {
						WebLinkSupport.refreshContextAndReconnInternet(ClawerConstants.PROC_LOG + "REC By SearchList!"
								+ recTimes + "!", false);
					} catch (Exception e) {
						log.error(ClawerConstants.PROC_LOG + "REC By SearchList!ERROR!recTimes=" + recTimes + ".", e);
					}
				}
			}

			l = System.currentTimeMillis() - l;
			log.info(reqLog + "Parse search list submit OK!Times[" + l / (1000 * 60) + "s]");
		} catch (Exception e) {
			error++;
			ErrorHandler.errorLogAndMail("Parse search list error in Action:", e);
		}

		l = System.currentTimeMillis() - l;
		log.info("parse search list OK.Times[" + l / (1000 * 60) + "s]. Error[" + error + "]Search List="
				+ CompanyJobContext.getSearchListSize() + ",Search Pages=" + CompanyJobContext.getPageSizeInCache()
				+ ",Jobs=" + CompanyJobContext.getJobsLengthInCache() + ",Companies="
				+ CompanyJobContext.getCompaniesLength());
	}

	private int waitingSearchList(List<SearchListEngine> spes, int errorTimes) {
		SearchListEngine spe = null;
		boolean error = false;
		String errorMsg = "";
		int errTimes = 0;
		long l = System.currentTimeMillis();
		for (Iterator<SearchListEngine> it = spes.iterator(); it.hasNext();) {
			int i = 0;
			spe = it.next();
			if (spe.getProcessContext().isError()) {
				++errTimes;
				error = true;
				errorMsg = errorMsg + "[" + errTimes + "]" + spe.getProcessContext().getErrorMsg();
			}
			while (true) {
				if (!spe.isAlive()) {
					log.info(spe.getTitle() + " thread was removed OK.");
					it.remove();
					spe = null;
					break;
				} else {
					i++;
					log.debug(spe.getTitle() + " Waiting thread runing!  URL|" + spe.getUrl());
					try {
						Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
					} catch (InterruptedException e) {
						log.error(spe.getTitle() + "Waiting thread exception!", e);
					}
					log.debug(spe.getTitle() + " Waiting thread runing [" + i * ClawerConstants.WAITING_TIME_SECONDS
							+ "]s. URL|" + spe.getUrl());
				}

				if (i > (ClawerConstants.WAITING_TIMES * 2)) {
					ErrorHandler.error(spe.getTitle() + " Waiting thread runing ["
							+ ((System.currentTimeMillis() - l) / 1000) + "]s. OverTime!. URL|" + spe.getUrl());
					it.remove();
					spe = null;
					break;
				}
			}
		}

		if (error) {
			++errorTimes;
			log.error(errorMsg);
			if (errorTimes > ERROR_TIMES) {
				log.fatal(FATAL_TAG + " Error too many times!");
				System.exit(0);
			}
			try {
				WebLinkSupport.refreshContextAndReconnInternet(ClawerConstants.PROC_LOG
						+ "REC By SearchList when error!recTimes=" + errorTimes + ".", true);
			} catch (Exception e) {
				log.error(ClawerConstants.PROC_LOG + "REC By SearchList!ERROR!recTimes=" + errorTimes + ".", e);
			}
		}

		log.info("Waiting Page List Threads waiting end OK.");
		return errorTimes;
	}

	private int waitingParseJobDetailLinks(List<SearchJobDetailEngine> jobs, int errorTimes) {
		SearchJobDetailEngine spe = null;
		boolean error = false;
		String errorMsg = "";
		int errTimes = 0;
		long l = System.currentTimeMillis();
		for (Iterator<SearchJobDetailEngine> it = jobs.iterator(); it.hasNext();) {
			int i = 0;
			spe = it.next();
			if (spe.getProcessContext().isError()) {
				++errTimes;
				error = true;
				errorMsg = errorMsg + "[" + errTimes + "]" + spe.getProcessContext().getErrorMsg();
			}
			while (true) {
				if (!spe.isAlive()) {
					log.info(spe.getTitle() + " thread was removed OK.");
					it.remove();
					spe = null;
					break;
				} else {
					i++;
					log.info(spe.getTitle() + " Waiting thread runing end!  URL|" + spe.getUrl());
					try {
						Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
					} catch (InterruptedException e) {
						log.error(spe.getTitle() + "Waiting thread exception!", e);
					}
					log.debug(spe.getTitle() + " Waiting thread runing [" + i * ClawerConstants.WAITING_TIME_SECONDS
							+ "]s. URL|" + spe.getUrl());
				}

				if (i > (ClawerConstants.WAITING_TIMES * 2)) {
					ErrorHandler.error(spe.getTitle() + " Waiting thread runing ["
							+ ((System.currentTimeMillis() - l) / 1000) + "]s. OverTime!. URL|" + spe.getUrl());
					it.remove();
					spe = null;
					break;
				}
			}
		}

		if (error) {
			++errorTimes;
			log.error(errorMsg);
			if (errorTimes > ERROR_TIMES) {
				log.fatal(FATAL_TAG + " Error too many times!");
				System.exit(0);
			}
			try {
				WebLinkSupport.refreshContextAndReconnInternet(ClawerConstants.PROC_LOG
						+ "REC By SearchJobDetails when error!recTimes=" + errorTimes + ".", true);
			} catch (Exception e) {
				log.error(ClawerConstants.PROC_LOG + "REC By SearchJobDetails!ERROR!recTimes=" + errorTimes + ".", e);
			}
		}

		log.info("waitingParseJobDetailLinks waiting end OK.");
		return errorTimes;
	}

	private int waitingSearchPages(Map<Integer, SearchPagesEngine> sces, int errorTimes) {
		SearchPagesEngine spe = null;
		boolean error = false;
		String errorMsg = "";
		List<Integer> keys = new ArrayList<Integer>();
		for (Map.Entry<Integer, SearchPagesEngine> entry : sces.entrySet()) {
			spe = entry.getValue();
			if (spe.getProcessContext().isError()) {
				++errorTimes;
				error = true;
				errorMsg = errorMsg + "[" + errorTimes + "]" + spe.getProcessContext().getErrorMsg();
			}
			if (!spe.isAlive()) {
				log.info(spe.getTitle() + " thread was removed OK.");
				spe = null;
				keys.add(entry.getKey());
			}
		}

		for (Integer i : keys) {
			sces.remove(i);
		}

		try {
			Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
		} catch (InterruptedException e) {
			log.error(spe.getTitle() + "Waiting thread exception!", e);
		}

		if (error) {
			log.error(errorMsg);
			if (errorTimes > ERROR_TIMES) {
				log.fatal(FATAL_TAG + " Error too many times!");
				System.exit(0);
			} else {
				try {
					WebLinkSupport.refreshContextAndReconnInternet(ClawerConstants.PROC_LOG
							+ "REC By SearchPages when error!recTimes=" + errorTimes + ".", true);
				} catch (Exception e) {
					log.error(ClawerConstants.PROC_LOG + "REC By SearchPages!ERROR!recTimes=" + errorTimes + ".", e);
				}
			}
		}

		return errorTimes;
	}

	public static void main(String[] args) {
		long lo = System.currentTimeMillis();
		System.out.println(lo);
		System.out.println(DateUtils.dateToString(new Date(), DateUtils.DAY_YMD) + "_" + (lo + "").substring(7, 13));
	}
}
