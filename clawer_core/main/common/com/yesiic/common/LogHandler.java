package com.yesiic.common;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class LogHandler {
	private static Log log = LogFactory.getLog(LogHandler.class);
	private static Log per = LogFactory.getLog("performance");

	public static void per(String msg) {
		if (per.isInfoEnabled())
			per.info(msg);
	}

	public static void info(String errMsg) {
		if (log.isInfoEnabled())
			log.info(errMsg);
	}

	public static void debug(String errMsg) {
		if (log.isDebugEnabled())
			log.debug(errMsg);
	}
}
