package com.yesibc.job51.test.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import junit.framework.TestCase;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.WebPages;
import com.yesibc.job51.web.search.CompanyJobContext;

public class TestWebPagesDao extends TestCase {

	private static Log log = LogFactory.getLog(TestWebPagesDao.class);


	/**
	 * @param args
	 */
	public static void main(String[] args) {
		log.info("save header!");
		try {
			// testSaveHeader();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void testSaveByBatch() {
		List<WebPages> wps = new ArrayList<WebPages>();		
		String url = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400,0100,2500&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=1&fromType=14";
		int pages = 3;
		WebPages wp1 = null;
		WebPages wp2 = null;
		WebPages wp3 = null;
		for (int i = 2; i <= pages; i++) {
			url = CompanyJobContext.getNewUrlPage(url, i);
			WebPages wp = new WebPages();
			wp.setPageType(WebPages.PAGE_TYPE_SEARCH_PAGES);
			wp.setRequestId(ClawerConstants.REQUEST_ID);
			wp.setStatus(WebPages.STATUS_KO);
			wp.setUpdateDate(new Date());
			wp.setUrl(url);
			wps.add(wp);
			if(i==2){
				wp.setPageType("22aaaa2");
				wp1 = wp;
				wp2 = wp;
			}
			if(i==3){
				wp.setPageType("222aa2aaaa2");
				wp3 = wp;
			}
		}
		System.out.println(wps.size());
		System.out.println(wps.contains(wp1));
		wp2.setPageType("1111");
		System.out.println(wp1.getPageType());
		wp2 = null;
		System.out.println(wps.contains(wp2));
		System.out.println(wps.get(1).getPageType());
		System.out.println(wps.get(0).getPageType());
		wps.remove(wp1);
		System.out.println(wps.size());
		wps.remove(wp3);
		System.out.println(wps.size());
		//WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
		//webPagesDao.saveByBatch(wps);
	}

}
