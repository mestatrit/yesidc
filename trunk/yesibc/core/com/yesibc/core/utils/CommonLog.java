package com.yesibc.core.utils;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class CommonLog {
	private static Log log = LogFactory.getLog(CommonLog.class);

	public static void info(String errMsg) {
		log.info(errMsg);
	}

	public static void debug(String errMsg) {
		if (log.isDebugEnabled())
			log.debug(errMsg);
	}
}
