package com.yesibc.job51.test.web;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import junit.framework.TestCase;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.ComContactHeader;
import com.yesibc.job51.model.ComEmail;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.service.CompanyInfoHandlerService;
import com.yesibc.job51.web.search.CompanyJobContext;
import com.yesibc.job51.web.support.CompanyInfoSupport;

public class TestService extends TestCase {

	protected final Log log = LogFactory.getLog(TestService.class);

	public static CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
			.getBean("companyInfoHandlerService");

	public void testSaveNewMail() {
		ComEmail ce = new ComEmail();
		ce.setEmail("test@test.com");
		CompanyInfoSupport.setComEmailCommon(ce, true);
		companyInfoHandlerService.save(ce);
	}

	public void testSaveNewHeader() {
		Company com = CompanyJobContext.getCompanies("51job_2286609");
		List<ComContactHeader> comContactHeaders = com.getComContactHeaders();

		if (comContactHeaders == null || comContactHeaders.isEmpty()) {
			comContactHeaders = new ArrayList<ComContactHeader>();
			com.setComContactHeaders(comContactHeaders);
		}

		ComContactHeader ch = new ComContactHeader();
		ch.setAddress1("tttt");
		ch.setCompanyName("ttttt");
		ch.setCompany(com);
		ch.setCompanyName(com.getCompanyName());
		comContactHeaders.add(ch);
		CompanyInfoSupport.setComContactHeaderCommon(ch, false);

		List<ComContactHeader> temp = new ArrayList<ComContactHeader>();
		temp.add(ch);

		ComEmail ce = new ComEmail();
		ce.setEmail("test@test.com");
		ce.setComContactHeaders(temp);
		CompanyInfoSupport.setComEmailCommon(ce, true);

		List<ComEmail> ces = new ArrayList<ComEmail>();
		ces.add(ce);
		ch.setComEmails(ces);

		companyInfoHandlerService.update(com);
	}

	public void testMail2ExistCom() {
		Company com = CompanyJobContext.getCompanies("51job_2286609");
		String email = "ttt@ttt.com";
		if (CompanyJobContext.emails.contains(email)) {
			log.info("==Email found:" + email);
			// return;
		}
		email = "aaaaaaaaaa@ttt.com";
		List<ComContactHeader> comContactHeaders = com.getComContactHeaders();
		List<ComContactHeader> tempContactHeaders = new ArrayList<ComContactHeader>();
		if (comContactHeaders == null || comContactHeaders.isEmpty()) {
			log.info("==No comcontact header found.==Company Code[" + com.getCompanyCode() + "] Company Name["
					+ com.getCompanyName() + "] Company URL[" + com.getUrl() + "].");
			tempContactHeaders = getNewCCHs(com);

		} else {
			for (ComContactHeader cch : comContactHeaders) {
				if (cch.getFromWhere() == null) {
					continue;
				}
				if (cch.getFromWhere().getCode().equals(ClawerConstants.FROM_WHERE_51JOB)) {
					tempContactHeaders.add(cch);
				}
			}

			if (tempContactHeaders == null || tempContactHeaders.isEmpty()) {
				tempContactHeaders = getNewCCHs(com);
			}
		}

		ComEmail ce = new ComEmail();
		ce.setEmail(email);
		ce.setComContactHeaders(tempContactHeaders);
		CompanyInfoSupport.setComEmailCommon(ce, true);

		for (ComContactHeader cch : tempContactHeaders) {
			List<ComEmail> ces = cch.getComEmails();
			if (ces == null) {
				ces = new ArrayList<ComEmail>();
				cch.setComEmails(ces);
			}
			ces.add(ce);
		}

		if (!ClawerConstants.TEST_DAO) {
			companyInfoHandlerService.save(ce);
		}
	}

	private static List<ComContactHeader> getNewCCHs(Company com) {
		List<ComContactHeader> comContactHeaders = com.getComContactHeaders();
		if (comContactHeaders == null || comContactHeaders.isEmpty()) {
			comContactHeaders = new ArrayList<ComContactHeader>();
			com.setComContactHeaders(comContactHeaders);
		}
		ComContactHeader ch = new ComContactHeader();
		ch.setAddress1("tttt");
		ch.setCompanyName("ttttt");
		ch.setCompany(com);
		ch.setCompanyName(com.getCompanyName());
		comContactHeaders.add(ch);
		CompanyInfoSupport.setComContactHeaderCommon(ch, false);
		return comContactHeaders;
	}

}
