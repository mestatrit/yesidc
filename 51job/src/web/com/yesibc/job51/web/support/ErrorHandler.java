package com.yesibc.job51.web.support;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;

public class ErrorHandler {
	public final static String ERROR_PREFIX = "Fatal error!";
	public final static String WARN_PREFIX = "Warning error!";
	private static Log logManual = LogFactory
			.getLog(ClawerConstants.MANUAL_LOG);

	public static void error(String errMsg) {
		logManual.error(errMsg);
	}

	public static void errorLogAndMail(String errMsg) {
		ClawerUtils.sendAlert(errMsg);
	}

	public static void errorLogAndMail(String errMsg, Exception e) {
		ClawerUtils.sendEXAlert(e, errMsg);
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

}
