package com.yesiic.common.parse;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ProcessContext;
import com.yesiic.webswith.model.WebPages;

public abstract class AbstractDetailParser extends AbstractParser implements Parser {

	private static Log log = LogFactory.getLog(AbstractDetailParser.class);

	public void parse(ProcessContext processContext) throws ApplicationException {

		prepareParse(processContext);

		parsing(processContext);

		if (!ClawerConstants.TEST_DAO && processContext.getUrls() != null && !processContext.getUrls().isEmpty()) {
			save2DB(processContext);
		}

		finish.clear();

		afterParse(processContext);

	}

	protected void save2DB(ProcessContext processContext) {
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

	protected abstract int parsing(ProcessContext processContext) throws ApplicationException;

}
