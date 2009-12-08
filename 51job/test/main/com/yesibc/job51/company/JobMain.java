package com.yesibc.job51.company;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.company.search1.FunctionDIV;
import com.yesibc.job51.company.search1.IndustryDIV;
import com.yesibc.job51.company.search1.LocateMainElements;

public class JobMain {

	public final static String URL_SEARCH = "http://search.51job.com/jobsearch/advance_search.php";
	public final static String URL_SEARCH_BAK = "file:///D:/yesibc/51job/51JOB/jobsearch/advance_search.html";
	private static Log log = LogFactory.getLog(JobMain.class);

	public static long WAITING = 0;

	public static IBrowserCanvas BROWSER;
	public static boolean FINISH = false;
	public final static boolean TEST = true;

	static long l = 0;
	
	static {
		// BrowserFactory.setLicenseData("SHOCK2K7" ,
		// "0000EOLVVUB6UTML75EEEBM7");
		// BrowserFactory.setLicenseData("30dtrial",
		// "IH3HMLI0P324N68356TK6L70");
		// BrowserFactory.setLicenseData("shock2k8",
		// "FFS2CUVNVMK7K79IESL1CT2N");
		/**
		 * 4.0
		 */
		BrowserFactory.setLicenseData(ClawerConstants.WEBRENDERER_ID,
				ClawerConstants.WEBRENDERER_SN);
		l = System.currentTimeMillis();
		log.info(ClawerConstants.PROC_LOG + "Load license OK! Time is "
				+ (System.currentTimeMillis() - l));
	}

	public static IBrowserCanvas getBrowser() {
		return BrowserFactory.spawnMozilla();
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
//			JVMMemory aTest = new JVMMemory();
//			aTest.start();
			
			l = System.currentTimeMillis();
			BROWSER = getBrowser();
			JobSupport.addListener(BROWSER);
			log.info(ClawerConstants.PROC_LOG + "Add listener OK! Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			onDocumnetComplete();

			BROWSER.loadURL(URL_SEARCH);

			JobSupport.showFrame(BROWSER, "Search first page!");

			waitingLoading();
			log.info(ClawerConstants.PROC_LOG + "Load " + URL_SEARCH
					+ " complete OK!Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			IElement funIE = LocateMainElements.locateFunBtn1();
			log.info(ClawerConstants.PROC_LOG + "Locate FunBtn OK!Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			IElement indIE = LocateMainElements.locateIndBtn1();
			log.info(ClawerConstants.PROC_LOG + "Locate IndBtn OK!Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			// first time to search.
			SelectFun.doFunClick(funIE, 0);
			log.info(ClawerConstants.PROC_LOG + "Do funClick OK!Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			JobSupport.waiting();
			SelectInd.doIndClick(indIE, 0);
			log.info(ClawerConstants.PROC_LOG + "Do indClick OK!Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			JobSupport.waiting();

			// click search button
			FINISH = false;
			IElement searchBtn = LocateMainElements.locateMainSrchBtn();
			log.info(ClawerConstants.PROC_LOG
					+ "Locate MainSrchBtn OK!Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			searchBtn.click();
			waitingLoading();
			log.info(ClawerConstants.PROC_LOG + "Searching OK!Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			log.info("URLS==="+BROWSER.getURL());

			// parse companies
			//ParseCompanyList.parseCompanies();
			log.info(ClawerConstants.PROC_LOG
					+ "Parse Companies in first page OK!Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			// paging
			Paging.pageSize = 1;
			//Paging.doPaging();
			log
					.info(ClawerConstants.PROC_LOG
							+ "Parse Companies by first time searching paing OK!Time is "
							+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			// result page.
			funIE = LocateMainElements.locateFunBtn2();
			indIE = LocateMainElements.locateIndBtn2();
			for (int i = 1; i < FunctionDIV.SELECT_TIMES; i++) {
				SelectFun.doFunClick(funIE, i);
				JobSupport.waiting();
				for (int j = 0; j < 1; j++) {
					LogHandler.info(funIE.getOuterHTML());
					LogHandler.info(indIE.getOuterHTML());

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
					log.info(ClawerConstants.PROC_LOG + "Parse Companies by "
							+ ((IndustryDIV.SELECT_TIMES * i) + j + 1)
							+ " time searching p1 OK!Time is "
							+ (System.currentTimeMillis() - l));
					l = System.currentTimeMillis();
					
					log.info("URLS==="+BROWSER.getURL());

					// parse companies
					//ParseCompanyList.parseCompanies();
					// paging
					Paging.pageSize = 1;
					Paging.searchingTimes = (IndustryDIV.SELECT_TIMES * i) + j
							+ 1;
					//Paging.doPaging();
					log.info(ClawerConstants.PROC_LOG + "Parse Companies by "
							+ Paging.searchingTimes
							+ " time searching paging OK!Time is "
							+ (System.currentTimeMillis() - l));

					funIE = LocateMainElements.locateFunBtn2();
					indIE = LocateMainElements.locateIndBtn2();
				}
			}

			LogHandler.info("Complete all!");
		} catch (Exception e) {
			e.printStackTrace();
		}
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
			LogHandler.debug("Job Main waiting loading¡­¡­[" + i * 0.5 + "]s");
		}
	}

}
