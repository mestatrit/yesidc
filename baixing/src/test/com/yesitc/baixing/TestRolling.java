package com.yesitc.baixing;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;
import com.yesitc.common.ClawerConstants;
import com.yesitc.common.ErrorHandler;
import com.yesitc.common.LogHandler;
import com.yesitc.common.ProcessContext;
import com.yesitc.common.WebRenderEntity;
import com.yesitc.common.WebrendererContext;


public class TestRolling {

	static boolean loaded = false;
	static IBrowserCanvas browser = null;
	static ProcessContext processContext = null;
	static String url = "http://search.51job.com/job/41155284,c.html";

	/**
	 * @param args
	 * @throws ApplicationException
	 */
	public static void main(String[] args) throws ApplicationException {
		loadUrl();


	}

	private static void loadUrl() {
		ClawerConstants.THREADS_NUMBER = 1;
		processContext = new ProcessContext();
		WebRenderEntity en = WebrendererContext.WEBRENDER_ENTITIES.get(1);

		browser = en.getBrowser();
		onDocumnetComplete();

		processContext.setBrowser(browser);
		processContext.setLogTitle("Test");


		browser.loadURL(url);

		waitingLoading(url);
	}

	private static void onDocumnetComplete() {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				loaded = true;
			}
		});
	}

	public static void waitingLoading(String url) {
		int i = 0;
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "]  waiting loading start!");
		while (!loaded) {
			i++;
			try {
				Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
			} catch (InterruptedException e) {
				ErrorHandler.error(processContext.getLogTitle() + " URL[" + url + "] :", e);
			}
			if (i > 12) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url
						+ "] waiting loading to long and exit to waiting now. Time is[" + i * 10
						+ "]s");
				break;
			} else {
				LogHandler.info(processContext.getLogTitle() + " URL[" + url
						+ "] waiting loading……[" + i * 10 + "]s");
			}
		}
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] SearchCompanyEngine waiting loading end!["
				+ i * 10 + "]s");
	}
}