package com.yesiic.common.parse;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesiic.common.BrowserSupport;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ProcessContext;
import com.yesiic.dao.WebPagesDao;
import com.yesiic.webswith.model.WebPages;

public abstract class AbstractParser {

	protected Map<String, String> finish = new HashMap<String, String>();
	private static Log log = LogFactory.getLog(AbstractParser.class);

	public void prepareParse(ProcessContext processContext) throws ApplicationException {
		BrowserSupport.prepareLoading(processContext);
		BrowserSupport.onDocumnetComplete(processContext.getBrowser(), finish);
		processContext.getBrowser().loadURL(processContext.getWp().getUrl());
		BrowserSupport.waitingLoading(processContext, finish);
	}

	public void afterParse(ProcessContext processContext) throws ApplicationException {
		processContext.getWp().setStatus(WebPages.STATUS_OK);
		processContext.getWp().setUpdateDate(new Date());
		if (!ClawerConstants.TEST_DAO) {
			WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
			webPagesDao.update(processContext.getWp());
		}
		log.info(processContext.getLogTitle() + "After parsing and update 2 DB OK!");
	}
}
