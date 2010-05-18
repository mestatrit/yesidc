package com.yesibc.job51.web.search;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.dao.WebPagesDao;
import com.yesibc.job51.model.WebPages;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LogHandler;

public class SearchPagesEngine extends Thread {

	private static Log log = LogFactory.getLog(SearchPagesEngine.class);

	public final static String companyTag = "#Company#";

	static long l = 0;

	private IBrowserCanvas browser;
	private boolean finish = false;
	private String url;
	private WebPages wp;
	private String title;
	private int index;
	private ProcessContext processContext;

	public SearchPagesEngine(String title, WebPages wp, int index) {
		this.url = wp.getUrl();
		this.index = index;
		this.title = title;
		this.wp = wp;
		processContext = new ProcessContext();
	}

	public void run() {
		if (url == null || "".equals(url)) {
			return;
		}

		browser = JobSupport.initLoading(processContext, title, index);
		onDocumnetComplete();

		try {
			finish = false;
			l = System.currentTimeMillis();

			// File file = new File("C:/Users/Abel/Desktop/1.html");
			// String html = FileUtils.readFileToString(file,"GBK");
			// File f = new File(".");
			// browser.loadHTML(html, f.toURL().toString());

			
			browser.loadURL(url);
			boolean loadedOK = true;

			if (!waitingLoading(index, url)) {
				browser = JobSupport.reLoading(processContext, title, index);
				onDocumnetComplete();
				log.info(processContext.getLogTitle() + "ReStart Loading " + url);
				browser.loadURL(url);
				if (!waitingLoading(index, url)) {
					loadedOK = false;
					ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "Two times refresh and waiting error!");
				}
			}
			
			finish = false;
			log.info(processContext.getLogTitle() + "End Loading " + url + "!Loaded[" + loadedOK + "]Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			ParseCompanyLinks.parseCompanyLinks(processContext);

			if (!ClawerConstants.TEST_DAO) {
				CompanyJobContext.getSearchPagesWP().remove(wp);
				WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
				wp.setStatus(WebPages.STATUS_OK);
				webPagesDao.update(wp);
			}

			log.info(processContext.getLogTitle() + "Parsing [" + browser.getURL() + "] is OK!Time is "
					+ (System.currentTimeMillis() - l));
		} catch (Exception e) {
			log.error(processContext.getLogTitle() + " Error Start!");
			ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " Parsing [" + browser.getURL()
					+ "] is error=SearchCompanyLinksEngine!" + e.getMessage() + "\n HTML contents Start===========\n:"
					+ browser.getDocument().getBody().getOuterHTML() + "HTML contents End===========\n", e);
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
						* ClawerConstants.WAITING_TIME_LOADING + "]s");
				// finish = true;
				WebrendererContext.reFreshContext(index, processContext);
				return false;
			} else {
				LogHandler.debug(processContext.getLogTitle() + " URL[" + url + "] waiting loading……[" + i
						* ClawerConstants.WAITING_TIME_SECONDS + "]s");
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

}
