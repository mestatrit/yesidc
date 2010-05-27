package com.yesibc.job51.test.web;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.CompanyJobContext;
import com.yesibc.job51.web.search.ProcessContext;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.LogHandler;
import com.yesibc.job51.web.support.WebRenderEntity;

public class TestCompany {

	static boolean loaded = false;
	static IBrowserCanvas browser = null;
	static ProcessContext processContext = null;

	/**
	 * @param args
	 * @throws ApplicationException 
	 */
	public static void main(String[] args) throws ApplicationException {
		processContext = new ProcessContext();
		WebRenderEntity en = WebrendererContext.WEBRENDER_ENTITIES.get(1);

		browser = en.getBrowser();
		onDocumnetComplete();

		processContext.setBrowser(browser);
		processContext.setLogTitle("Test");

		String url = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=1600,1700,5300&industrytype=40&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=1&fromType=14";

		browser.loadURL(url);

		waitingLoading(url);

		CompanyJobContext.putCompanyLinks2Context(processContext);

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
