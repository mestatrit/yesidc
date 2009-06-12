package com.yesibc.job51.company;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.model.Company;

public class ParseCompanyList {

	public static final String COMPANY_TAG = "/jobsearch/co_all_job.php?coid=(";

	public static void parseCompanies() {
		// Add code to judge this page is OK?

		// get by companyId or compayName
		List<Company> companies = getValidateCompanies();
		if (companies == null) {
			return;
		}
		
		//multi-thread to run job detail.
		ParseCompany.toDetailCompany(companies);
	}

	private static List<Company> getValidateCompanies() {
		Map<String, Company> companies = getSimpleCompanies();
		List<Company> list = new ArrayList<Company>();
		for(String str : companies.keySet()){
			Company company = companies.get(str);
			if(filterCompany(company)){
				continue;
			}
			list.add(company);
		}
		return list;
	}

	private static boolean filterCompany(Company company) {
		// TODO Auto-generated method stub
		return false;
	}

	private static Map<String, Company> getSimpleCompanies() {
		List<IElement> elements = JobSupport.getElements(JobMain.getDoc().getAll(), "A", "href", COMPANY_TAG);
		//TODO: Judge elements
		
		Map<String, Company> map = new HashMap<String, Company>();
		String name = "";
		String jobid = "";
		String url = "";
		for (IElement ie : elements) {
			url = ClawerUtils.removeSpace(ie.getAttribute("href", 0));
			if (url.equals("")) {
				continue;
			}
			name = ClawerUtils.removeSpace(ie.getInnerHTML());
			if (name.equals("")) {
				continue;
			}
			jobid = getJobid(url);
			Company com = new Company();
			com.setCompanyName(name);
			com.setUrl(url);
			com.setJobId(jobid);
			map.put(name, com);
		}
		return map;
	}

	private static String getJobid(String url) {
		return url.substring(url.indexOf("(") + 1, url.length() - 1);
	}
	
	public static void main(String[] args){
		String url = "/jobsearch/co_all_job.php?coid=(676835)";
		LogHandler.info(getJobid(url));
	}

}
