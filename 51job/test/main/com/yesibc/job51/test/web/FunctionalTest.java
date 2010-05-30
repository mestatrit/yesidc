package com.yesibc.job51.test.web;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.ProcessContext;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.LocateCompanyInfo;
import com.yesibc.job51.web.support.LogHandler;
import com.yesibc.job51.web.support.WebRenderEntity;

public class FunctionalTest extends SearchTest {
	static boolean loaded = false;
	static IBrowserCanvas browser = null;
	static ProcessContext processContext = null;

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			String url = "file:///C:/Users/Abel/Desktop/test.html";

			processContext = new ProcessContext();
			WebRenderEntity en = WebrendererContext.WEBRENDER_ENTITIES.get(1);

			browser = en.getBrowser();
			onDocumnetComplete();

			processContext.setBrowser(browser);
			processContext.setLogTitle("Test");

			browser.loadURL(url);

			waitingLoading(url);

			int i = LocateCompanyInfo.validationTableOfJobList(processContext);
			System.out.println("i===" + i);
		} catch (Exception e) {
			e.printStackTrace();
		}

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
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] SearchCompanyEngine waiting loading start!");
		while (!loaded) {
			i++;
			try {
				Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
			} catch (InterruptedException e) {
				ErrorHandler.error(processContext.getLogTitle() + " URL[" + url + "] SearchCompanyEngine:", e);
			}
			if (i > 12) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url
						+ "] SearchCompanyEngine waiting loading to long and exit to waiting now. Time is[" + i * 10
						+ "]s");
				break;
			} else {
				LogHandler.info(processContext.getLogTitle() + " URL[" + url
						+ "] SearchCompanyEngine waiting loading……[" + i * 10 + "]s");
			}
		}
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] SearchCompanyEngine waiting loading end!["
				+ i * 10 + "]s");
	}
}
