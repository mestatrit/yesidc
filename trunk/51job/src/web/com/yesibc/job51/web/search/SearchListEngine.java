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

public class SearchListEngine extends Thread {

	private static Log log = LogFactory.getLog(SearchListEngine.class);

	public final static String pageTag = "#SearchList#";

	static long l = 0;
	private Map<String, String> finish;
	private String url;
	private String title;
	private int index;
	private ProcessContext processContext;
	private WebPages wp;

	public SearchListEngine(String title, WebPages wp, int index) {
		this.url = wp.getUrl();
		this.index = index;
		this.title = title;
		processContext = new ProcessContext();
		processContext.setUrl(url);
		finish = new HashMap<String, String>();
		this.wp = wp;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

	public void run() {

		BrowserSupport.initLoading(processContext, title, index);
		BrowserSupport.onDocumnetComplete(processContext.getBrowser(), finish);

		try {
			processContext.getBrowser().loadURL(url);
			BrowserSupport.waitingLoading(processContext, index, finish);

			l = System.currentTimeMillis();

			ParseSearchList.parseSearchList(processContext);
			log.info(processContext.getLogTitle() + " ParseSearchList OK.Time is " + (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			wp.setStatus(WebPages.STATUS_OK);
			wp.setUpdateDate(new Date());
			if (!ClawerConstants.TEST_DAO) {
				if (CompanyJobContext.DB_OR_REQUEST_VAL.equals(CompanyJobContext.DB_OR_REQUEST)) {
					WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
					webPagesDao.update(wp);
					log.info(processContext.getLogTitle() + " Update search list status to DB is OK!Time is "
							+ (System.currentTimeMillis() - l));
				}
			}

		} catch (Exception e) {
			ErrorHandler.handleError(processContext.getBrowser(), processContext, e);
		} finally {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
			// log.info("=========finish.get(BrowserSupport.WAIT_TAG_KEY)=========="+finish.get(BrowserSupport.WAIT_TAG_KEY));
		}

	}

	public IBrowserCanvas getBrowser() {
		return BrowserFactory.spawnMozilla();
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
