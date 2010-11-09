package com.yesitc.baixing.web.parse;

import java.util.ArrayList;
import java.util.List;

import org.htmlparser.Node;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.ParserException;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.StringUtils;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.HtmlParserSupport;
import com.yesiic.common.parse.TypeLinkParser;
import com.yesiic.web.AbstractParserProcess;
import com.yesiic.webswith.model.WebElements;
import com.yesiic.webswith.model.WebPages;
import com.yesitc.baixing.service.BxUtils;
import com.yesitc.baixing.service.DBService;
import com.yesitc.baixing.web.InitBasicData;

public class ParseType extends TypeLinkParser {

	private final static String DATA_ID = "datagrid";
	private final static String PAGER_ID = "pager";
	private final static String AREA_NAME = "areaName";

	public int parsing(ProcessContext processContext) throws ApplicationException {
		IElement ie = processContext.getBrowser().getDocument().getElementById(DATA_ID);
		String html = ie.getOuterHTML();
		try {
			long start = System.currentTimeMillis();
			Node[] nodes = HtmlParserSupport.getLinkNodes(html, "utf8");
			start = BxUtils.perf("Get nodes", start);

			int endIndex = getEndIndex(html, processContext);

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
				if (html.indexOf(line) > endIndex) { // 不需要周边后链接
					end = true;
					break;
				}
				if (line.indexOf("http:") > -1 || !line.endsWith(".html")) {
					continue;
				}
				line = pre + line;
				wps.add(line);
			}
			start = BxUtils.perf("Get ok htmls", start);
			if (AbstractParserProcess.TO_DB_1ST) {
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
		IElement ie = processContext.getBrowser().getDocument().getElementById(PAGER_ID);
		String html = ie.getOuterHTML();
		Node[] nodes = HtmlParserSupport.getLinkNodes(html, "utf8");
		LinkTag link = (LinkTag) nodes[0];
		String line = link.getLink();
		int page = 0;
		if (line.indexOf(PAGE_TAG) > -1) {
			line = line.substring(line.indexOf(PAGE_TAG) + PAGE_TAG.length());
			if (StringUtils.isNumberString(line)) {
				page = Integer.parseInt(line);
			}
		}

		return page;
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
			url = url.substring(url.indexOf(temp) + temp.length(), url.length() - 1);
		}
		WebElements we = InitBasicData.getTypeByCode(url);
		if (we == null) {
			throw new ApplicationException(processContext.getLogTitle() + " getTypeNameFromUrl error! url:" + url);
		}
		return we.getMemo();
	}

	private String getAreaNameFromUrl(String url) throws ApplicationException {
		if (url.indexOf(AREA_NAME) > -1) {
			if (url.indexOf("&page") > -1) {
				url = url.substring(url.indexOf(AREA_NAME) + AREA_NAME.length() + 1, url.indexOf("&page"));
			} else {
				url = url.substring(url.indexOf(AREA_NAME) + AREA_NAME.length() + 1);
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
