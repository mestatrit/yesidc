package com.yesibc.job51.web.search;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.DateUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.company.LogHandler;
import com.yesibc.job51.dao.WebPagesDao;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.model.WebPages;
import com.yesibc.job51.service.CompanyInfoHandlerService;
import com.yesibc.job51.web.support.CompanyInfoSupport;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.JobSupport;

public class CompanyJobContext {

	public static Log LOG_MANUAL = LogFactory.getLog(ClawerConstants.MANUAL_LOG);
	private static Log log = LogFactory.getLog(CompanyJobContext.class);
	private static Log logurls = LogFactory.getLog(ClawerConstants.LOG_URLS);

	private static Map<String, Company> companies = new HashMap<String, Company>();
	private static List<WebPages> searchPagesWP = new ArrayList<WebPages>();
	private static List<WebPages> jobsWP = new ArrayList<WebPages>();
	private static List<String> pagesURL = new ArrayList<String>();
	private static List<String> jobsURL = new ArrayList<String>();
	private static List<String> emails = new ArrayList<String>();
	private static List<String> searchList = new ArrayList<String>();

	static {
		initSearchList();
		intWebpages();
		intCompanies();
	}

	private static void intCompanies() {

		try {
			if (!ClawerConstants.TEST_DAO) {
				CompanyInfoHandlerService cih = (CompanyInfoHandlerService) SpringContext
						.getBean("companyInfoHandlerService");
				cih.initalCompanyInfo(companies, emails);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new NestedRuntimeException("IntCompanies error!");
		}

		if (companies != null && !companies.isEmpty()) {
			LogHandler.info("Init company map! map size is " + companies.size());
		}
		if (emails != null && !emails.isEmpty()) {
			LogHandler.info("Init email map! map size is " + emails.size());
		}
	}

	private static void intWebpages() {
		try {
			if (!ClawerConstants.TEST_DAO) {
				WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
				searchPagesWP = webPagesDao.getWebPagesByType(WebPages.PAGE_TYPE_SEARCH_PAGES, WebPages.STATUS_KO);
				jobsWP = webPagesDao.getWebPagesByType(WebPages.PAGE_TYPE_JOB_LIST, WebPages.STATUS_KO);
			}
		} catch (Exception e) {
			throw new NestedRuntimeException("IntCompanies:", e);
		}

		if (searchPagesWP != null && !searchPagesWP.isEmpty()) {
			for (WebPages wp : searchPagesWP) {
				pagesURL.add(wp.getUrl());
			}
			LogHandler.info("Init pages List pages! webpages size is " + searchPagesWP.size());
		}
		if (jobsWP != null && !jobsWP.isEmpty()) {
			for (WebPages wp : jobsWP) {
				jobsURL.add(wp.getUrl());
			}
			LogHandler.info("Init Job List pages! webpages size is " + jobsWP.size());
		}
	}

	private static void initSearchList() {
		try {
			String path = StringUtils.getRealPath(CompanyJobContext.class, null, null) + "resulturls.51job";
			File file = new File(path);
			if (!file.exists() || file.isDirectory())
				throw new FileNotFoundException();
			BufferedReader br = new BufferedReader(new FileReader(file));
			String temp = br.readLine();
			searchList.add(temp);
			while (temp != null) {
				temp = br.readLine();
				if (temp != null)
					searchList.add(temp);
			}
		} catch (Exception e) {
			ErrorHandler.error("intSearchInitialURLs!", e);
		}
		log.info("intResultURLs size:" + searchList.size());
	}

	public static String getNewUrlPage(String url, int page) {
		String pageTag1 = "curr_page=";
		String pageTag2 = "&lang=c";
		String newPage = url.substring(0, url.indexOf(pageTag1) + pageTag1.length()) + page
				+ url.substring(url.indexOf(pageTag2));
		return newPage;
	}

	public static int putJobsURL2Context(ProcessContext processContext) throws ApplicationException {
		List<IElement> elements = JobSupport.getElements(processContext.getBrowser().getDocument().getAll(), "A",
				"href", ClawerConstants.JOB_URL_PREFIX);
		if (elements == null || elements.isEmpty()) {
			return -1;
		}

		String name = "";
		String jobCode = "";
		String url = "";
		int position = 0;

		List<WebPages> wps = new ArrayList<WebPages>();
		for (IElement ie : elements) {
			url = ClawerUtils.removeSpace(ie.getAttribute("href", 0));

			if (jobsURL.contains(url)) {
				continue;
			} else {
				jobsURL.add(url);
			}

			name = StringUtils.parseOutHTML(ClawerUtils.removeSpace(ie.getInnerHTML()));
			if (name.equals("")) {
				continue;
			}

			position = url.indexOf(ClawerConstants.JOB_URL_POSTFIX);
			jobCode = url.substring(ClawerConstants.JOB_URL_PREFIX.length(), position);

			WebPages wp = new WebPages();
			wp.setUrl(url);
			wp.setPageType(WebPages.PAGE_TYPE_JOB_LIST);
			wp.setRequestId(ClawerConstants.REQUEST_ID);
			wp.setStatus(WebPages.STATUS_KO);
			wp.setUpdateDate(new Date());
			wps.add(wp);
			jobsWP.add(wp);
			log.info(processContext.getLogTitle() + "Put [" + jobCode + "," + name + "] url=[" + url + "] to job map!");
		}

		try {
			if (!ClawerConstants.TEST_DAO) {
				WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
				webPagesDao.saveByBatch(wps);
			}
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail("Save Pages of WebPages error!size=" + wps.size(), e);
		}
		return wps.size();
	}

	public static int putCompanyLinks2Context(ProcessContext processContext) throws ApplicationException {
		List<IElement> elements = JobSupport.getElements(processContext.getBrowser().getDocument().getAll(), "A",
				"href", ClawerConstants.COMPANY_URL_TAG);

		if (elements == null || elements.size() < 1) {
			return -1;
		}

		String name = "";
		String companyId = "";
		String url = "";
		int size = 0;
		int sizeFilter = 0;
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
				sizeFilter++;
				log.debug(processContext.getLogTitle() + " Filtered:" + companyId + ",name=" + name);
				com = null;
				continue;
			}

			CompanyInfoSupport.setCompanyCommon(com, true);
			com.setLoadOK(Company.LOAD_KO);
			size++;
			logurls.info(processContext.getLogTitle() + "Put [" + companyId + "," + name + "] url=[" + url
					+ "] to company map!");

			try {
				if (!ClawerConstants.TEST_DAO) {
					CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
							.getBean("companyInfoHandlerService");
					companyInfoHandlerService.save(com);
				}
			} catch (Exception e) {
				throw new ApplicationException("Save company error!" + com.getCompanyName() + "," + com.getUrl(), e);
			}

		}

		return size;

	}

	private static boolean filterCompany(String companyId, Company com) {
		if (companies.containsKey(companyId)) {
			if (Company.LOAD_OK.equals(companies.get(companyId).getLoadOK())) {
				Date updateDate = companies.get(companyId).getUpdateDate();
				if (updateDate != null) {
					if (DateUtils.substractDate(updateDate, new Date()) < Company.UPDATE_DAYS) {
						return true;
					}
				}
			} else {
				return true;
			}
		}
		companies.put(companyId, com);

		return false;
	}

	public static void main(String[] args) {
		String url = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=4200,4300,0300&industrytype=22&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=1&fromType=14";
		System.out.println(getNewUrlPage(url, 99));
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

	public static int getJobsWPLength() {
		return jobsWP.size();
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

	public static void putSearchPages2Conext(WebPages wp) {
		searchPagesWP.add(wp);

	}

	public static List<WebPages> getSearchPagesWP() {
		return searchPagesWP;
	}

	public static int getSearchPagesSize() {
		return searchPagesWP.size();
	}

	public static List<String> getJobsURL() {
		return jobsURL;
	}

	public static List<String> getPagesURL() {
		return pagesURL;
	}

	public static int getJobsURLSize() {
		return jobsURL.size();
	}

	public static List<WebPages> getJobsWP() {
		return jobsWP;
	}

	public static List<String> getSearchList() {
		return searchList;
	}

	public static int getSearchListSize() {
		return searchList.size();
	}

}
