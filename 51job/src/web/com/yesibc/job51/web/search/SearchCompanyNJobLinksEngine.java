package com.yesibc.job51.web.search;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LogHandler;

public class SearchCompanyNJobLinksEngine extends Thread {

	private static Log log = LogFactory.getLog(SearchCompanyNJobLinksEngine.class);

	public final static String jobTag = "#Job#";

	static long l = 0;
	private IBrowserCanvas browser;
	private boolean finish = false;
	private String[] urls;
	private String crUrl;
	private String title;
	private int index;
	private ProcessContext processContext;

	public SearchCompanyNJobLinksEngine(String rid, String[] urls, int index) {
		this.urls = urls;
		this.index = index;
		this.title = JobSupport.getCrIndex2Title(jobTag + rid, 1);
	}

	public void run() {
		int i = 0;
		for (String url : urls) {

			if (url == null || "".equals(url)) {
				continue;
			}
			if (ClawerConstants.TEST_WEB) {
				if (i == ClawerConstants.TEST_WEB_NUM) {
					break;
				}
			}
			setCrUrl(url);

			i++;
			processContext = new ProcessContext();
			processContext.setSearchJobEngine(this);
			browser = JobSupport.initLoading(processContext, title, index, i, false);
			onDocumnetComplete();

			try {
				finish = false;
				l = System.currentTimeMillis();
				log.info(processContext.getLogTitle() + "Start Loading " + url);
				browser.loadURL(url);
				boolean loadedOK = true;
				if (!waitingLoading(index, url)) {
					browser = JobSupport.initLoading(processContext, title, index, i, false);
					onDocumnetComplete();
					log.info(processContext.getLogTitle() + "ReStart Loading error1 " + url);
					browser.loadURL(url);
					if (!waitingLoading(index, url)) {
						loadedOK = false;
						ErrorHandler.errorLogAndMail(processContext.getLogTitle()
								+ "Two times refresh and waiting error!");
					}
				}
				log.info(processContext.getLogTitle() + "End Loading " + url + "!Loaded[" + loadedOK + "]Time is "
						+ (System.currentTimeMillis() - l));
				l = System.currentTimeMillis();

				WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
				ParseCompanyNJobLinks.parseJobLinks(index, processContext);

				log.info(processContext.getLogTitle() + "Parsing [" + browser.getURL() + "] is OK!Time is "
						+ (System.currentTimeMillis() - l));
			} catch (Exception e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " Parsing [" + browser.getURL()
						+ "] is error=SearchCompanyNJobLinksEngine!" + e.getMessage() + "\n HTML contents:"
						+ browser.getDocument().getBody().getOuterHTML(), e);
			} finally {
				WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
			}
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
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading start!");
		while (!finish) {
			i++;
			try {
				Thread.sleep(10000);
			} catch (InterruptedException e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url + "] :", e);
			}
			if (i > 12) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "URL[" + url
						+ "]waiting loading to long and exit to waiting now. Time is[" + i * 10 + "]s");
				finish = true;
				WebrendererContext.reFreshContext(index, processContext);
				return false;
			} else {
				LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading……[" + i * 10 + "]s");
			}
		}
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading end![" + i * 10 + "]s");
		return true;
	}

	public boolean isFinish() {
		return finish;
	}

	public void setFinish(boolean finish) {
		this.finish = finish;
	}

	public ProcessContext getProcessContext() {
		return processContext;
	}

	public String getTitle() {
		return title;
	}

	public void setBrowser(IBrowserCanvas browser) {
		this.browser = browser;
	}

	public String getCrUrl() {
		return crUrl;
	}

	public void setCrUrl(String crUrl) {
		this.crUrl = crUrl;
	}
}