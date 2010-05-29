package com.yesibc.job51.test.web;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.components.webrenderer.WebrendererSupport;
import com.yesibc.core.utils.FileUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.web.search.ProcessContext;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.LocateCompanyInfo;
import com.yesibc.job51.web.support.LogHandler;

public class TestPutJobsURL2Context {

	IBrowserCanvas browser = null;
	ProcessContext processContext = new ProcessContext();

	public static void main(String[] args) {
		for (int i = 0; i < 20; i++) {
			TestPutJobsURL2Context t = new TestPutJobsURL2Context();
			try {
				t.check1();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * @param args
	 * @throws Exception
	 */
	public void check() throws Exception {
		String encode = null;
		String filePath = "C:/Users/Abel/Desktop/error5.html";

		String html = FileUtils.readByEncode(filePath, encode);
		processContext.setLogTitle("llll");
		browser = WebrendererContext.WEBRENDER_ENTITIES.get(0).getBrowser();
		processContext.setBrowser(browser);
		File f = new File(".");
		browser.loadHTML(html, f.toURI().toString());

		Map<String, String> finish = new HashMap<String, String>();
		onDocumnetComplete(finish);
		waitingLoading(0, "111", finish);

		List<IElement> elements = WebrendererSupport.getElements(processContext.getBrowser().getDocument().getAll(),
				"A", "href", ClawerConstants.JOB_URL_PREFIX);

		// http\://search.51job.com/job/
		System.out.println(elements.size());
		System.out.println("total=" + LocateCompanyInfo.getTotal(processContext));
		List<String> jobsURL = new ArrayList<String>();
		for (IElement ie : elements) {
			String url = ClawerUtils.removeSpace(ie.getAttribute("href", 0));

			if (jobsURL.contains(url)) {
				continue;
			} else {
				jobsURL.add(url);
			}

			String name = StringUtils.parseOutHTML(ClawerUtils.removeSpace(ie.getInnerHTML()));
			System.out.println(name);
		}
	}

	/**
	 * @param args
	 * @throws Exception
	 */
	public void check1() throws Exception {
		String html = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=4200,4300,0300&industrytype=55&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14";

		processContext.setLogTitle("222");
		browser = WebrendererContext.WEBRENDER_ENTITIES.get(0).getBrowser();
		processContext.setBrowser(browser);

		browser.loadURL(html);

		Map<String, String> finish = new HashMap<String, String>();
		onDocumnetComplete(finish);
		System.out.println("finish=" + finish.get("1"));
		waitingLoading(0, "222", finish);
		System.out.println("finish=" + finish.get("1"));
		System.out.println("total=" + LocateCompanyInfo.getTotal(processContext));

		List<IElement> elements = WebrendererSupport.getElements(processContext.getBrowser().getDocument().getAll(),
				"A", "href", ClawerConstants.JOB_URL_PREFIX);

		// http\://search.51job.com/job/
		System.out.println(elements.size());
		List<String> jobsURL = new ArrayList<String>();
		for (IElement ie : elements) {
			String url = ClawerUtils.removeSpace(ie.getAttribute("href", 0));

			if (jobsURL.contains(url)) {
				continue;
			} else {
				jobsURL.add(url);
			}

			String name = StringUtils.parseOutHTML(ClawerUtils.removeSpace(ie.getInnerHTML()));
			System.out.println(name);
		}
	}

	public boolean waitingLoading(int index, String url, Map<String, String> finish) {
		int i = 0;
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading start!");
		while (!finish.containsKey("1")) {
			i++;
			try {
				Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
			} catch (InterruptedException e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url + "] :", e);
			}
			if (i > 15) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url
						+ "] waiting loading to long and exit to waiting now. Time is[" + i
						* ClawerConstants.WAITING_TIME_SECONDS + "]s");
				// finish = true;
				WebrendererContext.reFreshContext4Waiting(index, processContext);
				return false;
			} else {
				LogHandler.debug(processContext.getLogTitle() + " URL[" + url + "] waiting loading……[" + i
						* ClawerConstants.WAITING_TIME_LOADING + "]s");
			}
		}
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading end![" + i * 10 + "]s");
		return true;

	}

	private void onDocumnetComplete(final Map<String, String> finish) {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				finish.put("1", "1");
			}
		});
	}

}
