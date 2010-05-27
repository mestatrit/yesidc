package com.yesibc.job51.web.search;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.service.CompanyInfoHandlerService;
import com.yesibc.job51.web.support.CompanyInfoSupport;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LocateCompanyInfo;

public class ParseJobdetail {
	public final static String[] mailStrs = { "mailto:" };
	public final static String[] comStrs = { ClawerConstants.OTHER_POSITION };
	private static Log log = LogFactory.getLog(ParseJobdetail.class);

	public static void parseJobdetail(ProcessContext processContext) throws ApplicationException {
		Company company = getCompany(processContext);
		List<String> emails = LocateCompanyInfo.getEmails(processContext);
		if (Company.LOAD_OK.equals(company.getLoadOK()) && CollectionUtils.isEmpty(emails)) {
			log.info(processContext.getLogTitle() + "Company and email existed:" + company.getCompanyName());
			return;
		}
		CompanyInfoSupport.parseToCompany(company, emails, processContext);
		company.setLoadOK(Company.LOAD_OK);
		if (!ClawerConstants.TEST_DAO) {
			CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
					.getBean("companyInfoHandlerService");
			companyInfoHandlerService.update(company);
		}

	}

	private static Company getCompany(ProcessContext processContext) throws ApplicationException {
		String[] txts = { ClawerConstants.COMPANY_URL_NAME };
		List<IElement> ies = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"),
				"href", ClawerConstants.COMPANY_URL_TAG, txts);
		if (ies == null || ies.size() != 1) {
			throw new ApplicationException(processContext.getLogTitle() + " Company url is error found0!");
		}
		String url = ies.get(0).getAttribute("href", 0);
		String companyId = CompanyInfoSupport.getCompanyCode(url);
		companyId = ClawerConstants.FROM_WHERE_51JOB + "_" + companyId;
		Company company = CompanyJobContext.getCompanies(companyId);
		if (company == null) {
			throw new ApplicationException(processContext.getLogTitle() + " Get company is null!");
		}
		return company;
	}

	public static void main(String[] args) {
		CompanyJobContext.LOG_MANUAL.info("test\n" + ParseJobdetail.class);
	}

}
