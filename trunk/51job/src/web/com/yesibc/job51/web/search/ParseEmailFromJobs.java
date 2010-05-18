package com.yesibc.job51.web.search;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.model.ComContactHeader;
import com.yesibc.job51.model.ComEmail;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.service.CompanyInfoHandlerService;
import com.yesibc.job51.web.support.CompanyInfoSupport;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LocateCompanyInfo;

public class ParseEmailFromJobs {
	public final static String[] mailStrs = { "mailto:" };
	public final static String[] comStrs = { ClawerConstants.OTHER_POSITION };
	private static Log log = LogFactory.getLog(ParseEmailFromJobs.class);
	private static Integer synchronizeObject = new Integer(0);

	public static void parseEmailFromJobs(ProcessContext processContext) throws ApplicationException {
		List<IElement> ies = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("TD"),
				"class", "txt_2no_border", mailStrs);
		if (ies == null || ies.isEmpty()) {
			log.info(processContext.getLogTitle() + "No mail found!");
			return;
		}

		String email = StringUtils.parseOutHTML(ies.get(0).getInnerHTML());
		email = ClawerUtils.removeSpecial(email);
		log.info(processContext.getLogTitle() + "Email found:" + email);
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
						CompanyJobContext.setEmails(em);
						saveEmail(processContext, em);
					}
				}
			}
		} else {
			if (!StringUtils.isEmail(email)) {
				CompanyJobContext.LOG_MANUAL.info(processContext.getLogTitle() + "Email is error![" + email
						+ "]. URL is " + processContext.getBrowser().getURL());
			} else {
				if (!CompanyJobContext.getEmails().contains(email)) {
					CompanyJobContext.setEmails(email);
					saveEmail(processContext, email);
				}
			}
		}
	}

	private static void saveEmail(ProcessContext processContext, String email) throws ApplicationException {
		List<IElement> ies = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"),
				"href", ClawerConstants.COMPANY_URL_TAG, comStrs);

		if (ies == null || ies.isEmpty()) {
			return;
		}

		String code = ClawerConstants.FROM_WHERE_51JOB + "_"
				+ CompanyInfoSupport.getCompanyCode(ies.get(0).getAttribute("href", 0));
		Company com = CompanyJobContext.getCompanies(code);
		if (com == null) {
			com = new Company();
			com.setCompanyCode(code);
			save2NewCompany(processContext, email, com);
		} else {
			save2ExistCompany(processContext, com, email);
		}
	}

	private static void save2ExistCompany(ProcessContext processContext, Company com, String email)
			throws ApplicationException {
		log.info(processContext.getLogTitle() + "Save to exist company!");
		List<ComContactHeader> comContactHeaders = com.getComContactHeaders();
		List<ComContactHeader> tempContactHeaders = new ArrayList<ComContactHeader>();
		String address = LocateCompanyInfo.getAddress(processContext);
		boolean headerOld = false;
		if (comContactHeaders == null || comContactHeaders.isEmpty()) {
			String logTxt = processContext.getLogTitle() + "==No comcontact header found.==Company Code["
					+ com.getCompanyCode() + "] Company Name[" + com.getCompanyName() + "] Company URL[" + com.getUrl()
					+ "] Job URL[" + processContext.getBrowser().getURL() + "] Email[" + email + "].";
			ErrorHandler.errorLogAndMail(logTxt);
			tempContactHeaders = getNewCCHs(com);
		} else {
			for (ComContactHeader cch : comContactHeaders) {
				if (cch.getFromWhere() == null) {
					continue;
				}
				if (cch.getFromWhere().getCode().equals(ClawerConstants.FROM_WHERE_51JOB)) {
					if (address != null && address.equals(cch.getAddress1())) {
						headerOld = true;
						tempContactHeaders.add(cch);
						break;
					}
				}
			}

			if (tempContactHeaders == null || tempContactHeaders.isEmpty()) {
				tempContactHeaders = getNewCCHs(com);
			}
		}

		log.info(processContext.getLogTitle() + "Get ContactHeaders size:" + tempContactHeaders.size());

		ComEmail ce = new ComEmail();
		ce.setEmail(email);

		/**
		 * Found shared references to a collection:
		 * com.yesibc.job51.model.ComEmail.comContactHeaders
		 */
		// ce.setComContactHeaders(tempContactHeaders);
		CompanyInfoSupport.setComEmailCommon(ce);

		for (ComContactHeader cch : tempContactHeaders) {
			List<ComEmail> ces = cch.getComEmails();
			if (ces == null) {
				ces = new ArrayList<ComEmail>();
				cch.setComEmails(ces);
			}
			ces.add(ce);
		}

		CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
				.getBean("companyInfoHandlerService");

		if (!ClawerConstants.TEST_DAO) {
			int i = 0;
			if (!headerOld) {
				for (ComContactHeader cch : tempContactHeaders) {
					i++;
					log.info(processContext.getLogTitle() + "Saving email [" + i + "]" + email + " to DB!");
					try {
						companyInfoHandlerService.save(cch);
					} catch (Exception e) {
						ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "Saving email [" + i + "]" + email
								+ " to DB!\n" + cch.toString(), e);
					}
				}
			} else {
				for (ComContactHeader cch : tempContactHeaders) {
					i++;
					log.info(processContext.getLogTitle() + "Updating email [" + i + "]" + email + " to DB!");
					try {
						/**
						 * check == two open session
						 */
						synchronized (synchronizeObject) {
							log.info(processContext.getLogTitle() + "Updating email [" + i + "]" + email
									+ " to DB!Synchronized times:" + (++synchronizeObject));
							companyInfoHandlerService.update(cch);
						}
					} catch (Exception e) {
						ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "Updating email [" + i + "]"
								+ email + " to DB!\n" + cch.toString(), e);
					}
				}
			}
		}
	}

	private static List<ComContactHeader> getNewCCHs(Company com) {
		List<ComContactHeader> comContactHeaders = new ArrayList<ComContactHeader>();
		ComContactHeader ch = new ComContactHeader();
		ch.setCompany(com);
		ch.setCompanyName(com.getCompanyName());
		comContactHeaders.add(ch);
		CompanyInfoSupport.setComContactHeaderCommon(ch, false);
		com.setComContactHeaders(comContactHeaders);
		return comContactHeaders;
	}

	private static void save2NewCompany(ProcessContext processContext, String email, Company com)
			throws ApplicationException {
		CompanyJobContext.LOG_MANUAL.info(processContext.getLogTitle() + "==No company found.== Job URL["
				+ processContext.getBrowser().getURL() + "] Email[" + email + "].");
		ParseCompanyNJobLinks.parseToCompany(com, processContext);
		if (CompanyJobContext.getEmails().contains(email)) {
			return;
		}
		ComEmail ce = new ComEmail();
		ce.setEmail(email);
		CompanyInfoSupport.setComEmailCommon(ce);
		if (com.getComContactHeaders().get(0).getComEmails() == null) {
			com.getComContactHeaders().get(0).setComEmails(new ArrayList<ComEmail>());
			com.getComContactHeaders().get(0).getComEmails().add(ce);
		}
		if (!ClawerConstants.TEST_DAO) {
			CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
					.getBean("companyInfoHandlerService");
			companyInfoHandlerService.save(com);
		}
	}

	public static void main(String[] args) {
		CompanyJobContext.LOG_MANUAL.info("test\n" + ParseEmailFromJobs.class);
	}

}
