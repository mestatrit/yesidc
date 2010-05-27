package com.yesibc.job51.web.validation;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LogHandler;

public class ValidateCompanyDetailAndJobPaging {

	private static Log log = LogFactory.getLog(ValidateCompanyDetailAndJobPaging.class);

	public final static String companyTag = "#Company#";

	static long l = 0;

	private IBrowserCanvas browser;
	private boolean finish = false;
	private String url;
	private String title;
	private int index;
	private TestProcessContext processContext;
	private Company com;

	public ValidateCompanyDetailAndJobPaging(String title, Company com, int index) {
		this.com = com;
		url = com.getUrl();
		this.index = index;
		this.title = title;
		processContext = new TestProcessContext();
	}

	public void validateCompanyDetailAndJobPaging() throws ApplicationException {
		run();
	}

	public void run() throws ApplicationException {
		try {
			browser = JobSupport.initLoading(processContext, title, 0);
			onDocumnetComplete();
			finish = false;
			l = System.currentTimeMillis();
			log.info(processContext.getLogTitle() + "Start Loading " + url);

			browser.loadURL(url);
			boolean loadedOK = true;

			if (!waitingLoading(index, url)) {
				throw new ApplicationException("ValidateCompanyDetailAndJobPaging waiting error:" + url);
			}
			
			finish = false;

			log.info(processContext.getLogTitle() + "End Loading " + url + "!Loaded[" + loadedOK + "]Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			// 因为还有子窗口的工作列表要翻页.
			WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
			ParseCompanyDetailSupport.parseJobLinks(index, com, processContext);

			log.info(processContext.getLogTitle() + "Parsing [" + browser.getURL() + "] is OK!Time is "
					+ (System.currentTimeMillis() - l));
		} finally {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
		}
	}

	public IBrowserCanvas getBrowser() {
		return BrowserFactory.spawnMozilla();
	}

	public void onDocumnetComplete() {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				finish = true;
			}
		});
	}

	public boolean waitingLoading(int index, String url) {
		int i = 0;
		LogHandler.debug(processContext.getLogTitle() + " URL[" + url + "] waiting loading start!");
		while (!finish) {
			i++;
			try {
				Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
			} catch (InterruptedException e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url + "] :", e);
			}
			if (i > 15) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url
						+ "] waiting loading to long and exit to waiting now. Time is[" + i
						* ClawerConstants.WAITING_TIME_LOADING + "]s");
				// finish = true;
				WebrendererContext.reFreshContext(index, processContext);
				return false;
			} else {
				LogHandler.debug(processContext.getLogTitle() + " URL[" + url + "] waiting loading……[" + i
						* ClawerConstants.WAITING_TIME_LOADING + "]s");
			}
		}
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading end![" + i * 10 + "]s");
		return true;
	}

	public TestProcessContext getProcessContext() {
		return processContext;
	}

	public String getTitle() {
		return title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public boolean isFinish() {
		return finish;
	}

	public void setFinish(boolean finish) {
		this.finish = finish;
	}

	public void setBrowser(IBrowserCanvas browser) {
		this.browser = browser;
	}

}
