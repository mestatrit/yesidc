package com.yesitc.baixing;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.htmlparser.util.ParserException;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ErrorHandler;
import com.yesiic.common.LogHandler;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.WebRenderEntity;
import com.yesiic.common.WebrendererContext;
import com.yesiic.dao.WebElementsDao;
import com.yesiic.webswith.model.WebElements;

public class ImportTypesMemos {

	static boolean loaded = false;
	static IBrowserCanvas browser = null;
	static ProcessContext processContext = null;
	private static Log log = LogFactory.getLog(ImportTypesMemos.class);
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
				loadUrl(url);
				String header = getSubHeader();
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

	private static String getSubHeader() throws ParserException {
		IElement ie = browser.getDocument().getElementById("subheader");
		log.info(ie.getOuterHTML());
		IElement header = ie.getChildElements().item(1);
		log.info(header.getOuterHTML());
		log.info(header.getInnerHTML());
		return header.getInnerHTML();
	}

	private static void loadUrl(String url) throws ParserException {
		ClawerConstants.THREADS_NUMBER = 1;
		processContext = new ProcessContext();
		WebRenderEntity en = WebrendererContext.WEBRENDER_ENTITIES.get(1);

		browser = en.getBrowser();
		onDocumnetComplete();

		processContext.setHtml(browser.getDocument().getBody().getOuterHTML());
		processContext.setLogTitle("Test");

		browser.loadURL(url);

		waitingLoading(url);

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
				Thread.sleep(2000);
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