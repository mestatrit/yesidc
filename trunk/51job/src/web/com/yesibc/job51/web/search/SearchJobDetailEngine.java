package com.yesibc.job51.web.search;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.cetelem.track.AlertUtils;

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

public class SearchJobDetailEngine extends Thread {

	private static Log log = LogFactory.getLog(SearchJobDetailEngine.class);

	public final static String jobTag = "#Job Detail#";

	static long l = 0;

	private IBrowserCanvas browser;
	private boolean finish = false;
	private String url;
	private String title;
	private int index;
	private ProcessContext processContext;
	private WebPages wp;

	public SearchJobDetailEngine(String title, WebPages wp, int index) {
		this.url = wp.getUrl();
		this.index = index;
		this.wp = wp;
		this.title = title;
		processContext = new ProcessContext();
	}

	public void run() {
		if (url == null || "".equals(url)) {
			return;
		}

		processContext = new ProcessContext();
		browser = JobSupport.initLoading(processContext, title, index);
		onDocumnetComplete();

		try {
			finish = false;
			l = System.currentTimeMillis();
			log.info(processContext.getLogTitle() + "Start Loading " + url);
			browser.loadURL(url);
			boolean loadedOK = true;
			if (!waitingLoading(index, url)) {
				browser = JobSupport.reLoading(processContext, title, index);
				onDocumnetComplete();
				log.info(processContext.getLogTitle() + "ReStart Loading error1 " + url);
				browser.loadURL(url);
				if (!waitingLoading(index, url)) {
					loadedOK = false;
					ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "Two times refresh and waiting error!");
				}
			}

			log.info(processContext.getLogTitle() + "End Loading " + url + "!Loaded[" + loadedOK + "]Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			ParseJobdetail.parseJobdetail(processContext);

			if (!ClawerConstants.TEST_DAO) {
				CompanyJobContext.getJobsWP().remove(wp);
				WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
				wp.setStatus(WebPages.STATUS_OK);
				wp.setUpdateDate(new Date());
				webPagesDao.update(wp);
			}

			log.info(processContext.getLogTitle() + "Parsing [" + browser.getURL() + "] is OK!Time is "
					+ (System.currentTimeMillis() - l));
		} catch (Exception e) {
			String str = AlertUtils.getErrString(e);
			log.error(processContext.getLogTitle() + " Error Start!\n Loaded[" + finish + "]\n" + str);
			ErrorHandler.error(processContext.getLogTitle() + " Parsing [" + browser.getURL()
					+ "] is error=SearchJobDetailEngine!" + e.getMessage() + "\n HTML contents Start===========\n:"
					+ browser.getDocument().getBody().getOuterHTML() + "\n HTML contents End===========\n" + str);
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
				Thread.sleep(10000);
			} catch (InterruptedException e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url + "] :", e);
			}
			if (i > 12) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url
						+ "] waiting loading to long and exit to waiting now. Time is[" + i * 10 + "]s");
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

	public static void main(String[] args) {
		// String[] urls = { "http://search.51job.com/job/38792100,c.html" };
		// SearchJobDetailEngine sce = new SearchJobDetailEngine("abc" + "," +
		// urls.toString(), urls, 0);
		// sce.start();

	}

	public static String getJobtag() {
		return jobTag;
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
