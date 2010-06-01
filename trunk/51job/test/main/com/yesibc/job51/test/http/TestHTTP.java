package com.yesibc.job51.test.http;

import java.util.HashMap;
import java.util.Map;

import com.yesibc.core.components.http.Httpclient4Util;
import com.yesibc.core.exception.ApplicationException;

public class TestHTTP {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		testInV3();

	}

	private static void testInV3() {
	}

	private static void testInV4() {
		String url = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400,0100,2500&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14";
		String str = null;
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put(Httpclient4Util.PROXY_ADDR_KEY, "10.164.144.41");
			map.put(Httpclient4Util.PROXY_PORT_KEY, "3128");

			str = Httpclient4Util.get(url, map);
		} catch (ApplicationException e) {
			e.printStackTrace();
		}
		System.out.println(str);
	}
}
