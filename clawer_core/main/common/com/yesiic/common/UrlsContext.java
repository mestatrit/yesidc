package com.yesiic.common;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesiic.dao.WebPagesDao;
import com.yesiic.webswith.model.WebPages;

public class UrlsContext {

	private static Log log = LogFactory.getLog(UrlsContext.class);

	protected static List<WebPages> details = new ArrayList<WebPages>();
	protected static List<WebPages> pages = new ArrayList<WebPages>();
	protected static List<WebPages> types = new ArrayList<WebPages>();

	private static final int FETCH_RECORDS = 1000;
	protected static int INIT_DETAILS = 0;
	protected static int INIT_PAGES = 0;
	protected static int INIT_TYPES = 0;

	public static void initTypes(String type) throws ApplicationException {
		INIT_TYPES++;
		types.clear();
		List<WebPages> types = getWPsByTpye(type);
		log.info("init " + type + "[" + INIT_TYPES + "] in 1 level - size:" + types.size());
		if (WebPages.PAGE_TYPES_12.equals(type)) {
			types.addAll(getWPsByTpye(WebPages.PAGE_TYPES_11));
			log.info("init " + type + "[" + INIT_TYPES + "] in  2 level - size:" + types.size());
		}

	}

	public static void initPages(String type) throws ApplicationException {
		INIT_PAGES++;
		pages.clear();
		List<WebPages> pages = getWPsByTpye(type);
		log.info("init " + type + "[" + INIT_PAGES + "] in 1 level - size:" + pages.size());
		if (WebPages.PAGE_PAGES_22.equals(type)) {
			pages.addAll(getWPsByTpye(WebPages.PAGE_PAGES_21));
			log.info("init " + type + "[" + INIT_PAGES + "] in  2 level - size:" + pages.size());
		}

	}

	public static void initDetails(String type) throws ApplicationException {
		INIT_DETAILS++;
		details.clear();
		List<WebPages> details = getWPsByTpye(type);
		log.info("init " + type + "[" + INIT_DETAILS + "] in 1 level - size:" + details.size());
		if (WebPages.PAGE_DETAILS_32.equals(type)) {
			details.addAll(getWPsByTpye(WebPages.PAGE_DETAILS_31));
			log.info("init " + type + "[" + INIT_DETAILS + "] in  2 level - size:" + details.size());
		}

	}

	private static List<WebPages> getWPsByTpye(String type) throws ApplicationException {
		WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
		return webPagesDao.getWebPagesByType(type, WebPages.STATUS_KO, FETCH_RECORDS);
	}

}
