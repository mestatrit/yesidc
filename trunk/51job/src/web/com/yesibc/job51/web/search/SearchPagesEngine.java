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

public class SearchPagesEngine extends Thread {

	private static Log log = LogFactory.getLog(SearchPagesEngine.class);

	public final static String pageTag = "#Paging#";

	static long l = 0;
	private IBrowserCanvas browser;
	private boolean finish = false;
	private String rid;
	private String[] urls;
	private int index;
	private ProcessContext processContext;

	public SearchPagesEngine(String rid, String[] urls, int index) {
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
		processContext.setLogTitle(rid + pageTag);
		return processContext;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String[] strs = new String[2];
		strs[0] = CompanyJobContext.getSearchResultUrls().get(0);
		strs[1] = CompanyJobContext.getSearchResultUrls().get(1);
		SearchPagesEngine sje = new SearchPagesEngine(String.valueOf(System
				.currentTimeMillis()), strs, 0);
		sje.run();
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

				finish = false;
				l = System.currentTimeMillis();
				browser.loadURL(url);
				waitingLoading();
				log.info(processContext.getLogTitle() + "Load " + url
						+ " complete OK!Time is "
						+ (System.currentTimeMillis() - l));
				l = System.currentTimeMillis();

				ParsePagesLinks.parsePagesLinks(processContext);

				log.info(rid + pageTag + "[" + i + "]Parsing ["
						+ browser.getURL() + "] is OK!Time is "
						+ (System.currentTimeMillis() - l));
			} catch (Exception e) {
				CompanyJobContext.LOG_MANUAL.error(processContext.getLogTitle()
						+ "[" + i + "]Parsing [" + browser.getURL()
						+ "] is error=SearchPagesEngine!" + e.getMessage()
						+ "\n HTML contents:"
						+ browser.getDocument().getBody().getOuterHTML(), e);
			} finally {
				WebrendererContext.WEBRENDER_ENTITIES.get(index)
						.setLoaded(true);
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
		LogHandler.info(rid + "SearchPagesEngine waiting loading start!");
		while (!finish) {
			i++;
			try {
				Thread.sleep(10000);
			} catch (InterruptedException e) {
				ErrorHandler.error(rid + "SearchPagesEngine:", e);
			}
			LogHandler.info(rid + "SearchPagesEngine waiting loading……[" + i
					* 10 + "]s");
		}
		LogHandler.info(rid + "SearchPagesEngine waiting loading end![" + i
				* 10 + "]s");
	}

	public ProcessContext getProcessContext() {
		return processContext;
	}

}
