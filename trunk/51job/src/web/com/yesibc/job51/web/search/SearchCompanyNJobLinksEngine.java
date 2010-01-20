package com.yesibc.job51.web.search;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.LogHandler;

public class SearchCompanyNJobLinksEngine extends Thread {

	private static Log log = LogFactory
			.getLog(SearchCompanyNJobLinksEngine.class);

	public final static String jobTag = "#Job#";

	static long l = 0;
	private IBrowserCanvas browser;
	private boolean finish = false;
	private String rid;
	private String[] urls;
	private int index;
	private ProcessContext processContext;

	public SearchCompanyNJobLinksEngine(String rid, String[] urls, int index) {
		this.rid = "[" + String.valueOf(rid) + "]";
		this.urls = urls;
		this.index = index;
		browser = WebrendererContext.WEBRENDER_ENTITIES.get(index).getBrowser();
		onDocumnetComplete();
		processContext = setProcessContext();
		if (ClawerConstants.SHOW_FRAME) {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).getFrame()
					.setTitle(processContext.getLogTitle());
		}
	}

	private ProcessContext setProcessContext() {
		ProcessContext processContext = new ProcessContext();
		processContext.setBrowser(browser);
		processContext.setLogTitle(rid + jobTag);
		processContext.setSearchJobEngine(this);
		return processContext;
	}

	public void run() {
		int i = 0;
		for (String url : urls) {
			CompanyJobContext.doCount(processContext.getLogTitle());
			finish = false;
			WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(finish);
			try {
				if (url == null || "".equals(url)) {
					continue;
				}
				i++;
				if (ClawerConstants.TEST_WEB) {
					if (i == ClawerConstants.TEST_WEB_NUM) {
						break;
					}
				}
				l = System.currentTimeMillis();
				browser.loadURL(url);
				waitingLoading();
				log.info(processContext.getLogTitle() + "Load " + url
						+ " complete OK!Time is "
						+ (System.currentTimeMillis() - l));
				l = System.currentTimeMillis();

				ParseCompanyNJobLinks.parseJobLinks(processContext);

				log.info(processContext.getLogTitle() + "[" + i + "]Parsing ["
						+ browser.getURL() + "] is OK!Time is "
						+ (System.currentTimeMillis() - l));
			} catch (Exception e) {
				CompanyJobContext.LOG_MANUAL.error(processContext.getLogTitle()
						+ "[" + i + "]Parsing [" + browser.getURL()
						+ "] is error=SerchJobEngine!" + e.getMessage()
						+ "\n HTML contents:"
						+ browser.getDocument().getBody().getOuterHTML(), e);
			}finally{
				WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
			}
		}

	}

	public IBrowserCanvas getBrowser() {
		return BrowserFactory.spawnMozilla();
	}

	private void onDocumnetComplete() {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				finish = true;
			}
		});
	}

	public void waitingLoading() {
		int i = 0;
		LogHandler.info(rid + "SearchJobEngine waiting loading start!");
		while (!finish) {
			i++;
			try {
				Thread.sleep(10000);
			} catch (InterruptedException e) {
				ErrorHandler.error(rid + "SearchJobEngine:", e);
			}
			LogHandler.info(rid + "SearchJobEngine waiting loading……[" + i * 10
					+ "]s");
		}
		LogHandler.info(rid + "SearchJobEngine waiting loading end![" + i * 10
				+ "]s");
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

}
