package com.yesibc.job51.web.search;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.company.LogHandler;
import com.yesibc.job51.model.Company;
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

	public static void parseJobLinks(int index, ProcessContext processContext) throws ApplicationException {
		LocateCompanyInfo.checkCompanyDetail(processContext);
		String companyCode = ClawerConstants.FROM_WHERE_51JOB + "_"
				+ CompanyInfoSupport.getCompanyCode(processContext.getBrowser().getURL());
		Company company = CompanyJobContext.getCompanies(companyCode);

		log.info(processContext.getLogTitle() + "Parsing web paging to company object for [" + companyCode + ","
				+ company.getCompanyName() + "]");
		parseToCompany(company, processContext);

		if (!ClawerConstants.TEST_DAO) {
			try {
				CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
						.getBean("companyInfoHandlerService");
				companyInfoHandlerService.save(company);
				// companyInfoHandlerService.logHibernateStat();

				log.info(processContext.getLogTitle() + "Save company to DB for [" + companyCode + ","
						+ company.getCompanyName() + "] OK.");
			} catch (Exception e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + ",url="
						+ processContext.getBrowser().getURL() + " companyInfoHandlerService error! "
						+ company.toString(), e);
			}
		}

		putJobLinks2Context(index, processContext, company);
		log.info(processContext.getLogTitle() + "Get all job links to context for [" + companyCode + ","
				+ company.getCompanyName() + "]");
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
		List<IElement> ies = JobSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"),
				innerTxts);
		List<IElement> urls = null;
		if (ies == null || ies.size() == 0) {
			urls = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"), "href",
					ClawerConstants.JOB_URL_PREFIX);
			log.info(processContext.getLogTitle() + "Jobs size " + urls.size() + " for [" + company.getCompanyCode()
					+ "," + company.getCompanyName() + "]");
			for (IElement ie : urls) {
				CompanyJobContext.setUrlJobs(ie.getAttribute("href", 0), company);
			}
			return;
		}

		String title = processContext.getLogTitle();
		String url = processContext.getBrowser().getURL();
		int positionOfURL = 1;
		try {
			IElement ie50 = get50Button(processContext);
			log.info(processContext.getLogTitle() + " for [" + company.getCompanyCode() + ","
					+ company.getCompanyName() + "] 50 perpage [1] loading!");

			IBrowserCanvas browser = JobSupport.initLoading(processContext, title + "|| Sub-1 [" + positionOfURL + "]",
					index, false);
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
				browser = JobSupport.initLoading(processContext, title + "|| Sub-1 [" + positionOfURL + "]", index,
						true);
				processContext.getSearchJobEngine().onDocumnetComplete();
				log.info(processContext.getLogTitle() + "ReStart Loading error1 " + subUrl);
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

		urls = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"), "href",
				ClawerConstants.JOB_URL_PREFIX);
		for (IElement ie : urls) {
			CompanyJobContext.setUrlJobs(ie.getAttribute("href", 0), company);
		}

		int size = urls.size();
		ies = JobSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"), innerTxts);
		while (ies != null && ies.size() > 0) {
			positionOfURL++;
			try {
				IBrowserCanvas browser = JobSupport.initLoading(processContext, title + "|| Sub-2 [" + positionOfURL
						+ "] ", index, false);
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
					browser = JobSupport.initLoading(processContext, title + "|| Sub-2 [" + positionOfURL + "] ",
							index, true);
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
			for (IElement ie : urls) {
				CompanyJobContext.setUrlJobs(ie.getAttribute("href", 0), company);
			}
			size = size + urls.size();
			ies = JobSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"), innerTxts);
		}

		log.info(processContext.getLogTitle() + " for [" + company.getCompanyCode() + "," + company.getCompanyName()
				+ "] Jobs size is [" + size + "]");

	}

	private static IElement get50Button(ProcessContext processContext) {
		String[] innerTxts = { ">50<" };
		List<IElement> ies = JobSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"),
				innerTxts);
		return ies.get(0);
	}

	private static void parseToCompany(Company company, ProcessContext processContext) {
		LogHandler.info(processContext.getLogTitle() + "company:" + company.getCompanyName() + ","
				+ company.getCompanyCode());

		CompanyInfoSupport.setCompanyCommon(company);

		String[] industryTypeScale = LocateCompanyInfo.getComIndustryTypeScale(processContext);
		company.setCompanyIndustry1Name(industryTypeScale[0]);
		company.setCompanyIndustry2Name(industryTypeScale[1]);
		company.setCompanyTypeName(industryTypeScale[2]);
		company.setCompanyScaleName(industryTypeScale[3]);

		String website = LocateCompanyInfo.getWebsite(processContext);
		company.setHomepage1(website);

		boolean have = false;
		String address = LocateCompanyInfo.getAddress(processContext);
		have = CompanyInfoSupport.setAddress(company, address);

		String zip = LocateCompanyInfo.getZip(processContext);
		if (!"".equals(zip)) {
			CompanyInfoSupport.setZip2CompanyHeaders(have, company, zip);
			have = true;
		}

		String fax = LocateCompanyInfo.getFax(processContext);
		String tel = LocateCompanyInfo.getTel(processContext);
		String mobile = LocateCompanyInfo.getMobile(processContext);
		if (!"".equals(fax) || !"".equals(tel) || !"".equals(mobile)) {
			CompanyInfoSupport.setFax2CompanyHeaders(have, company, fax, tel, mobile);
			have = true;
		}

		String linkman = LocateCompanyInfo.getLinkman(processContext);
		if (!"".equals(linkman)) {
			CompanyInfoSupport.setLinkMan2CompanyHeaders(have, company, linkman);
		}

		String email = LocateCompanyInfo.getEmail(processContext);
		if (!"".equals(email)) {
			boolean isSplit = false;
			for (String temp : ClawerConstants.EMAIL_SPLITS) {
				if (email.indexOf(temp) > 0) {
					isSplit = true;
					String[] emails = email.split(temp);
					for (String em : emails) {
						if (!StringUtils.isEmail(em)) {
							CompanyJobContext.LOG_MANUAL.info(processContext.getLogTitle() + "Email is error![" + email
									+ "]. URL is " + processContext.getBrowser().getURL());
						} else {
							CompanyInfoSupport.setEmail2CompanyHeaders(have, company, em);
							CompanyJobContext.setEmails(em);
						}
					}
					break;
				}
			}
			if (!isSplit) {
				if (!StringUtils.isEmail(email)) {
					CompanyJobContext.LOG_MANUAL.info(processContext.getLogTitle() + "Email is error![" + email
							+ "]. URL is " + processContext.getBrowser().getURL());
				} else {
					CompanyInfoSupport.setEmail2CompanyHeaders(have, company, email);
					CompanyJobContext.setEmails(email);
				}
			}
		}

		String description = LocateCompanyInfo.getDescription(processContext);
		if (!"".equals(description)) {
			CompanyInfoSupport.setCompanyIntroduction(company, description);
		}

	}

}
