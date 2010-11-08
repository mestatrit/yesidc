package com.yesitc.baixing.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class BxUtils {

	private static Log performance = LogFactory.getLog("performance");

	public static String getDestUrl1(String area, String type) {
		String temp = BxConstants.URL_SAMPLE1;
		temp = temp.replace("[types]", type);
		temp = temp.replace("[cities]", area);
		return temp;
	}

	public static String getDestUrl2(String city, String area, String type) {
		String temp = BxConstants.URL_SAMPLE2;
		temp = temp.replace("[types]", type);
		temp = temp.replace("[areas]", area);
		temp = temp.replace("[cities]", city);
		return temp;
	}

	public static long perf(String per, long start) {
		long end = System.currentTimeMillis();
		performance.info(per + "-" + (end - start));
		return end;
	}

}
