package com.yesitc.baixing;

import org.apache.commons.lang.math.NumberUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.h2.util.StringUtils;
import org.htmlparser.Node;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ErrorHandler;
import com.yesiic.common.LogHandler;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.WebRenderEntity;
import com.yesiic.common.WebrendererContext;

public class TestRolling {

	static boolean loaded = false;
	static IBrowserCanvas browser = null;
	static ProcessContext processContext = null;
	static String url = "http://shanghai.baixing.com/sheji/?areaName=changning";
	static String START = "长宁网页/平面设计/印刷信息";
	static String HAVE_EXISTED = "上海市内其它区";
	private static Log log = LogFactory.getLog(TestRolling.class);
	private static int NEXT_SCROLLING = 500;

	/**
	 * @param args
	 * @throws ApplicationException
	 */
	public static void main(String[] args) throws ApplicationException {
		try {
			loadUrl();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private static void loadUrl() throws ParserException {
		ClawerConstants.THREADS_NUMBER = 1;
		processContext = new ProcessContext();
		WebRenderEntity en = WebrendererContext.WEBRENDER_ENTITIES.get(1);

		browser = en.getBrowser();
		onDocumnetComplete();

		processContext.setBrowser(browser);
		processContext.setLogTitle("Test");

		browser.loadURL(url);

		waitingLoading(url);

		String html = scrolling();

		parse2Links(html);

	}

	private static void parse2Links(String html) throws ParserException {
		int start = html.indexOf(START);
		int end = html.indexOf(HAVE_EXISTED);
		
		String result =  html.substring(start, end);
		Parser parser;
		NodeList nodelist;
		parser = Parser.createParser(result, "utf8");
		NodeFilter linkFilter = new NodeClassFilter(LinkTag.class);
		nodelist = parser.parse(linkFilter);
		Node[] nodes = nodelist.toNodeArray();
		String line = "";

		for (int i = 0; i < nodes.length; i++) {
			LinkTag link = (LinkTag) nodes[i];
			line = link.getLink();
			if(!line.endsWith(".html")){
				continue;
			}
			log.info("line="+line + ",name=" + link.getLinkText());
			
		}
	}
	

	private static String scrolling() {
		String html = browser.getDocument().getBody().getOuterHTML();
		if (html != null && html.indexOf(HAVE_EXISTED) > -1) {
			log.info(browser.getTitle() + " Scroll to End!");
			return html;
		}

		String javascript = "var result=document.documentElement.scrollTop ? document.documentElement.scrollTop : window.pageYOffset;";
		String scrollTopStr = browser.executeScriptWithReturn(javascript);
		int scrollTop = 1000;
		if (StringUtils.isNumber(scrollTopStr)) {
			scrollTop = NumberUtils.toInt(scrollTopStr);
		}

		log.info("Init scrollTopStr=" + scrollTopStr + ",scrollTop=" + scrollTop);

		while (true) {
			scrollTop = scrollTop + NEXT_SCROLLING;
			javascript = "document.documentElement.scrollTop=" + scrollTop + ";";
			log.info(browser.getTitle() + " ScrollTop=" + scrollTop);
			browser.executeScript(javascript);
			html = browser.getDocument().getBody().getOuterHTML();
			if (html != null && html.indexOf(HAVE_EXISTED) > -1) {
				log.info(browser.getTitle() + scrollTop + ". Scroll to End!");
				log.info(browser.getDocument().getBody().getOuterHTML());
				return html;
			}
		}
	}

	private static void onDocumnetComplete() {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				loaded = true;
			}
		});
	}

	public static void waitingLoading(String url) {
		int i = 0;
		LogHandler.info(processContext.getLogTitle() + " waiting loading start!");
		while (!loaded) {
			i++;
			try {
				Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
			} catch (InterruptedException e) {
				ErrorHandler.error(processContext.getLogTitle() + " URL[" + url + "] :", e);
			}
			if (i > 12) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url
						+ "] waiting loading to long and exit to waiting now. Time is[" + i * 10 + "]s");
				break;
			} else {
				LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading……[" + i * 10 + "]s");
			}
		}
		LogHandler.info(processContext.getLogTitle() + "  waiting loading end![" + i * 2 + "]s");
	}
}