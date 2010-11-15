package com.yesiic.common.parse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ProcessContext;

public abstract class TypeLinkParser extends AbstractParser implements Parser {

	protected ProcessContext processContext;

	protected final static String PAGE_TAG = "page=";
	private static Log log = LogFactory.getLog(TypeLinkParser.class);

	public void parse(ProcessContext processContext) throws ApplicationException {

		this.processContext = processContext;

		prepareParse(processContext);

		int page = parsing(processContext);

		afterParse(processContext);

		if (page > 1) {
			log.info(processContext.getLogTitle() + " paging start - " + page);
			getNewContext(processContext, page);
			parse(processContext);
			log.info(processContext.getLogTitle() + " paging end - " + page);
		}
	}

	private void getNewContext(ProcessContext processContext, int page) {
		String url = processContext.getWp().getUrl();
		if (url.indexOf(PAGE_TAG) > -1) {
			url = url.substring(0, url.indexOf(PAGE_TAG) + PAGE_TAG.length()) + page;
		} else {
			url = url + "&" + PAGE_TAG + page;
		}
		processContext.getWp().setUrl(url);
	}

	protected abstract int parsing(ProcessContext processContext) throws ApplicationException;

}
