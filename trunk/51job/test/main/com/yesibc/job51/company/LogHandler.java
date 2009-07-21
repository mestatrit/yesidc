package com.yesibc.job51.company;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class LogHandler {
	private static Log log = LogFactory.getLog(LogHandler.class);

	public static void info(String errMsg) {
		if (log.isInfoEnabled())
			log.info(errMsg);
	}

	public static void debug(String errMsg) {
		if (log.isDebugEnabled())
			log.debug(errMsg);
	}
}
