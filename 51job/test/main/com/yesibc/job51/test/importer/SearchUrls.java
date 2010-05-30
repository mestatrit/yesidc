package com.yesibc.job51.test.importer;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Date;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.FileUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.company.search1.IndustryDIV;
import com.yesibc.job51.dao.WebPagesDao;
import com.yesibc.job51.model.WebPages;
import com.yesibc.job51.web.search.ProcessContext;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.FunctionDIV;

@SuppressWarnings("unused")
public class SearchUrls {

	// private String url1 =
	// "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400,0100,2500&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=7&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14";

	// private String url_temp =
	// "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400%2C0100%2C2500&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=7&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=1&fromType=14";

	public static void main(String[] args) throws Exception {
		// toFile();
		toDB();

	}

	private static void toDB() {
		try {
			String path = StringUtils.getRealPath(ProcessContext.class, null, null) + "resulturls.51job";
			File file = new File(path);
			if (!file.exists() || file.isDirectory())
				throw new FileNotFoundException();
			BufferedReader br = new BufferedReader(new FileReader(file));
			String temp = br.readLine();

			WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");

			String requestId = String.valueOf(System.currentTimeMillis());
			WebPages wp = new WebPages();
			wp.setUrl(temp);
			wp.setPageType(WebPages.PAGE_TYPE_SEARCH_LIST);
			wp.setRequestId(requestId);
			wp.setStatus(WebPages.STATUS_KO);
			wp.setUpdateDate(new Date());
			webPagesDao.save(wp);

			while (temp != null) {
				temp = br.readLine();
				if (temp != null) {
					WebPages wp1 = new WebPages();
					wp1.setUrl(temp);
					wp1.setPageType(WebPages.PAGE_TYPE_SEARCH_LIST);
					wp1.setRequestId(requestId);
					wp1.setStatus(WebPages.STATUS_KO);
					wp1.setUpdateDate(new Date());
					webPagesDao.save(wp1);
				}
			}
		} catch (Exception e) {
			ErrorHandler.error("init search list!", e);
		}
	}

	private static void toFile() {
		String cutPath = "web/WEB-INF/classes";
		String path = StringUtils.getRealPath(ProcessContext.class, null, null);
		String p1 = path.substring(0, path.indexOf(cutPath));
		String p2 = path.substring(path.indexOf(cutPath) + cutPath.length() + 1);

		System.out.println(p1);
		System.out.println(p2);
		path = p1 + "src/web/" + p2 + "resulturls.51job";

		System.out.println(path);
		System.out.println("FUN_ARRAY" + FunctionDIV.FUN_ARRAY.length);
		System.out.println("IND_ARRAY" + IndustryDIV.IND_ARRAY.length);

		File file = new File(path);
		if (file.exists()) {
			file.delete();
		}

		String http1 = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=";
		String http2 = "&industrytype=";
		String http3 = "&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14";
		String funTemp = "";

		int i = 3;
		int j = 0;
		int k = 0;
		String httpFun = "";
		String httpInd = "";
		for (String[] inds : IndustryDIV.IND_ARRAY) {
			httpInd = http2 + inds[0];
			k = 0;
			for (String[] funs : FunctionDIV.FUN_ARRAY) {
				if ("".equals(funTemp)) {
					funTemp = funTemp + funs[0];
				} else {
					funTemp = funTemp + "," + funs[0];
				}
				j++;
				k++;

				if (j == i || k == FunctionDIV.FUN_ARRAY.length) {
					httpFun = http1 + funTemp;
					j = 0;
					funTemp = "";
					FileUtils.fileWriterByAppend(path, httpFun + httpInd + http3 + "\n");
					System.out.println("===" + httpFun + httpInd + http3);
					httpFun = "";
				}
			}

			httpInd = "";

			// break;
		}
	}
}
