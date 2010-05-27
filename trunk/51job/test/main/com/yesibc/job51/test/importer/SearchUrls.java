package com.yesibc.job51.test.importer;

import java.io.File;

import com.yesibc.core.utils.FileUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.company.search1.IndustryDIV;
import com.yesibc.job51.web.search.CompanyJobContext;
import com.yesibc.job51.web.support.FunctionDIV;

public class SearchUrls {

	// private String url1 =
	// "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400,0100,2500&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=7&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14";

	//private String url_temp = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400%2C0100%2C2500&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=7&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=1&fromType=14";

	public static void main(String[] args) throws Exception {
		String cutPath = "web/WEB-INF/classes";
		String path = StringUtils.getRealPath(CompanyJobContext.class, null,
				null);
		String p1 = path.substring(0,path.indexOf(cutPath));
		String p2 = path.substring(path.indexOf(cutPath)+cutPath.length()+1);
		
		System.out.println(p1);
		System.out.println(p2);
		path = p1+"src/web/"+p2 + "resulturls.51job";
		
		System.out.println(path);
		System.out.println("FUN_ARRAY"+FunctionDIV.FUN_ARRAY.length);
		System.out.println("IND_ARRAY"+IndustryDIV.IND_ARRAY.length);

		File file = new File(path);
		if(file.exists()){
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

				if (j == i || k==FunctionDIV.FUN_ARRAY.length) {
					httpFun = http1 + funTemp;
					j = 0;
					funTemp = "";
					FileUtils.fileWriterByAppend(path, httpFun + httpInd
							+ http3+"\n");
					System.out.println("===" + httpFun + httpInd + http3);
					httpFun = "";
				}
			}

			httpInd = "";

			//break;
		}

	}
}
