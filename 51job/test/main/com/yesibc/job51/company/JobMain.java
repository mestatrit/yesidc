package com.yesibc.job51.company;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.PromptEvent;
import com.webrenderer.swing.event.PromptListener;

public class JobMain {

	public final static String URL_SEARCH = "http://search.51job.com/jobsearch/advance_search.php";
	public final static String URL_SEARCH_BAK = "file:///D:/yesibc/51job/51JOB/jobsearch/advance_search.html";
	public static String FUNTAG = "popupFuntype";
	public static String INDTAG = "popupIndustry";
	public static int SELECT_TIMES = 5;
	public static long WAITING = 1000;

	public static String[] FUN_ARRAY = { "2400", "0100" };
	public static String[] IND_ARRAY = { "01", "37" };
	public static String FUN_ID_NAME = "pcode";
	public static String FUNSUB_ID_NAME = "id";
	public static String FUNSUB_ID_VAL_CANCEL = "sfchx";
	public static String FUNSUB_ID_VAL_NULL = "afchx";

	public static String IND_ID_NAME = "id";
	public static String IND_ID_VAL_CANCEL = "sichxs";
	public static String IND_ID_VAL_NULL = "aichx";

	public static IBrowserCanvas BROWSER;
	public static boolean FINISH = false;

	private static int funTimes = FUN_ARRAY.length % 5 == 0 ? FUN_ARRAY.length / 5 : (FUN_ARRAY.length / 5 + 1);
	private static int indTimes = IND_ARRAY.length % 5 == 0 ? IND_ARRAY.length / 5 : (IND_ARRAY.length / 5 + 1);

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		BrowserFactory.setLicenseData("30dtrial", "6KR60ASK2KG378HCEBB128NP");
		BROWSER = BrowserFactory.spawnMozilla();
		BROWSER.addPromptListener(new PromptListener() {
			// The onPromptDialog method is fired whenever the browser
			// wants to show a dialog. Here we have the option
			// of stopping the dialog from showing.
			public void onPromptDialog(PromptEvent e) {
				// Print out some info about the event we got
				System.out.println("We got a Dialog with type:" + e.getDialogType());
				System.out.println("Title: " + e.getDialogTitle());
				System.out.println("Text: " + e.getDialogText());

				e.setButtonResult(PromptEvent.BUTTON_OK);
				e.setButtonResult(PromptEvent.BUTTON_YES);
			}
		});

		JobSupport.onDocumentComplete(BROWSER);
		BROWSER.loadURL(URL_SEARCH);

		showFrame();

		waitingLoading();

		IElement[] ies = JobSupport.locateButton();

		for (int i = 0; i < funTimes; i++) {
			SelectFun.doFunClick(ies[0], i);
			JobSupport.waiting();
			for (int j = 0; j < indTimes; j++) {
				SelectInd.doIndClick(ies[1], j);
			}
			JobSupport.waiting();
		}

		// click search button
		IElement searchBtn = JobSupport.getElement(getDoc().getAll().tags("INPUT"), "src",
				"jobsearch/images/btn_search");
		searchBtn.click();

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
