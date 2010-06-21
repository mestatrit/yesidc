package com.yesidc.email.common;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;


public class BrowserSupport {

	public static long WAITING = 0;

	public static final String LEFT_TAG = "{";
	public static final String RIGHT_TAG = "}";
	public static final String WAIT_TAG_KEY = "key";
	public static final String WAIT_TAG_VAL = "vale";
	public static final String WAIT_ERROR_BODY = "Body is null.";
	public static final String WAIT_ERROR_CONNECT = "Firefox can't find the server";
	public static final String WAIT_ERROR_PROHIBIT = "is taking too long to respond.";
	public static final String WAIT_ERROR_SYSTEM = "Important error!Special action will be executed.";
	public final static String ERROR_PREFIX = "Fatal error!";
	public final static String WARN_PREFIX = "Warning error!";

	public static void waitingLoading(ProcessContext processContext, int index, Map<String, String> finish)
			throws ApplicationException {

		if (!waiting(processContext, index, finish)) {
			log.error(processContext.getLogTitle() + " Load wait error and redo!");
			finish.clear();
			BrowserSupport.onDocumnetComplete(processContext.getBrowser(), finish);
			processContext.getBrowser().loadURL(processContext.getUrl());
			if (!waiting(processContext, index, finish)) {
				throw new ApplicationException(WAIT_ERROR_SYSTEM + " Waiting overtime.");
			} else {
				log.warn(processContext.getLogTitle() + " Load wait error and redo OK!");
			}
		}

		checkBody(processContext);

		String html = processContext.getBrowser().getDocument().getBody().getOuterHTML();
		errorRedo(processContext, html, index, finish, WAIT_ERROR_CONNECT);
		errorRedo(processContext, html, index, finish, WAIT_ERROR_PROHIBIT);
	}

	private static void errorRedo(ProcessContext processContext, String html, int index, Map<String, String> finish,
			String htmlTag) throws ApplicationException {
		String logMsg = " Error Tag:" + htmlTag + ". So load content error and redo!\n HTML is:" + html;
		if (html.indexOf(htmlTag) > -1) {
			log.error(processContext.getLogTitle() + logMsg);
			finish.clear();
			processContext.getBrowser().loadURL(processContext.getUrl());
			if (!waiting(processContext, index, finish)) {
				log.error(processContext.getLogTitle() + " Redo waiting error!" + logMsg);
				throw new ApplicationException(WAIT_ERROR_SYSTEM + " Redo waiting error!" + logMsg);
			}
			if (html.indexOf(htmlTag) > -1) {
				log.error(processContext.getLogTitle() + " Redo error again!" + logMsg);
				throw new ApplicationException(WAIT_ERROR_SYSTEM + " Redo error again!" + logMsg);
			} else {
				log.warn(processContext.getLogTitle() + " Redo OK!" + logMsg);
			}
		}
	}

	private static void checkBody(ProcessContext processContext) throws ApplicationException {
		int k = 0;
		while (processContext.getBrowser().getDocument().getBody() == null) {
			try {
				k++;
				log.warn(processContext.getLogTitle() + WAIT_ERROR_BODY + "Times:" + k);
				Thread.sleep(EmailConstants.WAITING_TIME_LOADING);
				if (k > EmailConstants.WAITING_TIMES / 2) {
					throw new ApplicationException(WAIT_ERROR_SYSTEM + WAIT_ERROR_BODY);
				}
			} catch (Exception e) {
				throw new ApplicationException(e);
			}
		}
	}

	private static boolean waiting(ProcessContext processContext, int index, Map<String, String> finish) {
		int i = 0;
		long l = System.currentTimeMillis();
		log.info(processContext.getLogTitle() + " waiting loading start!" + processContext.getUrl());
		while (!finish.containsKey(WAIT_TAG_KEY)) {
			i++;
			try {
				Thread.sleep(EmailConstants.WAITING_TIME_LOADING);
			} catch (InterruptedException e) {
				log.error(processContext.getLogTitle() + ":", e);
			}

			if (i > EmailConstants.WAITING_TIMES) {
				log.error(processContext.getLogTitle() + " waiting loading to long and exit to waiting now. Time is["
						+ i * EmailConstants.WAITING_TIME_SECONDS + "]s");
				WebrendererContext.reFreshContext4Waiting(index, processContext);
				return false;
			} else {
				if (log.isDebugEnabled()) {
					log.debug(processContext.getLogTitle() + " waiting loading……[" + i
							* EmailConstants.WAITING_TIME_LOADING + "]s");
				}
			}
		}
		log.info(processContext.getLogTitle() + " waiting loading end![" + ((System.currentTimeMillis() - l) / 1000)
				+ "]s.");
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
		processContext.setLogTitle(title + " ");
		if (EmailConstants.SHOW_FRAME) {
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
		if (EmailConstants.SHOW_FRAME) {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).getFrame().setTitle(processContext.getLogTitle());
		}
		WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(false);

		return browser;
	}

	public static void main(String[] args) {
	}

	private static Log log = LogFactory.getLog(BrowserSupport.class);

}
