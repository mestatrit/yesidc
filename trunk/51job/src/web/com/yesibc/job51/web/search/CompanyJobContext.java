package com.yesibc.job51.web.search;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.company.LogHandler;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.service.CompanyInfoHandlerService;
import com.yesibc.job51.web.support.CompanyInfoSupport;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.JobSupport;

public class CompanyJobContext {

	public static Log LOG_MANUAL = LogFactory.getLog(ClawerConstants.MANUAL_LOG);
	private static Log log = LogFactory.getLog(CompanyJobContext.class);
	private static Log logurls = LogFactory.getLog(ClawerConstants.LOG_URLS);

	private static Map<String, Company> companies = new HashMap<String, Company>();
	private static List<String> urlCompanies = new ArrayList<String>();
	private static List<String> urlPages = new ArrayList<String>();
	private static List<String> urlJobs = new ArrayList<String>();
	private static List<String> emails = new ArrayList<String>();
	private static List<String> searchingUrls = new ArrayList<String>();
	private static List<String> searchResultUrls = new ArrayList<String>();


	static {
		intSearchURLs();
		intResultURLs();
		intCompanies();
	}

	private static void intCompanies() {
		if (ClawerConstants.TEST_DAO) {
			return;
		}

		CompanyInfoHandlerService cih = (CompanyInfoHandlerService) SpringContext.getBean("companyInfoHandlerService");
		try {
			cih.initalCompanyInfo(companies, emails);
		} catch (Exception e) {
			throw new NestedRuntimeException("IntCompanies:", e);
		}

		if (companies != null && !companies.isEmpty()) {
			LogHandler.info("Init company map! map size is " + companies.size());
		}
		if (emails != null && !emails.isEmpty()) {
			LogHandler.info("Init email map! map size is " + emails.size());
		}
	}

	private static void intSearchURLs() {
		try {
			String path = StringUtils.getRealPath(CompanyJobContext.class, null, null) + "searchurls.51job";
			File file = new File(path);
			if (!file.exists() || file.isDirectory())
				throw new FileNotFoundException();
			FileReader fr = new FileReader(file);
			BufferedReader br = new BufferedReader(fr);
			String temp = br.readLine();
			searchingUrls.add(temp);
			while (temp != null) {
				temp = br.readLine();
				if (temp != null)
					searchingUrls.add(temp);
				log.info("intSearchURLs size:" + temp);
			}
			br.close();
			fr.close();
		} catch (Exception e) {
			ErrorHandler.error("intSearchInitialURLs!", e);
		}
		log.info("intSearchURLs size:" + searchingUrls.size());
	}

	private static void intResultURLs() {
		try {
			String path = StringUtils.getRealPath(CompanyJobContext.class, null, null) + "resulturls.51job";
			File file = new File(path);
			if (!file.exists() || file.isDirectory())
				throw new FileNotFoundException();
			BufferedReader br = new BufferedReader(new FileReader(file));
			String temp = br.readLine();
			searchResultUrls.add(temp);
			while (temp != null) {
				temp = br.readLine();
				if (temp != null)
					searchResultUrls.add(temp);
			}
		} catch (Exception e) {
			ErrorHandler.error("intSearchInitialURLs!", e);
		}
		log.info("intResultURLs size:" + searchResultUrls.size());
	}

	public static String getNewUrlPage(String url, int page) {
		String pageTag1 = "curr_page=";
		String pageTag2 = "&lang=c";
		String newPage = url.substring(0, url.indexOf(pageTag1) + pageTag1.length()) + page
				+ url.substring(url.indexOf(pageTag2));
		return newPage;
	}

	public static void putCompanyLinks2Context(ProcessContext processContext) {
		List<IElement> elements = JobSupport.getElements(processContext.getBrowser().getDocument().getAll(), "A",
				"href", ClawerConstants.COMPANY_URL_TAG);
		String name = "";
		String companyId = "";
		String url = "";
		for (IElement ie : elements) {
			url = ClawerUtils.removeSpace(ie.getAttribute("href", 0));
			if (url.equals("")) {
				continue;
			}
			name = StringUtils.parseOutHTML(ClawerUtils.removeSpace(ie.getInnerHTML()));
			if (name.equals("")) {
				continue;
			}
			companyId = ClawerConstants.FROM_WHERE_51JOB + "_" + CompanyInfoSupport.getCompanyCode(url);
			Company com = new Company();
			com.setCompanyName(name);
			com.setUrl(url);
			com.setCompanyCode(companyId);

			if (filterCompany(companyId, com)) {
				log.debug(processContext.getLogTitle() + " Filtered:" + companyId + ",name=" + name);
				com = null;
				continue;
			}

			logurls.info(processContext.getLogTitle() + "Put [" + companyId + "," + name + "] url=[" + url
					+ "] to company map!");

			urlCompanies.add(url);
		}
		if (!companies.isEmpty()) {
			LogHandler.info(processContext.getLogTitle() + "Company map size is " + companies.size());
		}
	}

	private static boolean filterCompany(String companyId, Company com) {
		if (companies.containsKey(companyId)) {
			return true;
		}
		companies.put(companyId, com);

		return false;
	}

	public static void main(String[] args) {
		String url = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=4200,4300,0300&industrytype=22&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=1&fromType=14";
		System.out.println(getNewUrlPage(url,99));
		// while (true) {
		// doCount("test");
		// }
	}

	/**
	 * @return the companies
	 */
	public static Company getCompanies(String code) {
		return companies.get(code);
	}

	/**
	 * @param companies
	 *            the companies to set
	 */
	public static void setCompanies(String key, Company company) {
		companies.put(key, company);
	}

	public static int getCompaniesLength() {
		return companies.size();
	}

	/**
	 * @return the urlCompanies
	 */
	public static List<String> getUrlCompanies() {
		return urlCompanies;
	}

	public static int getUrlCompaniesLength() {
		return urlCompanies.size();
	}

	/**
	 * @param urlCompanies
	 *            the urlCompanies to set
	 */
	public static void setUrlCompanies(String url) {
		urlCompanies.add(url);
	}

	/**
	 * @return the urlPages
	 */
	public static List<String> getUrlPages() {
		return urlPages;
	}

	public static int getUrlPagesLength() {
		return urlPages.size();
	}

	/**
	 * @param urlPages
	 *            the urlPages to set
	 */
	public static void setUrlPages(String url) {
		urlPages.add(url);
	}

	/**
	 * @return the urlJobs
	 */
	public static List<String> getUrlJobs() {
		return urlJobs;
	}

	public static int getUrlJobsLength() {
		return urlJobs.size();
	}

	/**
	 * @param urlJobs
	 *            the urlJobs to set
	 */
	public static void setUrlJobs(String url, Company company) {
		logurls.info("Put [" + company.getCompanyCode() + "," + company.getCompanyName() + "] job url=[" + url
				+ "] to job map!");
		urlJobs.add(url);
	}

	/**
	 * @return the emails
	 */
	public static List<String> getEmails() {
		return emails;
	}

	public static int getEmailsLength() {
		return emails.size();
	}

	/**
	 * @param emails
	 *            the emails to set
	 */
	public static void setEmails(String email) {
		emails.add(email);
	}

	/**
	 * @return the searchingUrls
	 */
	public static List<String> getSearchingUrls() {
		return searchingUrls;
	}

	/**
	 * @param searchingUrls
	 *            the searchingUrls to set
	 */
	public static void setSearchingUrls(String url) {
		searchingUrls.add(url);
	}

	public static int getSearchingUrlsLength() {
		return searchingUrls.size();
	}

	/**
	 * @return the searchResultUrls
	 */
	public static List<String> getSearchResultUrls() {
		return searchResultUrls;
	}

	public static int getSearchResultUrlsLength() {
		return searchResultUrls.size();
	}

	/**
	 * 
	 * @param searchResultUrls
	 *            the searchResultUrls to set
	 */
	public static void setSearchResultUrls(String url) {
		searchResultUrls.add(url);
	}


}
