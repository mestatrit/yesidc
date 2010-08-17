package com.yesitc.baixing.web.validate;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.htmlparser.Node;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

import com.webrenderer.swing.IBrowserCanvas;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.FileUtils;
import com.yesiic.common.BrowserSupport;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ProcessContext;

public class ValidateFlow {

	private static String[] cities = { "shanghai" };
	private static String[] areas = { "putuo" };
	private static String AREA = "?areaName=";
	private static Map<String, String> finish = new HashMap<String, String>();
	private static int index = 0;
	private static Log log = LogFactory.getLog(ValidateFlow.class);
	static long l = System.currentTimeMillis();

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ClawerConstants.THREADS_NUMBER = 1;
		IBrowserCanvas browser;
		try {
			browser = loadMainUrl();
			validateContents(browser);
			log.info("Validate OK!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void validateContents(IBrowserCanvas browser) throws ParserException, ApplicationException {
		String contents = FileUtils.readByRelativePath("/url_model.properties", "GBK");
		Parser parser = Parser.createParser(contents, "GBK");
		NodeFilter linkFilter = new NodeClassFilter(LinkTag.class);
		NodeList nodelist = parser.parse(linkFilter);
		Node[] nodes = nodelist.toNodeArray();

		String line = "";
		String html = browser.getDocument().getBody().getOuterHTML();
		boolean have = true;
		for (int i = 0; i < nodes.length; i++) {
			LinkTag link = (LinkTag) nodes[i];
			line = link.getLink();
			if (html.indexOf(line) < 0) {
				log.info("line=" + line + " is not in HTML.");
				have = false;
			}
		}
		if (!have) {
			throw new ApplicationException("ValidateFlow Error!");
		}

	}

	private static IBrowserCanvas loadMainUrl() throws ApplicationException {
		ProcessContext processContext = new ProcessContext();

		IBrowserCanvas browser = BrowserSupport.initLoading(processContext, "First page!", index);
		BrowserSupport.onDocumnetComplete(browser, finish);
		browser.loadURL("http://" + cities[0] + ".baixing.com/" + AREA + areas[0]);
		BrowserSupport.waitingLoading(processContext, index, finish);

		log.info(ClawerConstants.PROC_LOG + "Load " + areas[0] + " complete OK!Time is "
				+ (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();
		return browser;
	}

}
