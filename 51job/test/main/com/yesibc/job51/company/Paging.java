package com.yesibc.job51.company;

import java.util.List;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.job51.common.ClawerConstants;

public class Paging {

	public static void doPaging() {
		List<IElement> elements = JobSupport.getElements(JobMain.getDoc().getAll(), "A", "href", "javascript:jump",
				ClawerConstants.NEXTPAGE);
		LogHandler.info("Paging is end!");
		pagingAndParseCompany(elements);
	}

	private static void pagingAndParseCompany(List<IElement> elements) {
		if (elements == null || elements.size() < 1) {
			return;
		}
		IElement ie = elements.get(0);
		LogHandler.info("Paging:"+ie.getOuterHTML());
		JobMain.FINISH = false;
		ie.click();
		JobMain.waitingLoading();
		ParseCompanyList.parseCompanies();
		elements = JobSupport.getElements(JobMain.getDoc().getAll(), "A", "href", "javascript:jump",
				ClawerConstants.NEXTPAGE);
		pagingAndParseCompany(elements);
	}

}
