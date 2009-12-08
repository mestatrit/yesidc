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

public class SearchCompanyLinksEngine extends Thread {

	private static Log log = LogFactory.getLog(SearchCompanyLinksEngine.class);

	public final static String companyTag = "#Company#";

	static long l = 0;

	private IBrowserCanvas browser;
	private boolean finish = false;
	private String rid;
	private String[] urls;
	private ProcessContext processContext;

	public SearchCompanyLinksEngine(String rid, String[] urls, int index) {
		this.rid = "[" + String.valueOf(rid) + "]";
		this.urls = urls;
		finish = false;
		browser = WebrendererContext.WEBRENDER_ENTITIES.get(index).getBrowser();
		onDocumnetComplete();
		processContext = setProcessContext();
		WebrendererContext.WEBRENDER_ENTITIES.get(index).getFrame().setTitle(
				processContext.getLogTitle());
	}

	private ProcessContext setProcessContext() {
		ProcessContext processContext = new ProcessContext();
		processContext.setBrowser(browser);
		processContext.setLogTitle(rid + companyTag);
		return processContext;
	}

	public void run() {
		int i = 0;
		for (String url : urls) {
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
				finish = false;
				l = System.currentTimeMillis();
				browser.loadURL(url);
				waitingLoading();
				log.info(processContext.getLogTitle() + "Load " + url
						+ " complete OK!Time is "
						+ (System.currentTimeMillis() - l));
				l = System.currentTimeMillis();

				ParseCompanyLinks.parseCompanyLinks(processContext);

				log.info(processContext.getLogTitle() + "[" + i + "]Parsing ["
						+ browser.getURL() + "] is OK!Time is "
						+ (System.currentTimeMillis() - l));
			} catch (Exception e) {
				CompanyJobContext.LOG_MANUAL.error(processContext.getLogTitle()
						+ "[" + i + "]Parsing [" + browser.getURL()
						+ "] is error=SearchCompanyEngine!" + e.getMessage()
						+ "\n HTML contents:"
						+ browser.getDocument().getBody().getOuterHTML(), e);
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
		LogHandler.info(rid + "SearchCompanyEngine waiting loading start!");
		while (!finish) {
			i++;
			try {
				Thread.sleep(10000);
			} catch (InterruptedException e) {
				ErrorHandler.error(rid + "SearchCompanyEngine:", e);
			}
			LogHandler.info(rid + "SearchCompanyEngine waiting loading……[" + i
					* 10 + "]s");
		}
		LogHandler.info(rid + "SearchCompanyEngine waiting loading end![" + i
				* 10 + "]s");
	}

	public ProcessContext getProcessContext() {
		return processContext;
	}

}
