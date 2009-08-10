package com.yesibc.job51.company;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;

public class ErrorHandler {
	private static Log log = LogFactory.getLog(ErrorHandler.class);
	public final static String ERROR_PREFIX = "Fatal error!";
	public final static String WARN_PREFIX = "Warning error!";

	public static void error(String errMsg) {
		log.error(errMsg);
	}

	public static void errorLogAndMail(String errMsg) {
		log.error(errMsg);
	}

	public static void errorIElement(IElement ie, String errmsg) {
		if (ie == null)
			error(errmsg + "==null object!");
	}

	public static void error(String errMsg, Exception e) {
		log.error(errMsg, e);
	}

	public static void warning(String errMsg) {
		log.warn(errMsg);
	}

}
