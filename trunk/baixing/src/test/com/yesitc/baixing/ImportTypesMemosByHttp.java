package com.yesitc.baixing;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.htmlparser.util.ParserException;

import com.yesibc.core.CoreConstants;
import com.yesibc.core.components.http.HtmlParserUtils;
import com.yesibc.core.components.http.Httpclient4Util;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesiic.common.ProcessContext;
import com.yesiic.dao.WebElementsDao;
import com.yesiic.webswith.model.WebElements;

public class ImportTypesMemosByHttp {

	static boolean loaded = false;
	static ProcessContext processContext = null;
	private static Log log = LogFactory.getLog(ImportTypesMemosByHttp.class);
	static WebElementsDao dao = (WebElementsDao) SpringContext.getBean("webElementsDao");

	/**
	 * @param args
	 * @throws ApplicationException
	 */
	public static void main(String[] args) throws ApplicationException {
		try {
			List<WebElements> wes = getAllWeTypes();
			String url = null;
			for (WebElements we : wes) {
				if (we.getCodeLevel() == 1) {
					log.info("TOPPPPPP==getCode=" + we.getCode() + "==getName=" + we.getName());
					continue;
				}
				loaded = false;
				url = "http://shanghai.baixing.com/" + we.getCode() + "/?areaName=changning";
				String html = loadUrl(url);
				String header = getSubHeader(html);
				if (header.length() > 4) {
					header = header.substring(4);
					log.info("header=" + header);
				} else {
					log.info("11==getCode=" + we.getCode() + "==getName=" + we.getName());
				}
				we.setMemo(header);
			}
			parseCategories2DB(wes);
			// log.info("==divs=" + divs.size());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private static List<WebElements> getAllWeTypes() throws ApplicationException {
		List<WebElements> wes = dao.getWebElementsByType("types");
		return wes;
	}

	private static void parseCategories2DB(List<WebElements> wes) {
		for (WebElements we : wes) {
			dao.saveOrUpdate(we);
		}
	}

	private static String getSubHeader(String html) throws ParserException {
		html = HtmlParserUtils.getHtmlById(html, "subheader", CoreConstants.CHARSET_UTF8).toHtml();
		html = HtmlParserUtils.getHtmlByTag(html, "h1", CoreConstants.CHARSET_UTF8).toPlainTextString();
		return html;
	}

	private static String loadUrl(String url) throws ParserException, ApplicationException {
		return Httpclient4Util.get(url);
	}

}