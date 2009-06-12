package com.yesibc.job51.company;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;

public class JobMain {

	public final static String URL_SEARCH = "http://search.51job.com/jobsearch/advance_search.php";
	public final static String URL_SEARCH_BAK = "file:///D:/yesibc/51job/51JOB/jobsearch/advance_search.html";
	public static String FUNTAG = "popupFuntype";
	public static String INDTAG = "popupIndustry";
	public static int SELECT_TIMES = 2;
	public static long WAITING = 1000;

	public static String[] FUN_ARRAY = { "2400", "0100", "2500" };
	public static String[] IND_ARRAY = { "01", "37", "38" };
	public static String FUN_ID_NAME = "pcode";
	public static String FUNSUB_ID_NAME = "id";
	public static String FUNSUB_ID_VAL_CANCEL = "sfchx";
	public static String FUNSUB_ID_VAL_NULL = "afchx";

	public static String IND_ID_NAME = "id";
	public static String IND_ID_VAL_CANCEL = "sichx";
	public static String IND_ID_VAL_NULL = "aichx";

	private static IBrowserCanvas BROWSER;
	public static boolean FINISH = false;

	private static int funTimes = FUN_ARRAY.length % SELECT_TIMES == 0 ? FUN_ARRAY.length / SELECT_TIMES
			: (FUN_ARRAY.length / SELECT_TIMES + 1);
	private static int indTimes = IND_ARRAY.length % SELECT_TIMES == 0 ? IND_ARRAY.length / SELECT_TIMES
			: (IND_ARRAY.length / SELECT_TIMES + 1);

	static {
		BrowserFactory.setLicenseData("30dtrial", "6KR60ASK2KG378HCEBB128NP");
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

		IElement funIE = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "onClick", "openLayer('popupFuntype')");
		IElement indIE = JobSupport
				.getElement(getDoc().getAll().tags("INPUT"), "onClick", "openLayer('popupIndustry')");

		// first time to search.
		SelectFun.doFunClick(funIE, 0);
		JobSupport.waiting();
		SelectInd.doIndClick(indIE, 0);
		JobSupport.waiting();

		// click search button
		FINISH = false;
		IElement searchBtn = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "src",
				"jobsearch/images/btn_search");
		searchBtn.click();
		waitingLoading();
		// parse companies
		ParseCompanyList.parseCompanies();
		// paging
		Paging.doPaging();

		// result page.
		funIE = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "onClick", "openLayer('popupFuntype')");
		indIE = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "onClick", "openLayer('popupIndustry')");
		for (int i = 0; i < funTimes; i++) {
			SelectFun.doFunClick(funIE, i);
			JobSupport.waiting();
			for (int j = 0; j < indTimes; j++) {
				if (i == 0 && j == 0) {
					continue;
				}
				SelectInd.doIndClick(indIE, j);
				// click search button
				FINISH = false;
				searchBtn = JobSupport
						.getElement(getDoc().getAll().tags("INPUT"), "src", "jobsearch/images/qs_sch.gif");
				searchBtn.click();
				waitingLoading();
				JobSupport.waiting();

				// parse companies
				ParseCompanyList.parseCompanies();
				// paging
				Paging.doPaging();

				funIE = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "onClick", "openLayer('popupFuntype')");
				indIE = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "onClick", "openLayer('popupIndustry')");
			}
		}

		System.out.println("onDocumentComplete2 getInnerHTML");
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
