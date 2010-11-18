package com.yesitc.baixing.web.parse;

import java.util.ArrayList;
import java.util.Date;
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
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.HtmlParserSupport;
import com.yesiic.common.parse.TypeLinkParser;
import com.yesiic.webswith.model.WebElements;
import com.yesiic.webswith.model.WebPages;
import com.yesitc.baixing.service.BxUtils;
import com.yesitc.baixing.web.InitBasicData;

public class ParseType extends TypeLinkParser {

	private final static String DATA_ID = "datagrid";
	private final static String PAGER_ID = "pager";
	private final static String URL_END_TAG = "com/";
	private final static String PAGER_ID_NAME = "下一页";
	private final static String AREA_NAME = "areaName";
	protected final static String PAGE_TAG = "page=";
	private static Log log = LogFactory.getLog(ParseType.class);

	public int parsing(ProcessContext processContext) throws ApplicationException {
		try {
			Node[] nodes = getLinkNodes(processContext);
			if (nodes == null) {
				return 0;
			}

			int endIndex = getEndIndex(processContext.getHtml(), processContext);

			String pre = getPreUrl(processContext);

			String line = null;
			List<String> wps = new ArrayList<String>();
			boolean end = false;
			int total = 0;
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
				total++;
			}

			if (wps.isEmpty()) {
				return 0;
			}

			processContext.setPageType(WebPages.PAGE_PAGES_21);
			processContext.setUrls(wps);
			processContext.setTotal(processContext.getTotal() + total);
			log.info(processContext.getLogTitle() + "[" + processContext.getTotal() + "]records is got!");

			if (!end) {
				return getPage(processContext);
			} else {
				return 0;
			}
		} catch (Exception e) {
			throw new ApplicationException(e);
		}
	}

	private String getPreUrl(ProcessContext processContext) {
		String pre = processContext.getWp().getUrl();
		pre = pre.substring(0, pre.lastIndexOf("/") + 1);
		return pre;
	}

	private Node[] getLinkNodes(ProcessContext processContext) throws ParserException {
		long start = System.currentTimeMillis();
		String html = HtmlParserUtils.getHtmlById(processContext.getHtml(), DATA_ID, CoreConstants.CHARSET_UTF8)
				.toHtml();
		if (html == null) {
			log.info(processContext.getLogTitle() + "[" + DATA_ID + "] is null!");
			return null;
		}
		Node[] nodes = HtmlParserSupport.getLinkNodes(html, CoreConstants.CHARSET_UTF8);
		start = BxUtils.perf("Get nodes", start);
		if (nodes == null) {
			log.info(processContext.getLogTitle() + "LinkNodes is null!");
			return null;
		}
		return nodes;
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

	/**
	 * 多种结束标志
	 * 
	 * @param html
	 * @param processContext
	 * @return
	 * @throws ApplicationException
	 */
	private int getEndIndex(String html, ProcessContext processContext) throws ApplicationException {
		String areaName = getAreaNameFromUrl(processContext);
		String typeName = getTypeNameFromUrl(processContext);
		int i = html.indexOf(areaName + "周边的" + typeName); // 长宁周边的保安/仓管招聘
		if (i < 0) {
			i = html.indexOf("周边城市"); // 周边城市
		}
		if (i < 0) {
			i = html.indexOf(getCityNameFromUrl(processContext) + "其他地区"); // 上海其他地区
		}

		return i;
	}

	private String getTypeNameFromUrl(ProcessContext processContext) throws ApplicationException {
		String url = processContext.getWp().getUrl();
		if (url.indexOf(AREA_NAME) > -1) {
			url = url.substring(url.indexOf(URL_END_TAG) + URL_END_TAG.length(), url.indexOf(AREA_NAME) - 2);
		} else {
			String post = url.substring(url.indexOf(URL_END_TAG) + URL_END_TAG.length());
			int index = post.indexOf("/");
			url = url.substring(url.indexOf(URL_END_TAG) + URL_END_TAG.length(), url.indexOf(URL_END_TAG)
					+ URL_END_TAG.length() + index);
		}
		WebElements we = InitBasicData.getTypeByCode(url);
		if (we == null) {
			throw new ApplicationException(processContext.getLogTitle() + " getTypeNameFromUrl error! url:" + url);
		}
		return we.getMemo();
	}

	private String getAreaNameFromUrl(ProcessContext processContext) throws ApplicationException {
		String url = processContext.getWp().getUrl();
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

	private String getCityNameFromUrl(ProcessContext processContext) throws ApplicationException {
		String url = processContext.getWp().getUrl();
		url = url.substring("http://".length(), url.indexOf("."));
		WebElements we = InitBasicData.getAreaByCode(url);
		if (we == null) {
			throw new ApplicationException(processContext.getLogTitle() + " getCityNameFromUrl error! url:" + url);
		}
		return we.getName();
	}

	public static void main(String[] args) {
		System.out.println(getPageFromUrl("http://shanghai.baixing.com/baoan/?areaName=xuhui&page=55", PAGE_TAG));
		System.out.println(getPageFromUrl("http://shanghai.baixing.com/baoan/?areaName=xuhui&page=55&dasdl", PAGE_TAG));
		String url = "http://shanghai.baixing.com/baoan/?areaName=xuhui";
		Date now = new Date();
		WebPages wp = new WebPages();
		wp.setId(new Long(50328));
		wp.setCreateDate(now);
		wp.setPageType("11");
		wp.setRequestId("22");
		wp.setStatus(WebPages.STATUS_KO);
		wp.setUpdateDate(now);
		wp.setUrl(url);
		ProcessContext processContext = new ProcessContext();
		processContext.setLogTitle("test");
		processContext.setWp(wp);

		ParseType pt = (ParseType) SpringContext.getBean("parseType");
		try {
			System.out.println(pt.getAreaNameFromUrl(processContext));
			System.out.println(pt.getTypeNameFromUrl(processContext));
			url = "http://xian.baixing.com/baoan/";
			System.out.println(pt.getAreaNameFromUrl(processContext));
			System.out.println(pt.getTypeNameFromUrl(processContext));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
