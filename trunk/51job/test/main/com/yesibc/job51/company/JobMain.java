package com.yesibc.job51.company;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;

public class JobMain {

	public final static String URL_SEARCH = "http://search.51job.com/jobsearch/advance_search.php";
	public final static String URL_SEARCH_BAK = "file:///D:/yesibc/51job/51JOB/jobsearch/advance_search.html";
	public static String FUNTAG = "popupFuntype";
	public static String INDTAG = "popupIndustry";
	public static int SELECT_TIMES = 1;
	public static long WAITING = 1000;

	public static String[] FUN_ARRAY = { "2400", "0100" ,"2500"};
	public static String[] IND_ARRAY = { "01", "37", "38" };
	public static String FUN_ID_NAME = "pcode";
	public static String FUNSUB_ID_NAME = "id";
	public static String FUNSUB_ID_VAL_CANCEL = "sfchx";
	public static String FUNSUB_ID_VAL_NULL = "afchx";

	public static String IND_ID_NAME = "id";
	public static String IND_ID_VAL_CANCEL = "sichx";
	public static String IND_ID_VAL_NULL = "aichx";

	public static IBrowserCanvas BROWSER;
	public static boolean FINISH = false;

	private static int funTimes = FUN_ARRAY.length % SELECT_TIMES == 0 ? FUN_ARRAY.length / SELECT_TIMES : (FUN_ARRAY.length / SELECT_TIMES + 1);
	private static int indTimes = IND_ARRAY.length % SELECT_TIMES == 0 ? IND_ARRAY.length / SELECT_TIMES : (IND_ARRAY.length / SELECT_TIMES + 1);

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		BrowserFactory.setLicenseData("30dtrial", "6KR60ASK2KG378HCEBB128NP");
		BROWSER = BrowserFactory.spawnMozilla();

		JobSupport.addListener();

		BROWSER.loadURL(URL_SEARCH);

		showFrame();

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

		funIE = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "onClick", "openLayer('popupFuntype')");
		indIE = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "onClick", "openLayer('popupIndustry')");
		// result page.
		for (int i = 1; i < funTimes; i++) {
			SelectFun.doFunClick(funIE, i);
			JobSupport.waiting();
			for (int j = 1; j < indTimes; j++) {
				SelectInd.doIndClick(indIE, j);
			}
			JobSupport.waiting();
			// click search button
			FINISH = false;
			searchBtn = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "src",
					"jobsearch/images/qs_sch.gif");
			searchBtn.click();
			waitingLoading();
		}

		System.out.println("onDocumentComplete2 getInnerHTML");
	}

	private static void showFrame() {
		JFrame frame = new JFrame("Advanced DOM Example");
		JPanel panel = new JPanel(new BorderLayout());
		panel.add(BorderLayout.CENTER, BROWSER.getComponent());
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setContentPane(panel);
		frame.setSize(640, 480);
		frame.setVisible(true);
	}

	private static void waitingLoading() {
		int i = 0;
		while (!FINISH) {
			i++;
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			System.out.println("waiting loading¡­¡­[" + i * 0.5 + "]s");
		}
	}

	public static IDocument getDoc() {
		return BROWSER.getDocument();
	}

}
