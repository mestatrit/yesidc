package com.yesiic.common.parse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ProcessContext;

public abstract class TypeLinkParser extends AbstractParser implements Parser {

	protected ProcessContext processContext;

	private static Log log = LogFactory.getLog(TypeLinkParser.class);

	public void parse(ProcessContext processContext) throws ApplicationException {

		this.processContext = processContext;

		prepareParse(processContext);

		int page = parsing(processContext);

		afterParse(processContext);

		if (page > 1) {
			log.info(processContext.getLogTitle() + " paging start - " + page);
			getNewContext(processContext, page, getPageTag());
			parse(processContext);
			log.info(processContext.getLogTitle() + " paging end - " + page);
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