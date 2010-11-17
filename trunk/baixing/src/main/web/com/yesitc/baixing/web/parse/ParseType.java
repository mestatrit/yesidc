package com.yesitc.baixing.web.parse;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.htmlparser.Node;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.ParserException;

import com.yesibc.core.CoreConstants;
import com.yesibc.core.components.http.HtmlParserUtils;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.HtmlParserSupport;
import com.yesiic.common.parse.TypeLinkParser;
import com.yesiic.webswith.model.WebElements;
import com.yesiic.webswith.model.WebPages;
import com.yesitc.baixing.service.BxUtils;
import com.yesitc.baixing.service.DBService;
import com.yesitc.baixing.web.InitBasicData;

public class ParseType extends TypeLinkParser {

	private final static String DATA_ID = "datagrid";
	private final static String PAGER_ID = "pager";
	private final static String PAGER_ID_NAME = "下一页";
	private final static String AREA_NAME = "areaName";
	protected final static String PAGE_TAG = "page=";
	private static Log log = LogFactory.getLog(ParseType.class);

	public int parsing(ProcessContext processContext) throws ApplicationException {
		try {
			long start = System.currentTimeMillis();
			String html = HtmlParserUtils.getHtmlById(processContext.getHtml(), DATA_ID, CoreConstants.CHARSET_UTF8)
					.toHtml();
			if (html == null) {
				log.info(processContext.getLogTitle() + "[" + DATA_ID + "] is null!");
				return 0;
			}
			Node[] nodes = HtmlParserSupport.getLinkNodes(html, CoreConstants.CHARSET_UTF8);
			start = BxUtils.perf("Get nodes", start);
			if (nodes == null) {
				log.info(processContext.getLogTitle() + "LinkNodes is null!");
				return 0;
			}

			int endIndex = getEndIndex(processContext.getHtml(), processContext);

			String line = null;
			// 前缀定义为一个变量？
			String pre = processContext.getWp().getUrl();
			pre = pre.substring(7, pre.indexOf("."));
			pre = "http://" + pre + ".baixing.com/";
			List<String> wps = new ArrayList<String>();
			boolean end = false;
			for (int i = 0; i < nodes.length; i++) {
				LinkTag link = (LinkTag) nodes[i];
				line = link.getLink();
				if (endIndex > 1 && processContext.getHtml().indexOf(line) > endIndex) { // 不需要周边后链接
					end = true;
					break;
				}
				if (line.indexOf("http:") > -1 || !line.endsWith(".html")) {
					continue;
				}
				line = pre + line;
				wps.add(line);
				System.out.println(link.toPlainTextString());
			}
			// start = BxUtils.perf("Get ok htmls", start);
			if (!ClawerConstants.TEST_DAO && !wps.isEmpty()) {
				DBService dBService = (DBService) SpringContext.getBean("dBService");
				dBService.saveUrls(wps, WebPages.PAGE_PAGES_21, processContext.getWp().getRequestId());
			}
			if (!end) {
				return getPage(processContext);
			} else {
				return 0;
			}
		} catch (Exception e) {
			throw new ApplicationException(e);
		}
	}

	private int getPage(ProcessContext processContext) throws ParserException {
		String html = HtmlParserUtils.getHtmlById(processContext.getHtml(), PAGER_ID, CoreConstants.CHARSET_UTF8)
				.toHtml();
		Node[] nodes = HtmlParserSupport.getLinkNodes(html, CoreConstants.CHARSET_UTF8);
		LinkTag link = null;
		for (Node node : nodes) {
			if (((LinkTag) node).toHtml().indexOf(PAGER_ID_NAME) > 0) {
				link = (LinkTag) node;
				break;
			}
		}

		if (link != null) {
			int page = getPageFromUrl(link.getLink(), PAGE_TAG);
			return page;
		} else {
			return 0;
		}
	}

	@Override
	protected String getPageTag() {
		return PAGE_TAG;
	}

	private int getEndIndex(String html, ProcessContext processContext) throws ApplicationException {
		String url = processContext.getWp().getUrl();
		String areaName = getAreaNameFromUrl(url);
		String typeName = getTypeNameFromUrl(url);

		return html.indexOf(areaName + "周边的" + typeName);
	}

	private String getTypeNameFromUrl(String url) throws ApplicationException {
		String temp = "com/";
		if (url.indexOf(AREA_NAME) > -1) {
			url = url.substring(url.indexOf(temp) + temp.length(), url.indexOf(AREA_NAME) - 2);
		} else {
			String post = url.substring(url.indexOf(temp) + temp.length());
			int index = post.indexOf("/");
			url = url.substring(url.indexOf(temp) + temp.length(), url.indexOf(temp) + temp.length() + index);
		}
		WebElements we = InitBasicData.getTypeByCode(url);
		if (we == null) {
			throw new ApplicationException(processContext.getLogTitle() + " getTypeNameFromUrl error! url:" + url);
		}
		return we.getMemo();
	}

	private String getAreaNameFromUrl(String url) throws ApplicationException {
		if (url.indexOf(AREA_NAME) > -1) {
			int temp = url.indexOf(AREA_NAME) + AREA_NAME.length() + 1;
			String post = url.substring(temp);
			int index = post.indexOf("&");
			if (index < 0) {
				url = url.substring(temp);
			} else {
				url = url.substring(temp, temp + index);
			}
		} else {
			url = url.substring("http://".length(), url.indexOf("."));
		}
		WebElements we = InitBasicData.getAreaByCode(url);
		if (we == null) {
			throw new ApplicationException(processContext.getLogTitle() + " getAreaNameFromUrl error! url:" + url);
		}
		return we.getName();
	}

	public static void main(String[] args) {
		System.out.println(getPageFromUrl("http://shanghai.baixing.com/baoan/?areaName=xuhui&page=55", PAGE_TAG));
		System.out.println(getPageFromUrl("http://shanghai.baixing.com/baoan/?areaName=xuhui&page=55&dasdl", PAGE_TAG));
		ParseType pt = (ParseType) SpringContext.getBean("parseType");
		String url = "http://shanghai.baixing.com/baoan/?areaName=xuhui";
		try {
			System.out.println(pt.getAreaNameFromUrl(url));
			System.out.println(pt.getTypeNameFromUrl(url));
			url = "http://xian.baixing.com/baoan/";
			System.out.println(pt.getAreaNameFromUrl(url));
			System.out.println(pt.getTypeNameFromUrl(url));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}