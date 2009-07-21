package com.yesibc.job51.company;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.job51.company.search1.LocateMainElements;

public class Paging {

	public static int pageSize = 1;
	public static void doPaging() {
		IElement element = LocateMainElements.locatePaging();
		if(element == null){
			return;
		}
		pageSize++;
		LogHandler.info("Paging:"+pageSize);
		pagingAndParseCompany(element);
	}

	private static void pagingAndParseCompany(IElement element) {
		if(JobMain.TEST && pageSize > 3){
			return;
		}
		JobMain.FINISH = false;
		element.click();
		JobMain.waitingLoading();
		ParseCompanyList.parseCompanies();
		doPaging();
	}

}
