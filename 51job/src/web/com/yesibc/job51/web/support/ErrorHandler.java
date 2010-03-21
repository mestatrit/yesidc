package com.yesibc.job51.web.support;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.cetelem.track.AlertUtils;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.job51.common.Clawer51JobMailContext;
import com.yesibc.job51.common.ClawerConstants;

public class ErrorHandler {
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

	public static void error(String errMsg) {
		logManual.error(errMsg);
	}

	private static synchronized void getErrorTimes() {
		num++;
		if (num > (Clawer51JobMailContext.EMAILS.size() - 1)) {
			num = 0;
		}
	}

	public static void errorLogAndMail(String errMsg) {
		getErrorTimes();
		Clawer51JobMailContext.EMAILS.get(num).setSimpleBody(errMsg);
		Clawer51JobMailContext.EMAILS.get(num).sendBySimple();
	}

	public static void errorLogAndMail(String errMsg, Exception e) {
		getErrorTimes();
		Clawer51JobMailContext.EMAILS.get(num).setSimpleBody(errMsg + "!\n Exception:" + AlertUtils.getErrString(e));
		Clawer51JobMailContext.EMAILS.get(num).sendBySimple();
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
	}

}
