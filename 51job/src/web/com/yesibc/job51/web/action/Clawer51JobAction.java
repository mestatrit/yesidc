package com.yesibc.job51.web.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.utils.StringUtils;
import com.yesibc.core.web.BaseAction2Support;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.CompanyJobContext;
import com.yesibc.job51.web.search.SearchJobDetailEngine;
import com.yesibc.job51.web.search.SearchListEngine;
import com.yesibc.job51.web.search.SearchPagesEngine;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.WebLinkSupport;

public class Clawer51JobAction extends BaseAction2Support {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8228026649441186987L;
	private static Log log = LogFactory.getLog(Clawer51JobAction.class);
	private static String finishTag = "false";
	private static long callTimes = System.currentTimeMillis();
	long i = 0;

	// 总线程
	private String totalThreadTag = "ToT-[";

	// 总任务/当前任务
	private String currentOfToI = "]#All-Cur[";

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
		String failedOrNot = null;
		if (ClawerConstants.TEST_WEB) {
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

		String requestId = null;
		if (ClawerConstants.TEST_WEB) {
			requestId = String.valueOf(start);
		} else {
			requestId = getParameter("requestId");
		}
		if (requestId == null) {
			requestId = String.valueOf(start);
			log.info("Request id from client is null.Generate:" + requestId);
		}

		ClawerConstants.REQUEST_ID = requestId;
		String reqLog = "requestId[" + requestId + "]";

		int threadNumber = ClawerConstants.THREADS_NUMBER;
		if (ClawerConstants.TEST_WEB) {
			threadNumber = ClawerConstants.THREADS_NUMBER;
		} else {
			String mainThreadsStr = getParameter("mainThreads");
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
		int size = CompanyJobContext.getSearchListSize();
		reqLog = reqLog + "(retry)";
		if (size > 0 && failedOrNotInt < 1) {
			parseSearchList(threadNumber, requestId, reqLog);
		}

		size = CompanyJobContext.getSearchPagesSize();
		if (size > 0 && failedOrNotInt < 2) {
			parseSearchPages(requestId, reqLog, threadNumber);
		}

		size = CompanyJobContext.getJobsWPLength();
		if (size > 0 && failedOrNotInt < 3) {
			parseJobsDetail(requestId, reqLog, threadNumber);
		}
		log.info(reqLog + " End checking!Results:SearchListSize=" + CompanyJobContext.getSearchListSize()
				+ ",SearchPagesSize=" + CompanyJobContext.getSearchPagesSize() + ",JobsWPLength="
				+ CompanyJobContext.getJobsWPLength());
	}

	private void doing(int failedOrNotInt, String requestId, String reqLog, int threadNumber) {
		/**
		 * get all the page urls.
		 */
		if (failedOrNotInt < 1) {
			parseSearchList(threadNumber, requestId, reqLog);
		} else {
			log.warn("Start to parse failed search list!");
			parseSearchList(threadNumber, requestId, reqLog);
			log.warn("End to parse failed search list!");
		}

		/**
		 * get all the company urls according to page urls.
		 */
		if (failedOrNotInt < 2) {
			parseSearchPages(requestId, reqLog, threadNumber);
		} else {
			log.warn("Start to parse failed search pages!");
			parseSearchPages(requestId, reqLog, threadNumber);
			log.warn("End to parse failed search pages!");
		}

		/**
		 * parse job detail pages.
		 */
		if (failedOrNotInt < 3) {
			parseJobsDetail(requestId, reqLog, threadNumber);
		} else {
			log.warn("Start to parse failed job detail!");
			parseJobsDetail(requestId, reqLog, threadNumber);
			log.warn("End to parse failed job detail!");
		}
	}

	private void parseJobsDetail(String requestId, String reqLog, int threadNumber) {
		try {
			WebLinkSupport.refreshContext(ClawerConstants.PROC_LOG + "REC By parseJobsPages!0!");
		} catch (Exception e) {
			log.error(ClawerConstants.PROC_LOG + "REC By parseJobsPages!0!ERROR!");
		}
		long l = System.currentTimeMillis();
		int error = 0;
		try {
			int size = CompanyJobContext.getJobsWPLength();
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

			Collections.shuffle(CompanyJobContext.getJobsWP());

			int current = 0;
			int circleTime = 0;
			int recTimes = 0;
			List<SearchJobDetailEngine> sjdes = new ArrayList<SearchJobDetailEngine>();
			while (current < size) {
				circleTime++;
				for (int thread = 0; thread < threadNumber; thread++) {
					if (current >= size) {
						break;
					}
					// doing
					SearchJobDetailEngine sce = new SearchJobDetailEngine("JobDetails#" + totalThreadTag + totalThreads
							+ "-" + thread + "].CircleTimes[" + circleTimes + "-" + circleTime + currentOfToI + size
							+ "-" + current, CompanyJobContext.getJobsWP().get(current), thread);
					sce.start();
					sjdes.add(sce);
					current++;
				}

				waitingParseJobDetailLinks(sjdes);

				if (current % (ClawerConstants.REFRESH_INTERVAL_TIMES) == 0) {
					recTimes++;
					try {
						WebLinkSupport.refreshContext(ClawerConstants.PROC_LOG + "REC By parseJobDetails!" + recTimes
								+ "!");
					} catch (Exception e) {
						log.error(ClawerConstants.PROC_LOG + "REC By parseJobDetails!ERROR!recTimes=" + recTimes + ".");
					}
				}
			}

		} catch (Exception e) {
			error++;
			ErrorHandler.errorLogAndMail("parseJobsDetails error in Action:", e);
		}
		l = System.currentTimeMillis() - l;
		log.info("parse parseJobsDetails.Times[" + l / (1000 * 60) + "s]. Error[" + error + "]. URL_COMPANIES="
				+ CompanyJobContext.getCompaniesLength() + ",URL_JOBS=" + CompanyJobContext.getJobsWPLength()
				+ ",COMPANY=" + CompanyJobContext.getCompaniesLength() + ",Email="
				+ CompanyJobContext.getEmailsLength() + ".");
	}

	private void parseSearchPages(String requestId, String reqLog, int threadNumber) {
		try {
			WebLinkSupport.refreshContext(ClawerConstants.PROC_LOG + "REC By SearchPages!0!");
		} catch (Exception e) {
			log.error(ClawerConstants.PROC_LOG + "REC By SearchPages!ERROR!");
		}
		long l = System.currentTimeMillis();
		int error = 0;
		try {
			int size = CompanyJobContext.getSearchPagesSize();
			if (ClawerConstants.TEST_WEB) {
				size = ClawerConstants.TEST_WEB_NUM;
			}

			int circleTimes = size % threadNumber == 0 ? size / threadNumber : size / threadNumber + 1;

			int totalThreads = threadNumber;
			if (size < threadNumber) {
				totalThreads = size;
			}

			log.info(reqLog + "Parse SearchPages start!threadNumber[" + threadNumber + "]company links size[" + size
					+ "]circleTimes[" + circleTimes + "]");

			Collections.shuffle(CompanyJobContext.getSearchPagesWP());
			l = System.currentTimeMillis() - l;
			log.info(reqLog + "SearchPages shffle!Times[" + l / (1000 * 60) + "s]");

			int current = 0;
			int circleTime = 0;
			int recTimes = 0;
			List<SearchPagesEngine> sces = new ArrayList<SearchPagesEngine>();
			while (current < size) {
				circleTime++;
				for (int thread = 0; thread < threadNumber; thread++) {
					if (current >= size) {
						break;
					}
					// doing
					SearchPagesEngine sce = new SearchPagesEngine("SearchPages#" + totalThreadTag + totalThreads + "-"
							+ thread + "].CircleTimes[" + circleTimes + "-" + circleTime + currentOfToI + size + "-"
							+ current, CompanyJobContext.getSearchPagesWP().get(current), thread);
					sce.start();
					sces.add(sce);
					current++;
				}

				waitingSearchPages(sces);

				if (current % (ClawerConstants.REFRESH_INTERVAL_TIMES) == 0) {
					recTimes++;
					try {
						WebLinkSupport
								.refreshContext(ClawerConstants.PROC_LOG + "REC By SearchPages!" + recTimes + "!");
					} catch (Exception e) {
						log.error(ClawerConstants.PROC_LOG + "REC By SearchPages!ERROR!recTimes=" + recTimes + ".");
					}
				}
			}
		} catch (Exception e) {
			error++;
			ErrorHandler.errorLogAndMail("SearchPages error in Action:", e);
		}
		l = System.currentTimeMillis() - l;
		log.info("parseSearchPages OK.Times[" + l / (1000 * 60) + "s]. Error[" + error + "]Search List="
				+ CompanyJobContext.getSearchListSize() + ",Search Pages=" + CompanyJobContext.getSearchPagesSize()
				+ ",Jobs=" + CompanyJobContext.getJobsWPLength() + ",Companies="
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

			Collections.shuffle(CompanyJobContext.getSearchList());

			log.info(reqLog + "Parse search list start!threadNumber[" + threadNumber + "]page size[" + size
					+ "]circleTimes[" + circleTimes + "]");

			int current = 0;
			int circleTime = 0;
			int recTimes = 0;
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
							+ current, CompanyJobContext.getSearchList().get(current), thread);
					sce.start();
					spes.add(sce);
					current++;
				}

				waitingSearchList(spes);

				if (current % (ClawerConstants.REFRESH_INTERVAL_TIMES) == 0) {
					recTimes++;
					try {
						WebLinkSupport.refreshContext(ClawerConstants.PROC_LOG + "REC By SearchList!" + recTimes + "!");
					} catch (Exception e) {
						log.error(ClawerConstants.PROC_LOG + "REC By SearchList!ERROR!recTimes=" + recTimes + ".");
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
				+ CompanyJobContext.getSearchListSize() + ",Search Pages=" + CompanyJobContext.getSearchPagesSize()
				+ ",Jobs=" + CompanyJobContext.getJobsWPLength() + ",Companies="
				+ CompanyJobContext.getCompaniesLength());
	}

	private void waitingSearchList(List<SearchListEngine> spes) {
		SearchListEngine spe = null;
		for (Iterator<SearchListEngine> it = spes.iterator(); it.hasNext();) {
			int i = 0;
			spe = it.next();
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

				if (i > ClawerConstants.WAITING_TIMES + 1) {
					ErrorHandler.errorLogAndMail(spe.getTitle() + " Waiting thread runing [" + i
							* ClawerConstants.WAITING_TIME_SECONDS + "]s. OverTime!. URL|" + spe.getUrl());
					it.remove();
					spe = null;
					break;
				}
			}
		}
		log.info("WaitingPageLinkThreads waiting end OK.");
	}

	private void waitingParseJobDetailLinks(List<SearchJobDetailEngine> jobs) {
		SearchJobDetailEngine spe = null;
		for (Iterator<SearchJobDetailEngine> it = jobs.iterator(); it.hasNext();) {
			int i = 0;
			spe = it.next();
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

				if (i > ClawerConstants.WAITING_TIMES + 1) {
					ErrorHandler.errorLogAndMail(spe.getTitle() + " Waiting thread runing [" + i
							* ClawerConstants.WAITING_TIME_SECONDS + "]s. OverTime!. URL|" + spe.getUrl());
					it.remove();
					spe = null;
					break;
				}
			}
		}
		log.info("waitingParseJobDetailLinks waiting end OK.");
	}

	private void waitingSearchPages(List<SearchPagesEngine> sles) {
		SearchPagesEngine spe = null;
		for (Iterator<SearchPagesEngine> it = sles.iterator(); it.hasNext();) {
			int i = 0;
			spe = it.next();
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

				if (i > ClawerConstants.WAITING_TIMES + 1) {
					ErrorHandler.errorLogAndMail(spe.getTitle() + " Waiting thread runing [" + i
							* ClawerConstants.WAITING_TIME_SECONDS + "]s. OverTime!. URL|" + spe.getUrl());
					it.remove();
					spe = null;
					break;
				}
			}
		}
		log.info("SearchPages waiting end OK.");
	}
}
