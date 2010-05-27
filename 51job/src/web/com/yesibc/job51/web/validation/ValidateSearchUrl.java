package com.yesibc.job51.web.validation;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LocateCompanyInfo;
import com.yesibc.job51.web.support.LocateMainElements;

public class ValidateSearchUrl {

	private static String tag1 = "%2C";
	private static String tag2 = ",";
	private static String tagok = "";
	public final static String URL_SEARCH = "http://search.51job.com/jobsearch/advance_search.php";
	public final static String URL_SEARCH_BAK = "http://search.51job.com/jobsearch/advance_search.php?stype=2";
	private static Log log = LogFactory.getLog(ValidateSearchUrl.class);
	private static String SEARCH_URL_TEMPLATE = "http://search.51job.com/jobsearch/search_result.php"
			+ "?fromJs=1&jobarea=0000&funtype=2400,0100,2500&industrytype=01,37,38&issuedate=9"
			+ "&providesalary=99&keywordtype=2&lang=c&stype=2&workyear=99&cotype=99&degreefrom=99"
			+ "&jobterm=01&fromType=1";
	private static String SEARCH_URL_TEMPLATE_OK = SEARCH_URL_TEMPLATE.replace(tag2, tagok).replace(tag1, tagok);

	private static String PAGE_URL_TEMPLATE = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000"
			+ "&district=0000&funtype=2400,0100,2500&industrytype=01,37,38&issuedate=9&providesalary=99"
			+ "&keywordtype=2&curr_page=2&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99"
			+ "&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14";
	private static String PAGE_URL_TEMPLATE_OK = PAGE_URL_TEMPLATE.replace(tag2, tagok).replace(tag1, tagok);

	public static long WAITING = 0;

	public static IBrowserCanvas browser;
	public static boolean FINISH = false;
	public final static boolean TEST = true;
	private static int index = 0;

	static long l = System.currentTimeMillis();

	public static IBrowserCanvas getBrowser() {
		return BrowserFactory.spawnMozilla();
	}

	/**
	 * @param args
	 * @throws ApplicationException
	 */
	public static IBrowserCanvas validateSearchUrl() throws ApplicationException {
		TestProcessContext processContext = new TestProcessContext();

		browser = JobSupport.initLoading(processContext, "Advanced Searching!", index);
		onDocumnetComplete();
		browser.loadURL(URL_SEARCH);
		waitingLoading();
		log.info(ClawerConstants.PROC_LOG + "Load " + URL_SEARCH + " complete OK!Time is "
				+ (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		ValidateTypes.validateCompanyNature(browser);
		log.info(ClawerConstants.PROC_LOG + "validateCompanyNature complete OK!");

		IElement funIE = LocateMainElements.locateFunBtn(browser);
		log.info(ClawerConstants.PROC_LOG + "Locate FunBtn OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		IElement indIE = LocateMainElements.locateIndBtn(browser);
		log.info(ClawerConstants.PROC_LOG + "Locate IndBtn OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		// first time to search.
		ValidateSearchUrlSuppot.doFunClick(funIE, browser, 0);
		log.info(ClawerConstants.PROC_LOG + "Do funClick OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		JobSupport.waiting();
		ValidateSearchUrlSuppot.doIndClick(indIE, browser, 0);
		log.info(ClawerConstants.PROC_LOG + "Do indClick OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		JobSupport.waiting();

		// click search button
		FINISH = false;
		IElement searchBtn = LocateMainElements.locateMainSrchBtn(browser);
		log.info(ClawerConstants.PROC_LOG + "Locate MainSrchBtn OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		searchBtn.click();
		waitingLoading();
		log.info(ClawerConstants.PROC_LOG + "Searching OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		String url = browser.getURL();
		log.info(ClawerConstants.PROC_LOG + "Search URL===" + url);
		url = url.replace(tag2, tagok).replace(tag1, tagok);
		if (!url.equals(SEARCH_URL_TEMPLATE_OK)) {
			throw new ApplicationException("Validate error:" + url);
		}

		// validate contents
		if (LocateCompanyInfo.validationTableOfJobList(browser) < 1) {
			throw new ApplicationException("Validate job list page error:" + url);
		}

		// get pageNums
		int total = LocateCompanyInfo.getTotal(processContext);
		if (total < 60) {
			throw new ApplicationException("Can not get total records." + url);
		}

		int pages = total % ClawerConstants.PAGESIZE_JOBS == 0 ? total / ClawerConstants.PAGESIZE_JOBS
				: (total / ClawerConstants.PAGESIZE_JOBS) + 1;
		if (pages < 3) {
			throw new ApplicationException("Can not get total pages." + url);
		}

		// get paging url
		IElement pageIE = LocateMainElements.locatePage(browser, ">2<");
		// paging.
		FINISH = false;
		pageIE.click();
		waitingLoading();
		log.info(ClawerConstants.PROC_LOG + "Paging URL===" + url);
		// check paging urls
		url = browser.getURL();
		url = url.replace(tag2, tagok).replace(tag1, tagok);
		if (!PAGE_URL_TEMPLATE_OK.equals(url)) {
			throw new ApplicationException("Paging url is error." + url);
		}

		log.info("ValidateSearchUrl is OK!");

		return browser;
	}

	private static void onDocumnetComplete() {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				FINISH = true;
			}
		});
	}

	public static IDocument getDoc() {
		return browser.getDocument();
	}

	public static void waitingLoading() {
		int i = 0;
		while (!FINISH) {
			i++;
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			log.info("Job Main waiting loading![" + i * 0.5 + "]s");
		}
	}

}
