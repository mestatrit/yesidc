package com.yesibc.job51.web.search;

import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.components.webrenderer.WebrendererSupport;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.service.CompanyInfoHandlerService;
import com.yesibc.job51.web.support.CompanyInfoSupport;
import com.yesibc.job51.web.support.LocateCompanyInfo;

public class ParseJobdetail {
	public final static String[] mailStrs = { "mailto:" };
	public final static String[] comStrs = { ClawerConstants.OTHER_POSITION };
	private static Log log = LogFactory.getLog(ParseJobdetail.class);

	public static void parseJobdetail(ProcessContext processContext) throws ApplicationException {

		if (!CompanyInfoSupport.jobPageValidate(processContext)) {
			return;
		}

		Company company = getCompany(processContext);
		List<String> emails = LocateCompanyInfo.getEmails(processContext);
		if (Company.LOAD_OK.equals(company.getLoadOK()) && CollectionUtils.isEmpty(emails)) {
			log.info(processContext.getLogTitle() + "Email existed or no found.Company:" + company.getCompanyName());
			return;
		}
		long l = System.currentTimeMillis();
		CompanyInfoSupport.parseToCompany(company, emails, processContext);
		log.info(processContext.getLogTitle() + " Parse company is OK!Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();
		company.setLoadOK(Company.LOAD_OK);

		if (!ClawerConstants.TEST_DAO) {
			CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
					.getBean("companyInfoHandlerService");
			if (company.getId() != null) {
				companyInfoHandlerService.update(company);
			} else {
				companyInfoHandlerService.save(company);
			}
			log.info(processContext.getLogTitle() + " Update company to DB is OK!Time is "
					+ (System.currentTimeMillis() - l));
		}

	}

	private static Company getCompany(ProcessContext processContext) throws ApplicationException {
		String[] txts = { ClawerConstants.COMPANY_URL_NAME };
		List<IElement> ies = WebrendererSupport.getElements(processContext.getBrowser().getDocument().getAll()
				.tags("A"), "href", ClawerConstants.COMPANY_URL_TAG, txts);
		if (ies == null || ies.size() != 1) {
			throw new ApplicationException(processContext.getLogTitle() + " Company url is error found0!");
		}
		String url = ies.get(0).getAttribute("href", 0);
		String companyId = CompanyInfoSupport.getCompanyCode(url);
		companyId = ClawerConstants.FROM_WHERE_51JOB + "_" + companyId;
		Company company = CompanyJobContext.getComInCache(companyId);
		if (company == null) {
			CompanyInfoHandlerService cih = (CompanyInfoHandlerService) SpringContext
					.getBean("companyInfoHandlerService");
			try {
				company = cih.findCompanyByCode(companyId);
			} catch (ApplicationException e) {
				log.error(processContext.getLogTitle() + ".Get error from DB!", e);
			}

			if (company == null) {
				company = new Company();
				getCompanyFromJobPage(processContext, company, url, companyId);
			}

			CompanyJobContext.putCompany(companyId, company);
		}
		return company;
	}

	public static void getCompanyFromJobPage(ProcessContext processContext, Company com, String url, String companyId)
			throws ApplicationException {
		String name = null;
		String title = processContext.getBrowser().getTitle();
		title = title.substring(title.indexOf(ClawerConstants.PUNCTUATION_BRACKET_LEFT), title
				.indexOf(ClawerConstants.PUNCTUATION_BRACKET_RIGHT));
		name = title.substring((title.lastIndexOf(ClawerConstants.PUNCTUATION_COMMA) + 1));

		com.setCompanyName(name);
		com.setUrl(url);
		com.setCompanyCode(companyId);
		CompanyInfoSupport.setCompanyCommon(com, true);
		com.setUpdateDate(new Date());
		com.setLoadOK(Company.LOAD_KO);
		try {
			if (!ClawerConstants.TEST_DAO && com.getId() == null) {
				CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
						.getBean("companyInfoHandlerService");
				companyInfoHandlerService.save(com);
			}
		} catch (Exception e) {
			throw new ApplicationException("Save company error!" + com.getCompanyName() + "," + com.getUrl(), e);
		}
		log.info(processContext.getLogTitle() + " New company:" + companyId + "," + name);
	}

	public static void main(String[] args) {
		CompanyJobContext.LOG_MANUAL.info("test\n" + ParseJobdetail.class);
	}

}
