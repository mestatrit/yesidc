package com.yesibc.job51.web.support;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.ProcessContext;
import com.yesibc.job51.web.search.WebrendererContext;

public class BrowserSupport {

	public static long WAITING = 0;

	public static final String LEFT_TAG = "{";
	public static final String RIGHT_TAG = "}";
	public static final String WAIT_TAG_KEY = "key";
	public static final String WAIT_TAG_VAL = "vale";

	public static boolean waitingLoading(ProcessContext processContext, int index, Map<String, String> finish) {
		int i = 0;
		log.info(processContext.getLogTitle() + " waiting loading start!");
		while (!finish.containsKey(WAIT_TAG_KEY)) {
			i++;
			try {
				Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
			} catch (InterruptedException e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + ":", e);
			}
			if (i > 15) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle()
						+ " waiting loading to long and exit to waiting now. Time is[" + i
						* ClawerConstants.WAITING_TIME_SECONDS + "]s");
				// finish = true;
				WebrendererContext.reFreshContext4Waiting(index, processContext);
				return false;
			} else {
				log.debug(processContext.getLogTitle() + " waiting loading……[" + i
						* ClawerConstants.WAITING_TIME_LOADING + "]s");
			}
		}

		log.info(processContext.getLogTitle() + " waiting loading end![" + i * 10 + "]s");
		return true;

	}

	public static void onDocumnetComplete(IBrowserCanvas browser, final Map<String, String> finish) {
		finish.clear();
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				finish.put(WAIT_TAG_KEY, WAIT_TAG_VAL);
			}
		});
	}

	public static IBrowserCanvas initLoading(ProcessContext processContext, String title, int index) {
		IBrowserCanvas browser = WebrendererContext.WEBRENDER_ENTITIES.get(index).getBrowser();
		processContext.setBrowser(browser);
		processContext.setLogTitle(title);
		if (ClawerConstants.SHOW_FRAME) {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).getFrame().setTitle(processContext.getLogTitle());
		}
		WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(false);

		return browser;
	}

	public static IBrowserCanvas reLoading(ProcessContext processContext, String title, int index) {

		WebrendererContext.reFreshContext(index, title + "-" + index);

		IBrowserCanvas browser = WebrendererContext.WEBRENDER_ENTITIES.get(index).getBrowser();
		processContext.setBrowser(browser);
		processContext.setLogTitle(title);
		if (ClawerConstants.SHOW_FRAME) {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).getFrame().setTitle(processContext.getLogTitle());
		}
		WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(false);

		return browser;
	}

	public static void main(String[] args) {
	}

	private static Log log = LogFactory.getLog(BrowserSupport.class);

}
