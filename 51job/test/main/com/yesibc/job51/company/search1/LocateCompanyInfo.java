package com.yesibc.job51.company.search1;

import java.util.List;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.job51.company.ErrorHandler;
import com.yesibc.job51.company.JobMain;
import com.yesibc.job51.company.JobSupport;

public class LocateCompanyInfo {

	public static final String COMPANY_URL = "http://search.51job.com/list/co";
	private static final String[] COMPANY_LIST_TAGS = { "职位名称", "公司名称", "工作地点", "发布日期" };
	private static final String COMPANY_LIST_ID = "resultList";
	private static final String COMPANY_LIST_RESULT_0 = "对不起,没有找到符合您条件的职位!";
	
	

	public static int checkValidation() {
		List<IElement> elements = JobSupport.getElements(JobMain.getDoc().getAll().tags("TABLE"), "id", COMPANY_LIST_ID);
		if (elements == null || elements.size() != 1) {
			ErrorHandler.error("Parse company list error!");
			throw new NestedRuntimeException("Parse company list error!");
		}
		String innerHtml = elements.get(0).getInnerHTML();
		for(String temp : COMPANY_LIST_TAGS){
			if(innerHtml.indexOf(temp) < 0){
				ErrorHandler.error("Parse company list error 1!");
				throw new NestedRuntimeException("Parse company list error 1!");
			}
		}
		
		if(innerHtml.indexOf(COMPANY_LIST_RESULT_0) > -1){
			return 0;
		}
		
		List<IElement> companies = JobSupport.getElements(JobMain.getDoc().getAll(), "A", "href", LocateCompanyInfo.COMPANY_URL);
		if(companies==null){			
			return 0;
		}else{
			return companies.size();
		}
		
		
	}

}
