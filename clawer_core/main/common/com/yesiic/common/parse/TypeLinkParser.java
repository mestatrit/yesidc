package com.yesiic.common.parse;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ProcessContext;
import com.yesiic.webswith.model.WebPages;

public abstract class TypeLinkParser extends AbstractParser implements Parser {

	private static Log log = LogFactory.getLog(TypeLinkParser.class);

	public void parse(ProcessContext processContext) throws ApplicationException {

		prepareParse(processContext);

		int page = parsing(processContext);

		if (!ClawerConstants.TEST_DAO && processContext.getUrls() != null && !processContext.getUrls().isEmpty()) {
			save2DB(processContext);
		}

		finish.clear();

		if (page > 1) {
			log.info(processContext.getLogTitle() + " paging start - " + page);
			getNewContext(processContext, page, getPageTag());
			parse(processContext);
			log.info(processContext.getLogTitle() + " paging end - " + page);
		} else {
			afterParse(processContext);
		}
	}

	protected void save2DB(ProcessContext processContext) {
		// webPagesDao.saveUrls(processContext.getUrls(),
		// WebPages.PAGE_PAGES_21, processContext.getWp().getRequestId());
		Date now = new Date();
		for (String url : processContext.getUrls()) {
			WebPages wp = new WebPages();
			wp.setCreateDate(now);
			wp.setPageType(WebPages.PAGE_PAGES_21);
			wp.setRequestId(processContext.getRequestId());
			wp.setStatus(WebPages.STATUS_KO);
			wp.setUpdateDate(now);
			wp.setUrl(url);
			try {
				webPagesDao.save(wp);
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
	}

	protected abstract String getPageTag();

	private void getNewContext(ProcessContext processContext, int page, String tag) {
		String url = processContext.getWp().getUrl();
		if (url.indexOf(tag) > -1) {
			int temp = getPageFromUrl(url, tag);
			url = url.replace(String.valueOf(temp), String.valueOf(page));
		} else {
			if (url.indexOf("?") > -1) {
				url = url + "&" + tag + page;
			} else {
				url = url + "?" + tag + page;
			}
		}
		processContext.getWp().setUrl(url);
	}

	public static int getPageFromUrl(String line, String tag) {
		int page = 0;
		String pageStr = "";
		if (line.indexOf(tag) > -1) {
			int temp = line.indexOf(tag) + tag.length();
			String post = line.substring(temp);
			for (char c : post.toCharArray()) {
				if ('0' < c && c < '9') {
					pageStr = pageStr + c;
				} else {
					break;
				}
			}
			page = Integer.parseInt(pageStr);

		}
		return page;
	}

	protected abstract int parsing(ProcessContext processContext) throws ApplicationException;

}
