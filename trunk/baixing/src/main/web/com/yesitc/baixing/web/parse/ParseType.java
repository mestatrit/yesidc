package com.yesitc.baixing.web.parse;

import java.util.ArrayList;
import java.util.List;

import org.htmlparser.Node;
import org.htmlparser.tags.LinkTag;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.HtmlParserSupport;
import com.yesiic.common.parse.TypeLinkParser;
import com.yesiic.webswith.model.WebPages;
import com.yesitc.baixing.service.DBService;

public class ParseType extends TypeLinkParser {

	private final static String DATA_ID = "datagrid";

	public void parsing(ProcessContext processContext) throws ApplicationException {
		IElement ie = processContext.getBrowser().getDocument().getElementById(DATA_ID);
		String html = ie.getOuterHTML();
		try {
			Node[] nodes = HtmlParserSupport.getLinkNodes(html, "utf8");
			String line = null;
			// 前缀定义为一个变量？
			String pre = processContext.getWp().getUrl();
			pre = pre.substring(7, pre.indexOf("."));
			pre = "http://" + pre + ".baixing.com/";
			List<String> wps = new ArrayList<String>();
			for (int i = 0; i < nodes.length; i++) {
				LinkTag link = (LinkTag) nodes[i];
				line = link.getLink();
				if (!line.endsWith(".html")) {
					continue;
				}
				line = pre + line;
				wps.add(line);
			}
			DBService dBService = (DBService) SpringContext.getBean("dBService");
			dBService.saveUrls(wps, WebPages.PAGE_PAGES_21, processContext.getWp().getRequestId());
		} catch (Exception e) {
			throw new ApplicationException(e);
		}
	}

}
