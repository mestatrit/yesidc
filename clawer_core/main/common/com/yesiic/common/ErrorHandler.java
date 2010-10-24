package com.yesiic.common;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.cetelem.track.AlertUtils;

import com.webrenderer.swing.dom.IElement;

public class ErrorHandler {

	public static final String WAIT_ERROR_BODY = "Body is null.";
	public static final String WAIT_ERROR_CONNECT = "Firefox can't find the server";
	public static final String WAIT_ERROR_PROHIBIT = "is taking too long to respond.";
	public static final String WAIT_ERROR_SYSTEM = "Important error!Special action will be executed.";
	public final static String ERROR_PREFIX = "Fatal error!";
	public final static String WARN_PREFIX = "Warning error!";
	private static Log logManual = LogFactory.getLog(ClawerConstants.MANUAL_LOG);

	private static int num = 0;

	static {
		if (Clawer51JobMailContext.EMAILS == null || Clawer51JobMailContext.EMAILS.isEmpty()) {
			Clawer51JobMailContext.initMailList();
			Clawer51JobMailContext.getMailList();
		}
	}

	public static void handleError(ProcessContext processContext, Exception e) {
		String str = null;
		String msg = null;
		if (e != null) {
			str = AlertUtils.getErrString(e);
			msg = e.getMessage();
		}
		String html = null;
		if (processContext.getBrowser().getDocument() != null && processContext.getBrowser().getDocument().getBody() != null) {
			html = processContext.getBrowser().getDocument().getBody().getOuterHTML();
		} else {
			html = "Can't get HTML contents.";
		}

		if (msg != null && msg.indexOf(WAIT_ERROR_SYSTEM) > -1) {
			processContext.setError(true);
			processContext.setErrorMsg(msg + "\n" + str);
		}

		ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " Parsing [" + processContext.getBrowser().getURL() + "] is error!"
				+ msg + "\n HTML contents Start===========\n:" + html
				+ "\n HTML contents End===========\n ExceptionTrace:" + str);
	}

	public static void error(String errMsg) {
		logManual.error(errMsg);
	}

	private static synchronized void getErrorTimes() {
		num++;
		if (num > (Clawer51JobMailContext.EMAILS.size() - 1)) {
			num = 0;
		}
	}

	public static void errorLogAndMail(final String errMsg) {
		new Thread() {
			public void run() {
				getErrorTimes();
				Clawer51JobMailContext.EMAILS.get(num).setSimpleBody(errMsg);
				Clawer51JobMailContext.EMAILS.get(num).sendBySimple(null);
			}
		}.start();
	}

	public static void errorLogAndMail(final String errMsg, Exception e) {
		final String eStr = AlertUtils.getErrString(e);
		new Thread() {
			public void run() {
				getErrorTimes();
				Clawer51JobMailContext.EMAILS.get(num).setSimpleBody(errMsg + "!\n Exception:" + eStr);
				Clawer51JobMailContext.EMAILS.get(num).sendBySimple(errMsg);
			}
		}.start();
	}

	public static void errorIElement(IElement ie, String errmsg) {
		if (ie == null)
			error(errmsg + "==null object!");
	}

	public static void error(String errMsg, Exception e) {
		logManual.error(errMsg, e);
	}

	public static void warning(String errMsg) {
		logManual.warn(errMsg);
	}

	public static void main(String[] args) {
		String s = "086-" + "		021-" + "		52306918;";
		errorLogAndMail(s, null);
		System.out.println("gogogoogogo");
	}

}
