package com.yesibc.job51.web.search;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.dao.WebPagesDao;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.model.WebPages;
import com.yesibc.job51.service.CompanyInfoHandlerService;
import com.yesibc.job51.web.support.CompanyInfoSupport;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LocateCompanyInfo;

public class ParseCompanyNJobLinks {
	private static Log log = LogFactory.getLog(ParseCompanyNJobLinks.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

	public static void parseJobLinks(int index, Company company, ProcessContext processContext)
			throws ApplicationException {

		log.info(processContext.getLogTitle() + "Parsing web paging to company object for [" + company.getCompanyCode()
				+ "," + company.getCompanyName() + "]");

		parseToCompany(company, processContext);

		if (!ClawerConstants.TEST_DAO) {
			try {
				CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
						.getBean("companyInfoHandlerService");
				companyInfoHandlerService.update(company);
				// companyInfoHandlerService.logHibernateStat();

				log.info(processContext.getLogTitle() + "Update company to DB for [" + company.getCompanyCode() + ","
						+ company.getCompanyName() + "] OK.");
			} catch (Exception e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + ",url="
						+ processContext.getBrowser().getURL() + " Update company to DB error! " + company.toString(),
						e);
			}
		}

		putJobLinks2Context(index, processContext, company);
		log.info(processContext.getLogTitle() + "Get all job links to context for [" + company.getCompanyCode() + ","
				+ company.getCompanyName() + "]");
	}

	private static void onePage(ProcessContext processContext, Company company) {
		List<IElement> urls = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"),
				"href", ClawerConstants.JOB_URL_PREFIX);
		String url = null;
		List<WebPages> wps = new ArrayList<WebPages>();
		for (IElement ie : urls) {
			url = ie.getAttribute("href", 0);
			if(CompanyJobContext.getJobsURL().contains(url)){
				continue;
			}
			WebPages wp = new WebPages();
			wp.setUrl(url);
			wp.setPageType(WebPages.PAGE_TYPE_JOB_LIST);
			wp.setRequestId(ClawerConstants.REQUEST_ID);
			wp.setStatus(WebPages.STATUS_KO);
			wp.setUpdateDate(new Date());
			CompanyJobContext.setUrlJob(wp);
			wps.add(wp);
		}
		if (!ClawerConstants.TEST_DAO) {
			WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
			webPagesDao.saveByBatch(wps);
		}
		log.info(processContext.getLogTitle() + "One page - Jobs size " + urls.size() + " for ["
				+ company.getCompanyCode() + "," + company.getCompanyName() + "] and save 2 DB.");
	}

	private static int byClick50(ProcessContext processContext, Company company, int index) {
		String title = processContext.getLogTitle();
		String url = processContext.getBrowser().getURL();
		int positionOfURL = 1;
		try {
			IElement ie50 = get50Button(processContext);
			log.info(processContext.getLogTitle() + " for [" + company.getCompanyCode() + ","
					+ company.getCompanyName() + "] 50 perpage [1] loading!");

			IBrowserCanvas browser = JobSupport.initLoading(processContext, title + "|| Sub-1 [" + positionOfURL + "]",
					index);
			processContext.getSearchJobEngine().setFinish(false);
			processContext.getSearchJobEngine().setBrowser(browser);
			processContext.getSearchJobEngine().onDocumnetComplete();

			ie50.click();

			String subUrl = url;
			String okUrl = null;
			if (browser != null) {
				if (browser.getURL() != null) {
					okUrl = browser.getURL();
					subUrl = subUrl + "||SUB1||" + okUrl;
				} else {
					subUrl = url + "||SUB1|| is null!";
				}
			}

			boolean loaded = processContext.getSearchJobEngine().waitingLoading(index, subUrl);
			if (!loaded) {
				browser = JobSupport.reLoading(processContext, title + "|| Sub-1 [" + positionOfURL + "]", index);
				processContext.getSearchJobEngine().onDocumnetComplete();
				log.info(processContext.getLogTitle() + "ReStart Loading  " + subUrl);
				browser.loadURL(okUrl);
				loaded = processContext.getSearchJobEngine().waitingLoading(index, subUrl);
				if (!loaded) {
					ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "Two times refresh and waiting error1!"
							+ subUrl);
				}
			}

		} catch (Exception e) {
			ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "!parseJobLinks!putJobLinks2Context-1!", e);
		} finally {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
		}

		List<IElement> urls = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"),
				"href", ClawerConstants.JOB_URL_PREFIX);
		List<WebPages> wps = new ArrayList<WebPages>();
		for (IElement ie : urls) {
			url = ie.getAttribute("href", 0);
			WebPages wp = new WebPages();
			wp.setUrl(url);
			wp.setPageType(WebPages.PAGE_TYPE_JOB_LIST);
			wp.setRequestId(ClawerConstants.REQUEST_ID);
			wp.setStatus(WebPages.STATUS_KO);
			wp.setUpdateDate(new Date());
			CompanyJobContext.setUrlJob(wp);
			wps.add(wp);
		}
		if (!ClawerConstants.TEST_DAO) {
			WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
			webPagesDao.saveByBatch(wps);
		}
		log.info(processContext.getLogTitle() + "By Click 50 button 1 - Jobs size " + urls.size() + " for ["
				+ company.getCompanyCode() + "," + company.getCompanyName() + "] and save 2 DB.");
		return urls.size();
	}

	/**
	 * <pre>
	 * If = 1 page
	 *    put jobs to context
	 * else
	 *    click 50 per page
	 *    	if = 1 page
	 *    		put jobs to context
	 *    	else 
	 *    		while has next page
	 *    			put jobs to context.
	 * 
	 * </pre>
	 * 
	 * @param processContext
	 */
	private static void putJobLinks2Context(int index, ProcessContext processContext, Company company) {
		String[] innerTxts = { ClawerConstants.NEXT_PAGE_IMG };
		String title = processContext.getLogTitle();
		List<IElement> ies = JobSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"),
				innerTxts);
		if (ies == null || ies.size() == 0) {
			onePage(processContext, company);
			return;
		}

		int size = byClick50(processContext, company, index);
		if (size < ClawerConstants.JOBS_PER_PAGE) {
			return;
		}

		paging(index, title, processContext, company);
	}

	private static void paging(int index, String title, ProcessContext processContext, Company company) {
		int positionOfURL = 1;
		String[] innerTxts = { ClawerConstants.NEXT_PAGE_IMG };
		List<IElement> ies = JobSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"),
				innerTxts);
		int size = 0;
		List<IElement> urls = null;
		String url = processContext.getBrowser().getURL();
		while (ies != null && ies.size() > 0) {
			positionOfURL++;
			try {
				IBrowserCanvas browser = JobSupport.initLoading(processContext, title + "|| Sub-2 [" + positionOfURL
						+ "] ", index);
				processContext.getSearchJobEngine().setFinish(false);
				processContext.getSearchJobEngine().setBrowser(browser);
				processContext.getSearchJobEngine().onDocumnetComplete();

				log.info(processContext.getLogTitle() + " for [" + company.getCompanyCode() + ","
						+ company.getCompanyName() + "] 50 perpage [" + positionOfURL + "] loading!");

				ies.get(0).click();

				String subUrl = url;
				String okUrl = null;
				if (browser != null) {
					if (browser.getURL() != null) {
						okUrl = browser.getURL();
						subUrl = subUrl + "||SUB2||" + okUrl;
					} else {
						subUrl = url + "||SUB2|| is null!";
					}
				}

				boolean loaded = processContext.getSearchJobEngine().waitingLoading(index, subUrl);
				if (!loaded) {
					browser = JobSupport.reLoading(processContext, title + "|| Sub-2 [" + positionOfURL + "] ", index);
					processContext.getSearchJobEngine().onDocumnetComplete();
					log.info(processContext.getLogTitle() + "ReStart Loading error2 " + subUrl);
					browser.loadURL(okUrl);
					loaded = processContext.getSearchJobEngine().waitingLoading(index, subUrl);
					if (!loaded) {
						ErrorHandler.errorLogAndMail(processContext.getLogTitle()
								+ "Two times refresh and waiting error2!" + subUrl);
					}
				}

			} catch (Exception e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "!parseJobLinks!putJobLinks2Context-["
						+ positionOfURL + "]!", e);
			} finally {
				WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
			}

			urls = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"), "href",
					ClawerConstants.JOB_URL_PREFIX);
			List<WebPages> wps = new ArrayList<WebPages>();
			for (IElement ie : urls) {
				url = ie.getAttribute("href", 0);
				WebPages wp = new WebPages();
				wp.setUrl(url);
				wp.setPageType(WebPages.PAGE_TYPE_JOB_LIST);
				wp.setRequestId(ClawerConstants.REQUEST_ID);
				wp.setStatus(WebPages.STATUS_KO);
				wp.setUpdateDate(new Date());
				CompanyJobContext.setUrlJob(wp);
				wps.add(wp);
			}
			if (!ClawerConstants.TEST_DAO) {
				WebPagesDao webPagesDao = (WebPagesDao) SpringContext.getBean("webPagesDao");
				webPagesDao.saveByBatch(wps);
			}

			size = size + urls.size();
			ies = JobSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"), innerTxts);
		}

		log.info(processContext.getLogTitle() + " for [" + company.getCompanyCode() + "," + company.getCompanyName()
				+ "] By Click 50 button 2 - Jobs size is [" + size + "]");
	}

	private static IElement get50Button(ProcessContext processContext) {
		String[] innerTxts = { ">50<" };
		List<IElement> ies = JobSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"),
				innerTxts);
		return ies.get(0);
	}

	public static void parseToCompany(Company company, ProcessContext processContext) {

		LocateCompanyInfo.checkCompanyDetail(processContext);

		CompanyInfoSupport.setCompanyCommon(company);

		String[] industryTypeScale = LocateCompanyInfo.getComIndustryTypeScale(processContext);
		company.setCompanyIndustry1Name(industryTypeScale[0]);
		company.setCompanyIndustry2Name(industryTypeScale[1]);
		company.setCompanyTypeName(industryTypeScale[2]);
		company.setCompanyScaleName(industryTypeScale[3]);

		String website = LocateCompanyInfo.getWebsite(processContext);
		company.setHomepage1(website);

		String address = LocateCompanyInfo.getAddress(processContext);
		int position = CompanyInfoSupport.setAddress(processContext, company, address);

		String zip = LocateCompanyInfo.getZip(processContext);
		if (!"".equals(zip)) {
			CompanyInfoSupport.setZip2CompanyHeaders(position, company, zip);
		}

		String fax = LocateCompanyInfo.getFax(processContext);
		String tel = LocateCompanyInfo.getTel(processContext);
		String mobile = LocateCompanyInfo.getMobile(processContext);
		if (!"".equals(fax) || !"".equals(tel) || !"".equals(mobile)) {
			CompanyInfoSupport.setFax2CompanyHeaders(processContext, position, company, fax, tel, mobile);
		}

		String linkman = LocateCompanyInfo.getLinkman(processContext);
		if (!"".equals(linkman)) {
			CompanyInfoSupport.setLinkMan2CompanyHeaders(position, company, linkman);
		}

		String email = LocateCompanyInfo.getEmail(processContext);
		if (!"".equals(email)) {
			boolean isSplit = false;
			String[] emails = null;
			for (String temp : ClawerConstants.EMAIL_SPLITS) {
				if (email.indexOf(temp) > 0) {
					isSplit = true;
					emails = email.split(temp);
					break;
				}
			}

			if (isSplit) {
				for (String em : emails) {
					if (!StringUtils.isEmail(em)) {
						CompanyJobContext.LOG_MANUAL.info(processContext.getLogTitle() + "Email is error![" + email
								+ "]. URL is " + processContext.getBrowser().getURL());
					} else {
						if (!CompanyJobContext.getEmails().contains(em)) {
							CompanyInfoSupport.setEmail2CompanyHeaders(processContext, position, company, em);
							CompanyJobContext.setEmails(em);
						}
					}
				}
			} else {
				if (!StringUtils.isEmail(email)) {
					CompanyJobContext.LOG_MANUAL.info(processContext.getLogTitle() + "Email is error![" + email
							+ "]. URL is " + processContext.getBrowser().getURL());
				} else {
					if (!CompanyJobContext.getEmails().contains(email)) {
						CompanyInfoSupport.setEmail2CompanyHeaders(processContext, position, company, email);
						CompanyJobContext.setEmails(email);
					}
				}
			}
		}

		String description = LocateCompanyInfo.getDescription(processContext);
		if (!"".equals(description)) {
			CompanyInfoSupport.setCompanyIntroduction(company, description);
		}

	}

}
