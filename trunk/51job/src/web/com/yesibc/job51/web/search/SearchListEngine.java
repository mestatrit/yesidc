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

public class SearchListEngine extends Thread {

	private static Log log = LogFactory.getLog(SearchListEngine.class);

	public final static String pageTag = "#Paging#";

	static long l = 0;
	private IBrowserCanvas browser;
	private boolean finish = false;
	private String url;
	private String title;
	private int index;
	private ProcessContext processContext;

	public SearchListEngine(String rid, String url, int index) {
		this.url = url;
		this.index = index;
		this.title = rid;
		processContext = new ProcessContext();
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String[] strs = new String[2];
		strs[0] = CompanyJobContext.getSearchList().get(0);
		strs[1] = CompanyJobContext.getSearchList().get(1);
	}

	public void run() {

		browser = JobSupport.initLoading(processContext, title, index);
		onDocumnetComplete();

		try {
			finish = false;
			l = System.currentTimeMillis();
			browser.loadURL(url);
			boolean loadedOK = true;
			if (!waitingLoading(index, url)) {
				finish = false;
				browser = JobSupport.reLoading(processContext, title, index);
				onDocumnetComplete();
				browser.loadURL(url);
				if (!waitingLoading(index, url)) {
					loadedOK = false;
					ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "Two times refresh and waiting error!");
					return;
				}
			}

			finish = false;
			log.info(processContext.getLogTitle() + "End Loading " + url + "!Loaded[" + loadedOK + "]Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			ParsePagesLinks.parsePagesLinks(processContext);

			CompanyJobContext.getSearchList().remove(url);

			log.info(processContext.getLogTitle() + "Parsing [" + browser.getURL() + "] is OK!Time is "
					+ (System.currentTimeMillis() - l));
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " Parsing [" + browser.getURL()
					+ "] is error=SearchPagesEngine!" + e.getMessage() + "\n HTML contents:"
					+ browser.getDocument().getBody().getOuterHTML(), e);
		} finally {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
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

	public boolean waitingLoading(int index, String url) {
		int i = 0;
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading start!");
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
						* ClawerConstants.WAITING_TIME_SECONDS + "]s");
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

	public ProcessContext getProcessContext() {
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

	public void setTitle(String title) {
		this.title = title;
	}
}
