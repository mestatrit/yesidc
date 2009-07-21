package com.yesibc.job51.company;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.company.search1.FunctionDIV;
import com.yesibc.job51.company.search1.IndustryDIV;
import com.yesibc.job51.company.search1.LocateMainElements;

public class JobMain {

	public final static String URL_SEARCH = "http://search.51job.com/jobsearch/advance_search.php";
	public final static String URL_SEARCH_BAK = "file:///D:/yesibc/51job/51JOB/jobsearch/advance_search.html";

	public static long WAITING = 100;

	private static IBrowserCanvas BROWSER;
	public static boolean FINISH = false;
	public final static boolean TEST = true;


	static {
		// BrowserFactory.setLicenseData("SHOCK2K7" ,
		// "0000EOLVVUB6UTML75EEEBM7");
		BrowserFactory.setLicenseData("30dtrial", "D1034UOG91IN362E33EGGCG1");
	}

	public static IBrowserCanvas getBrowser() {
		return BrowserFactory.spawnMozilla();
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		BROWSER = getBrowser();
		JobSupport.addListener(BROWSER);

		onDocumnetComplete();

		BROWSER.loadURL(URL_SEARCH);

		JobSupport.showFrame(BROWSER, "Search first page!");

		waitingLoading();

		IElement funIE = LocateMainElements.locateFunBtn1();
		IElement indIE = LocateMainElements.locateIndBtn1();

		// first time to search.
		SelectFun.doFunClick(funIE, 0);
		JobSupport.waiting();
		SelectInd.doIndClick(indIE, 0);
		JobSupport.waiting();

		// click search button
		FINISH = false;
		IElement searchBtn = LocateMainElements.locateMainSrchBtn();

		searchBtn.click();
		waitingLoading();
		// parse companies
		ParseCompanyList.parseCompanies();
		// paging
		Paging.pageSize = 1;
		Paging.doPaging();

		// result page.
		funIE = LocateMainElements.locateFunBtn2();
		indIE = LocateMainElements.locateIndBtn2();
		for (int i = 0; i < FunctionDIV.SELECT_TIMES; i++) {
			SelectFun.doFunClick(funIE, i);
			JobSupport.waiting();
			for (int j = 0; j < IndustryDIV.SELECT_TIMES; j++) {
				if (i == 0 && j == 0) {
					continue;
				}
				SelectInd.doIndClick(indIE, j);
				// click search button
				FINISH = false;
				searchBtn = LocateMainElements.locateMainSrchBtn();
				searchBtn.click();
				waitingLoading();
				JobSupport.waiting();

				// parse companies
				ParseCompanyList.parseCompanies();
				// paging
				Paging.pageSize = 1;
				Paging.doPaging();

				LogHandler.info(funIE.getOuterHTML());
				LogHandler.info(indIE.getOuterHTML());
				
				funIE = LocateMainElements.locateFunBtn2();
				indIE = LocateMainElements.locateIndBtn2();
			}
		}

		System.out.println("Complete all!");
	}

	private static void onDocumnetComplete() {
		BROWSER.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				FINISH = true;
			}
		});
	}

	public static IDocument getDoc() {
		return BROWSER.getDocument();
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
			System.out.println("Job Main waiting loading¡­¡­[" + i * 0.5 + "]s");
		}
	}

}
