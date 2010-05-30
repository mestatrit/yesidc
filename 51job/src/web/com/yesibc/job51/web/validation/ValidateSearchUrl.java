package com.yesibc.job51.web.validation;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.support.BrowserSupport;
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
	private static Map<String, String> finish = new HashMap<String, String>();
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

		browser = BrowserSupport.initLoading(processContext, "Advanced Searching!", index);
		BrowserSupport.onDocumnetComplete(browser, finish);
		browser.loadURL(URL_SEARCH);
		BrowserSupport.waitingLoading(processContext, index, finish);

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

		try {
			Thread.sleep(3000);
			log.info("=================0=" + finish.get(BrowserSupport.WAIT_TAG_KEY).toString());
			browser.reload(0);
			log.info("=================1=" + finish.get(BrowserSupport.WAIT_TAG_KEY).toString());
			finish.clear();
			log.info("=================2=" + finish.containsKey(BrowserSupport.WAIT_TAG_KEY));
			BrowserSupport.waitingLoading(processContext, index, finish);
			log.info("=================3=" + finish.get(BrowserSupport.WAIT_TAG_KEY).toString());
			finish.clear();
			Thread.sleep(3000);
			log.info("=================2=" + finish.containsKey(BrowserSupport.WAIT_TAG_KEY));
		} catch (Exception e) {
			e.printStackTrace();
		}

		ValidateSearchUrlSuppot.doIndClick(indIE, browser, 0);
		log.info(ClawerConstants.PROC_LOG + "Do indClick OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		finish.clear();
		IElement searchBtn = LocateMainElements.locateMainSrchBtn(browser);
		log.info(ClawerConstants.PROC_LOG + "Locate MainSrchBtn OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		// click search button
		searchBtn.click();
		BrowserSupport.waitingLoading(processContext, index, finish);

		log.info(ClawerConstants.PROC_LOG + "Searching OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		String url = browser.getURL();
		log.info(ClawerConstants.PROC_LOG + "Search URL===" + url);
		url = url.replace(tag2, tagok).replace(tag1, tagok);
		if (!url.equals(SEARCH_URL_TEMPLATE_OK)) {
			throw new ApplicationException("Validate error:" + url);
		}

		// validate contents
		if (LocateCompanyInfo.validationTableOfJobList(processContext) < 1) {
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
		finish.clear();
		pageIE.click();
		BrowserSupport.waitingLoading(processContext, index, finish);
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

	public static IDocument getDoc() {
		return browser.getDocument();
	}

}
