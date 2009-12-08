package com.yesibc.job51.test.web;

import com.yesibc.job51.web.search.SearchCompanyLinksEngine;

public class SearchCompanyEngineTest extends SearchTest{

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String[] urls = { "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400,0100,2500&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=1&fromType=14" };
		SearchCompanyLinksEngine sje = new SearchCompanyLinksEngine(String.valueOf(System
				.currentTimeMillis()), urls,0);
		sje.run();
	}

}
