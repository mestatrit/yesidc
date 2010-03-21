package com.yesibc.job51.web.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.web.BaseAction2Support;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.CompanyJobContext;
import com.yesibc.job51.web.search.SearchCompanyLinksEngine;
import com.yesibc.job51.web.search.SearchCompanyNJobLinksEngine;
import com.yesibc.job51.web.search.SearchJobDetailEngine;
import com.yesibc.job51.web.search.SearchPagesEngine;
import com.yesibc.job51.web.support.ErrorHandler;

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
	private String totalThreadTag = "ToT-";

	// 总任务/当前任务
	private String currentOfToI = "]#CrToI[";

	// 某一线程总任务/当前任务
	private String currentOfToC = "]#CrToC-";

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
		String requestId = getParameter("requestId");
		if (requestId == null) {
			requestId = String.valueOf(start);
			log.info("Request id from client is null.Generate:" + requestId);
		} else {
			log.info("Request id from client is:" + requestId);
		}
		String reqLog = "requestId[" + requestId + "]";

		int threadNumber = ClawerConstants.THREADS_NUMBER;
		String mainThreadsStr = getParameter("mainThreads");
		if (mainThreadsStr != null) {
			try {
				threadNumber = Integer.parseInt(mainThreadsStr);
				ClawerConstants.THREADS_NUMBER = threadNumber;
			} catch (Exception e) {
				log.error("Parse threadNumber error:" + mainThreadsStr, e);
			}
		}

		/**
		 * get all the page urls.
		 */
		try {
			parsePageLinks(threadNumber, requestId, reqLog);
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail("ParsePageLinks error in Action:", e);
		}
		log.info("parsePageLinks URL_COMPANIES=" + CompanyJobContext.getUrlCompaniesLength() + ",URL_PAGES="
				+ CompanyJobContext.getUrlPagesLength() + ",COMPANY=" + CompanyJobContext.getCompaniesLength());

		/**
		 * get all the company urls according to page urls.
		 */
		try {
			parseCompanyLinks(requestId, reqLog, threadNumber);
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail("parseCompanyLinks error in Action:", e);
		}
		log.info("parseCompanyLinks URL_COMPANIES=" + CompanyJobContext.getUrlCompaniesLength() + ",URL_PAGES="
				+ CompanyJobContext.getUrlPagesLength() + ",COMPANY=" + CompanyJobContext.getCompaniesLength());

		/**
		 * save company to DB and get all jobs urls according to company urls.
		 */
		try {
			parseJobLinks(requestId, reqLog, threadNumber);
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail("parseJobLinks error in Action:", e);
		}
		log.info("parseCompanyLinks URL_COMPANIES=" + CompanyJobContext.getUrlCompaniesLength() + ",URL_JOBS="
				+ CompanyJobContext.getUrlJobsLength() + ",COMPANY=" + CompanyJobContext.getCompaniesLength());

		/**
		 * get email from job detail pages.
		 */
		try {
			parseEmailFromJobs(requestId, reqLog, threadNumber);
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail("parseEmailFromJobs error in Action:", e);
		}
		log.info(reqLog + " is END!Time is [" + (System.currentTimeMillis() - start) / (1000 * 60) + "]m.");
		finishTag = "true";
		return SUCCESS;
	}

	private void parseEmailFromJobs(String requestId, String reqLog, int threadNumber) {
		long l = System.currentTimeMillis();
		int size = CompanyJobContext.getUrlJobsLength();
		int circleTimes = size % threadNumber == 0 ? size / threadNumber : size / threadNumber + 1;

		int totalThreads = threadNumber;
		if (size < threadNumber) {
			totalThreads = size;
		}

		log.info(reqLog + "Parse job detail links start!threadNumber[" + threadNumber + "]job links size[" + size
				+ "]circleTimes[" + circleTimes + "]");

		Collections.shuffle(CompanyJobContext.getUrlJobs());
		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Job detail links shffle!Times[" + l + "]");

		int k = 0;
		List<SearchJobDetailEngine> jobs = new ArrayList<SearchJobDetailEngine>();

		if (ClawerConstants.TEST_WEB) {
			circleTimes = ClawerConstants.TEST_WEB_NUM;
		}

		boolean end = false;
		for (int i = 0; i < threadNumber; i++) {
			String[] urls = new String[circleTimes];
			int temp = 0;
			for (int j = 0; j < circleTimes; j++) {
				k = i * circleTimes + j;
				if ((k + 1) > size) {
					end = true;
					break;
				}
				urls[j] = CompanyJobContext.getUrlJobs().get(k);
				temp = j;
			}
			SearchJobDetailEngine sce = new SearchJobDetailEngine(totalThreadTag + totalThreads + "[" + i
					+ currentOfToI + size + "-" + k + currentOfToC + temp,
			// requestId + ",parse email from jobs [" + k + "].",
					urls, i);
			sce.start();
			jobs.add(sce);
			if (end) {
				break;
			}
		}

		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Parse job detail links submit OK!Times[" + l / (1000 * 60) + "s]");

		waitingParseJobDetailLinks(jobs);
		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Parse job links OK!Times[" + l / (1000 * 60) + "s]");
	}

	private void parseJobLinks(String requestId, String reqLog, int threadNumber) {
		long l = System.currentTimeMillis();
		int size = CompanyJobContext.getUrlCompaniesLength();
		int circleTimes = size % threadNumber == 0 ? size / threadNumber : size / threadNumber + 1;

		int totalThreads = threadNumber;
		if (size < threadNumber) {
			totalThreads = size;
		}

		log.info(reqLog + "Parse job links start!threadNumber[" + threadNumber + "]job links size[" + size
				+ "]circleTimes[" + circleTimes + "]");

		Collections.shuffle(CompanyJobContext.getUrlCompanies());
		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Job links shffle!Times[" + l + "]");

		int k = 0;
		List<SearchCompanyNJobLinksEngine> jobs = new ArrayList<SearchCompanyNJobLinksEngine>();

		if (ClawerConstants.TEST_WEB) {
			circleTimes = ClawerConstants.TEST_WEB_NUM;
		}

		boolean end = false;
		for (int i = 0; i < threadNumber; i++) {
			String[] urls = new String[circleTimes];
			int temp = 0;
			for (int j = 0; j < circleTimes; j++) {
				k = i * circleTimes + j;
				if ((k + 1) > size) {
					end = true;
					break;
				}
				urls[j] = CompanyJobContext.getUrlCompanies().get(k);
				temp = j;
			}
			SearchCompanyNJobLinksEngine sce = new SearchCompanyNJobLinksEngine(totalThreadTag + totalThreads + "[" + i
					+ currentOfToI + size + "-" + k + currentOfToC + temp, urls, i);
			sce.start();
			jobs.add(sce);
			if (end) {
				break;
			}
		}

		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Parse job links submit OK!Times[" + l / (1000 * 60) + "s]");

		waitingParseJobLinks(jobs);
		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Parse job links OK!Times[" + l / (1000 * 60) + "s]");
	}

	private void parseCompanyLinks(String requestId, String reqLog, int threadNumber) {
		long l = System.currentTimeMillis();
		int size = CompanyJobContext.getUrlPagesLength();
		int circleTimes = size % threadNumber == 0 ? size / threadNumber : size / threadNumber + 1;

		int totalThreads = threadNumber;
		if (size < threadNumber) {
			totalThreads = size;
		}

		log.info(reqLog + "Parse company links start!threadNumber[" + threadNumber + "]company links size[" + size
				+ "]circleTimes[" + circleTimes + "]");

		Collections.shuffle(CompanyJobContext.getUrlPages());
		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Company links shffle!Times[" + l / (1000 * 60) + "s]");

		int k = 0;
		List<SearchCompanyLinksEngine> sces = new ArrayList<SearchCompanyLinksEngine>();

		if (ClawerConstants.TEST_WEB) {
			circleTimes = ClawerConstants.TEST_WEB_NUM;
		}

		boolean end = false;
		for (int i = 0; i < threadNumber; i++) {
			String[] urls = new String[circleTimes];
			int temp = 0;
			for (int j = 0; j < circleTimes; j++) {
				k = i * circleTimes + j;
				if ((k + 1) > size) {
					end = true;
					break;
				}
				urls[j] = CompanyJobContext.getUrlPages().get(k);
				temp = j;
			}
			SearchCompanyLinksEngine sce = new SearchCompanyLinksEngine(totalThreadTag + totalThreads + "[" + i
					+ currentOfToI + size + "-" + k + currentOfToC + temp,
			// requestId + ",parse company links [" + k + "].",
					urls, i);
			sce.start();
			sces.add(sce);
			if (end) {
				break;
			}
		}

		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Parse company links submit OK!Times[" + l / (1000 * 60) + "s]");

		waitingParseCompanyLinks(sces);
		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Parse company links OK!Times[" + l / (1000 * 60) + "s]");
	}

	private void parsePageLinks(int threadNumber, String requestId, String reqLog) {
		long l = System.currentTimeMillis();

		int size = CompanyJobContext.getSearchResultUrlsLength();
		int circleTimes = size % threadNumber == 0 ? size / threadNumber : size / threadNumber + 1;

		int totalThreads = threadNumber;
		if (size < threadNumber) {
			totalThreads = size;
		}

		log.info(reqLog + "Parse pages links start!threadNumber[" + threadNumber + "]page size[" + size
				+ "]circleTimes[" + circleTimes + "]");

		int k = 0;
		List<SearchPagesEngine> spes = new ArrayList<SearchPagesEngine>();

		if (ClawerConstants.TEST_WEB) {
			circleTimes = ClawerConstants.TEST_WEB_NUM;
		}

		boolean end = false;
		for (int i = 0; i < threadNumber; i++) {
			String[] urls = new String[circleTimes];
			int temp = 0;
			for (int j = 0; j < circleTimes; j++) {
				k = i * circleTimes + j;
				if ((k + 1) > size) {
					end = true;
					break;
				}
				urls[j] = CompanyJobContext.getSearchResultUrls().get(k);
				temp = j;
			}
			SearchPagesEngine spe = new SearchPagesEngine(totalThreadTag + totalThreads + "[" + i + currentOfToI + size
					+ "-" + k + currentOfToC + temp, urls, i);
			spe.start();
			spes.add(spe);
			if (end) {
				break;
			}
		}

		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Parse pages links submit OK!Times[" + l / (1000 * 60) + "s]");

		waitingPageLinkThreads(spes);

		l = System.currentTimeMillis() - l;
		log.info(reqLog + "Parse pages links OK!Times[" + l / (1000 * 60) + "s]");
	}

	private void waitingPageLinkThreads(List<SearchPagesEngine> spes) {
		SearchPagesEngine spe = null;
		int i = 0;
		while (true) {
			for (Iterator<SearchPagesEngine> it = spes.iterator(); it.hasNext();) {
				spe = it.next();
				if (!spe.isAlive()) {
					log.info(spe.getTitle() + " thread was removed OK.");
					it.remove();
				} else {
					i++;
					log.info(spe.getTitle() + " Waiting thread runing end!  URL|" + spe.getCrUrl());
					try {
						Thread.sleep(60000);
					} catch (InterruptedException e) {
						log.error(spe.getTitle() + "Waiting thread exception!", e);
					}
					log.info(spe.getTitle() + " Waiting thread runing [" + i * 60 + "]s. URL|" + spe.getCrUrl());
				}
			}
			if (spes == null || spes.isEmpty()) {
				break;
			}
		}
		log.info(spe.getTitle() + " Waiting thread runing end![" + i * 60 + "]s. URL|" + spe.getCrUrl());
	}

	private void waitingParseJobDetailLinks(List<SearchJobDetailEngine> jobs) {
		SearchJobDetailEngine spe = null;
		int i = 0;
		while (true) {
			for (Iterator<SearchJobDetailEngine> it = jobs.iterator(); it.hasNext();) {
				spe = it.next();
				if (!spe.isAlive()) {
					log.info(spe.getTitle() + " thread was removed OK.");
					it.remove();
				} else {
					i++;
					log.info(spe.getTitle() + " Waiting thread runing end!  URL|" + spe.getCrUrl());
					try {
						Thread.sleep(60000);
					} catch (InterruptedException e) {
						log.error(spe.getTitle() + "Waiting thread exception!", e);
					}
					log.info(spe.getTitle() + " Waiting thread runing [" + i * 60 + "]s. URL|" + spe.getCrUrl());
				}
			}
			if (jobs == null || jobs.isEmpty()) {
				break;
			}
		}
		log.info(spe.getTitle() + " Waiting thread runing end![" + i * 60 + "]s. URL|" + spe.getCrUrl());
	}

	private void waitingParseJobLinks(List<SearchCompanyNJobLinksEngine> jobs) {
		SearchCompanyNJobLinksEngine spe = null;
		int i = 0;
		while (true) {
			for (Iterator<SearchCompanyNJobLinksEngine> it = jobs.iterator(); it.hasNext();) {
				spe = it.next();
				if (!spe.isAlive()) {
					log.info(spe.getTitle() + " thread was removed OK.");
					it.remove();
				} else {
					i++;
					log.info(spe.getTitle() + " Waiting thread runing end!  URL|" + spe.getCrUrl());
					try {
						Thread.sleep(60000);
					} catch (InterruptedException e) {
						log.error(spe.getTitle() + "Waiting thread exception!", e);
					}
					log.info(spe.getTitle() + " Waiting thread runing [" + i * 60 + "]s. URL|" + spe.getCrUrl());
				}
			}
			if (jobs == null || jobs.isEmpty()) {
				break;
			}
		}
		log.info(spe.getTitle() + " Waiting thread runing end![" + i * 60 + "]. URL|" + spe.getCrUrl());
	}

	private void waitingParseCompanyLinks(List<SearchCompanyLinksEngine> jobs) {
		SearchCompanyLinksEngine spe = null;
		int i = 0;
		while (true) {
			for (Iterator<SearchCompanyLinksEngine> it = jobs.iterator(); it.hasNext();) {
				spe = it.next();
				if (!spe.isAlive()) {
					log.info(spe.getTitle() + " thread was removed OK.");
					it.remove();
				} else {
					i++;
					log.info(spe.getTitle() + " Waiting thread runing end!  URL|" + spe.getCrUrl());
					try {
						Thread.sleep(60000);
					} catch (InterruptedException e) {
						log.error(spe.getTitle() + "Waiting thread exception!", e);
					}
					log.info(spe.getTitle() + " Waiting thread runing [" + i * 60 + "]s. URL|" + spe.getCrUrl());
				}
			}
			if (jobs == null || jobs.isEmpty()) {
				break;
			}
		}
		log.info(spe.getTitle() + " Waiting thread runing end![" + i * 60 + "]. URL|" + spe.getCrUrl());
	}
}
