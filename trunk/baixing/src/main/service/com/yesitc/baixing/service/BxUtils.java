package com.yesitc.baixing.service;

public class BxUtils {

	public static String getDestUrl1(String area, String type) {
		String temp = BxConstants.URL_SAMPLE1;
		temp = temp.replace("[types]", type);
		temp = temp.replace("[areas]", area);
		return temp;
	}

	public static String getDestUrl2(String city, String area, String type) {
		String temp = BxConstants.URL_SAMPLE2;
		temp = temp.replace("[types]", type);
		temp = temp.replace("[areas]", area);
		temp = temp.replace("[cities]", city);
		return temp;
	}
}
