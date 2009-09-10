package com.yesibc.job51.company;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.company.search1.LocateCompanyInfo;
import com.yesibc.job51.dao.CompanyDao;
import com.yesibc.job51.model.Company;

public class ParseCompanyList {

	public static Map<String, Company> map = new HashMap<String, Company>();

	static {
		initMap();
	}

	public static void parseCompanies() {
		// Add code to judge this page is OK?
		int i = LocateCompanyInfo.checkValidation();
		if (i < 1) {
			return;
		}

		// get by companyId or compayName
		List<Company> companies = getSimpleCompanies();
		if (companies == null) {
			ErrorHandler.error("getSimpleCompanies error 1!");
			throw new NestedRuntimeException("getSimpleCompanies error 1!");
		}

		// TODO:multi-thread to run job detail.
		ParseCompany.toDetailCompany(companies);
	}

	private static void initMap() {
		CompanyDao companyDao = (CompanyDao) SpringContext
				.getBean("companyDao");
		List<Company> companies = companyDao.findAll(Company.class);
		for (Company company : companies) {
			map.put(company.getCompanyCode(), company);
		}
	}

	private static boolean filterCompany(String companyId, Company com) {
		if (map.containsKey(companyId)) {
			return true;
		}
		map.put(companyId, com);
		return false;
	}

	private static List<Company> getSimpleCompanies() {
		List<IElement> elements = JobSupport.getElements(JobMain.getDoc()
				.getAll(), "A", "href", LocateCompanyInfo.COMPANY_URL);
		List<Company> list = new ArrayList<Company>();
		String name = "";
		String companyId = "";
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
			companyId = getCompanyId(url);
			Company com = new Company();
			com.setCompanyName(name);
			com.setUrl(url);
			com.setCompanyCode(companyId);

			if (filterCompany(companyId, com)) {
				com = null;
				continue;
			}

			list.add(com);
		}
		return list;
	}

	private static String getCompanyId(String url) {
		int i = 34;
		int j = url.indexOf(",", i);
		LogHandler.debug(i + "," + j);
		return url.substring(i, j);
	}

	public static void main(String[] args) {
		String url = "http://search.51job.com/list/co,c,872424,0000,10,1.html";
		LogHandler.info(getCompanyId(url));

	}

}
