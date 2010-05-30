package com.yesibc.job51.web.validation;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.components.webrenderer.WebrendererSupport;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.CompanyInfoSupport;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.BrowserSupport;
import com.yesibc.job51.web.support.LocateCompanyInfo;

public class ParseCompanyDetailSupport {
	private static Log log = LogFactory.getLog(ParseCompanyDetailSupport.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

	public static void parseJobLinks(int index, Company company, TestProcessContext processContext)
			throws ApplicationException {

		log.info(processContext.getLogTitle() + "Parsing web paging to company object for [" + company.getCompanyCode()
				+ "," + company.getCompanyName() + "]");

		parseToCompany(company, processContext);

		putJobLinks2Context(index, processContext, company);

		log.info(processContext.getLogTitle() + "Get all job links to context for [" + company.getCompanyCode() + ","
				+ company.getCompanyName() + "]");
	}

	private static void onePage(TestProcessContext processContext, Company company) throws ApplicationException {
		List<IElement> urls = WebrendererSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"),
				"href", ClawerConstants.JOB_URL_PREFIX);
		String url = null;
		for (IElement ie : urls) {
			url = ie.getAttribute("href", 0);
			if (ValidateWorkFLow.testJobsURL.contains(url)) {
				continue;
			}
			ValidateWorkFLow.testJobsURL.add(url);
		}
		log.info(processContext.getLogTitle() + "One page - Jobs size " + urls.size() + " for ["
				+ company.getCompanyCode() + "," + company.getCompanyName() + "] and save 2 DB.");
	}

	private static int byClick50(TestProcessContext processContext, Company company, int index) throws ApplicationException {
		String title = processContext.getLogTitle();
		String url = processContext.getBrowser().getURL();
		int positionOfURL = 1;
		try {
			IElement ie50 = get50Button(processContext);
			log.info(processContext.getLogTitle() + " for [" + company.getCompanyCode() + ","
					+ company.getCompanyName() + "] 50 perpage [1] loading!");

			IBrowserCanvas browser = BrowserSupport.initLoading(processContext, title + "|| Sub-1 [" + positionOfURL + "]",
					index);
			processContext.getCompanyDetailAndJobPaging().setFinish(false);
			processContext.getCompanyDetailAndJobPaging().setBrowser(browser);
			processContext.getCompanyDetailAndJobPaging().onDocumnetComplete();

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

			boolean loaded = processContext.getCompanyDetailAndJobPaging().waitingLoading(index, subUrl);
			if (!loaded) {
				browser = BrowserSupport.reLoading(processContext, title + "|| Sub-1 [" + positionOfURL + "]", index);
				processContext.getCompanyDetailAndJobPaging().onDocumnetComplete();
				log.info(processContext.getLogTitle() + "ReStart Loading  " + subUrl);
				browser.loadURL(okUrl);
				loaded = processContext.getCompanyDetailAndJobPaging().waitingLoading(index, subUrl);
				if (!loaded) {
					ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "Two times refresh and waiting error1!"
							+ subUrl);
				}
			}
			processContext.getCompanyDetailAndJobPaging().setFinish(true);

		} catch (Exception e) {
			ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "!parseJobLinks!putJobLinks2Context-1!", e);
		} finally {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
		}

		List<IElement> urls = WebrendererSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"),
				"href", ClawerConstants.JOB_URL_PREFIX);
		for (IElement ie : urls) {
			url = ie.getAttribute("href", 0);
			if (ValidateWorkFLow.testJobsURL.contains(url)) {
				continue;
			}
			ValidateWorkFLow.testJobsURL.add(url);
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
	 * @throws ApplicationException 
	 */
	private static void putJobLinks2Context(int index, TestProcessContext processContext, Company company) throws ApplicationException {
		String[] innerTxts = { ClawerConstants.NEXT_PAGE_IMG };
		String title = processContext.getLogTitle();
		List<IElement> ies = WebrendererSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"),
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

	private static void paging(int index, String title, TestProcessContext processContext, Company company) throws ApplicationException {
		int positionOfURL = 1;
		String[] innerTxts = { ClawerConstants.NEXT_PAGE_IMG };
		List<IElement> ies = WebrendererSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"),
				innerTxts);
		int size = 0;
		List<IElement> urls = null;
		String url = processContext.getBrowser().getURL();
		while (ies != null && ies.size() > 0) {
			positionOfURL++;
			try {
				IBrowserCanvas browser = BrowserSupport.initLoading(processContext, title + "|| Sub-2 [" + positionOfURL
						+ "] ", index);
				processContext.getCompanyDetailAndJobPaging().setFinish(false);
				processContext.getCompanyDetailAndJobPaging().setBrowser(browser);
				processContext.getCompanyDetailAndJobPaging().onDocumnetComplete();

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

				boolean loaded = processContext.getCompanyDetailAndJobPaging().waitingLoading(index, subUrl);
				if (!loaded) {
					browser = BrowserSupport.reLoading(processContext, title + "|| Sub-2 [" + positionOfURL + "] ", index);
					processContext.getCompanyDetailAndJobPaging().onDocumnetComplete();
					log.info(processContext.getLogTitle() + "ReStart Loading error2 " + subUrl);
					browser.loadURL(okUrl);
					loaded = processContext.getCompanyDetailAndJobPaging().waitingLoading(index, subUrl);
					if (!loaded) {
						ErrorHandler.errorLogAndMail(processContext.getLogTitle()
								+ "Two times refresh and waiting error2!" + subUrl);
					}
				}

				processContext.getCompanyDetailAndJobPaging().setFinish(true);
			} catch (Exception e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "!parseJobLinks!putJobLinks2Context-["
						+ positionOfURL + "]!", e);
			} finally {
				WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
			}

			urls = WebrendererSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"), "href",
					ClawerConstants.JOB_URL_PREFIX);
			for (IElement ie : urls) {
				url = ie.getAttribute("href", 0);
				if (ValidateWorkFLow.testJobsURL.contains(url)) {
					continue;
				}
				ValidateWorkFLow.testJobsURL.add(url);
			}

			size = size + urls.size();
			ies = WebrendererSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"), innerTxts);
		}

		log.info(processContext.getLogTitle() + " for [" + company.getCompanyCode() + "," + company.getCompanyName()
				+ "] By Click 50 button 2 - Jobs size is [" + size + "]");
	}

	private static IElement get50Button(TestProcessContext processContext) {
		String[] innerTxts = { ">50<" };
		List<IElement> ies = WebrendererSupport.getElementsByTxt(processContext.getBrowser().getDocument().getAll().tags("A"),
				innerTxts);
		return ies.get(0);
	}

	public static void parseToCompany(Company company, TestProcessContext processContext) throws ApplicationException {

		LocateCompanyInfo.checkCompanyDetail(processContext);

		CompanyInfoSupport.setCompanyCommon(company,true);

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

		List<String> emails = LocateCompanyInfo.getEmails(processContext);
		if (!CollectionUtils.isEmpty(emails)) {
			CompanyInfoSupport.setEmail2CompanyHeaders(position, company, emails);
		}

		String description = LocateCompanyInfo.getDescription(processContext);
		if (!"".equals(description)) {
			CompanyInfoSupport.setCompanyIntroduction(company, description);
		}

	}

}
