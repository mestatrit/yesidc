package com.yesibc.job51.web.search;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.dao.WebPagesDao;
import com.yesibc.job51.model.WebPages;
import com.yesibc.job51.web.support.BrowserSupport;
import com.yesibc.job51.web.support.ErrorHandler;

public class SearchJobDetailEngine extends Thread {

	private static Log log = LogFactory.getLog(SearchJobDetailEngine.class);

	public final static String jobTag = "#Job Detail#";

	static long l = 0;

	private Map<String, String> finish;
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
		processContext.setUrl(url);
		finish = new HashMap<String, String>();
	}

	public void run() {
		if (url == null || "".equals(url)) {
			return;
		}

		BrowserSupport.initLoading(processContext, title, index);
		BrowserSupport.onDocumnetComplete(processContext.getBrowser(), finish);

		try {
			processContext.getBrowser().loadURL(url);
			BrowserSupport.waitingLoading(processContext, index, finish);
			l = System.currentTimeMillis();

			ParseJobdetail.parseJobdetail(processContext);
			log.info(processContext.getLogTitle() + " ParseJobdetail OK.Time is " + (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			wp.setStatus(WebPages.STATUS_OK);
			wp.setUpdateDate(new Date());
			if (!ClawerConstants.TEST_DAO) {
				WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
				webPagesDao.update(wp);
				log.info(processContext.getLogTitle() + " Update job url status to DB is OK!Time is "
						+ (System.currentTimeMillis() - l));
			}
		} catch (Exception e) {
			ErrorHandler.handleError(processContext, e);
		} finally {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
		}
	}

	public IBrowserCanvas getBrowser() {
		return BrowserFactory.spawnMozilla();
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
