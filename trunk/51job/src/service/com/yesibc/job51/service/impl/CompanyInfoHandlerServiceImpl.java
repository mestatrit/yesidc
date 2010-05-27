package com.yesibc.job51.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.stat.Statistics;
import org.htmlparser.tags.TableTag;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.dao.BaseCodeDao;
import com.yesibc.job51.dao.CompanyDao;
import com.yesibc.job51.dao.PersonDao;
import com.yesibc.job51.model.ComAppend;
import com.yesibc.job51.model.ComContactHeader;
import com.yesibc.job51.model.ComEmail;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.model.Person;
import com.yesibc.job51.service.CompanyInfoHandlerService;
import com.yesibc.job51.service.support.ParseResumeAppendix;
import com.yesibc.job51.service.support.ParseResumeBasic;
import com.yesibc.job51.service.support.ParseResumeCertification;
import com.yesibc.job51.service.support.ParseResumeEduExperience;
import com.yesibc.job51.service.support.ParseResumeJobIntent;
import com.yesibc.job51.service.support.ParseResumeLanguage;
import com.yesibc.job51.service.support.ParseResumeProjectExperience;
import com.yesibc.job51.service.support.ParseResumeSelfAdjust;
import com.yesibc.job51.service.support.ParseResumeSkill;
import com.yesibc.job51.service.support.ParseResumeTemplate;
import com.yesibc.job51.service.support.ParseResumeTrainingExperience;
import com.yesibc.job51.service.support.ParseResumeWorkExperience;
import com.yesibc.job51.web.search.ProcessContext;
import com.yesibc.job51.web.support.CompanyInfoSupport;

public class CompanyInfoHandlerServiceImpl implements CompanyInfoHandlerService {

	// private static Log log =
	// LogFactory.getLog(CompanyInfoHandlerServiceImpl.class);
	private static Log per = LogFactory.getLog("performance");

	public void setPersonDao(PersonDao personDao) {
		this.personDao = personDao;
	}

	private PersonDao personDao;

	private BaseCodeDao baseCodeDao;

	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}

	private CompanyDao companyDao;

	public void handleCompanyInfo(String companyHTML) throws ApplicationException {
		Map<String, String> mapKey = new HashMap<String, String>();
		Map<String, TableTag> mapVal = new HashMap<String, TableTag>();

		ParseResumeTemplate.parseToNodeList(companyHTML, mapKey, mapVal);

		Person p = new Person();

		ParseResumeBasic.parseBasic(p, mapVal);
		ParseResumeSelfAdjust.parseSelfAdjust(p, mapVal);
		ParseResumeJobIntent.parseJobIntent(p, mapVal);
		ParseResumeWorkExperience.parseWorkExperience(p, mapVal);
		ParseResumeProjectExperience.parseProjectExperience(p, mapVal);
		ParseResumeEduExperience.parseEduExperience(p, mapVal);
		ParseResumeTrainingExperience.parseTrainingExperience(p, mapVal);
		ParseResumeCertification.parseTrainingExperience(p, mapVal);
		ParseResumeLanguage.parseLanguage(p, mapVal);
		ParseResumeSkill.parseSkill(p, mapVal);
		ParseResumeAppendix.parseAppendix(p, mapVal);

		personDao.save(p);
	}

	public void save(ComEmail comEmail, List<ComContactHeader> comContactHeaders) throws ApplicationException {
		companyDao.save(comEmail);
		for (ComContactHeader cch : comContactHeaders) {
			companyDao.update(cch);
		}
	}

	public void initalCompanyInfo(Map<String, Company> companies, List<String> emails) throws ApplicationException {
		List<Company> companyAll = companyDao.findAll(Company.class);
		for (Company company : companyAll) {
			companies.put(company.getCompanyCode(), company);
			List<ComContactHeader> chs = company.getComContactHeaders();
			for (ComContactHeader ch : chs) {
				List<ComEmail> ces = ch.getComEmails();
				for (ComEmail ce : ces) {
					emails.add(ce.getEmail());
				}
			}
		}
	}

	public void save(Object o) {
		companyDao.save(o);
	}

	public void saveCompany(Company company) throws ApplicationException {
		companyDao.save(company);
		if (company.getComAppends() != null && !company.getComAppends().isEmpty()) {
			for (ComAppend ca : company.getComAppends()) {
				companyDao.saveAppendLob(ca, ca.getLobType());
			}
		}
	}

	public void update(Object o) {
		companyDao.update(o);
	}

	public void logHibernateStat() {
		Statistics statistics = baseCodeDao.getStatistics();
		per.info("statistics.getConnectCount()=" + statistics.getConnectCount() + ",statistics.getSessionOpenCount()"
				+ statistics.getSessionOpenCount() + ",statistics.getPrepareStatementCount()"
				+ statistics.getPrepareStatementCount() + ",statistics.getQueryCacheHitCount()"
				+ statistics.getQueryCacheHitCount());
	}

	/**
	 * @param baseCodeDao
	 *            the baseCodeDao to set
	 */
	public void setBaseCodeDao(BaseCodeDao baseCodeDao) {
		this.baseCodeDao = baseCodeDao;
	}

	public Company getById(Long id) {
		return companyDao.getById(id);
	}

	/**
	 * HEADER. 无则加有则更新.EMAIL.有则更新,无则加.
	 */
	public void testUpdateComByEmail() {
		Company com = companyDao.getById(new Long(2));
		com.setBankAccount("abcdef");

		ProcessContext processContext = new ProcessContext();
		processContext.setLogTitle("ttt");
		String address = "江苏省苏州市闸北区江场三路213号1";
		// String address = "上海市闸北区江场三路213号";

		int position = CompanyInfoSupport.setAddress(processContext, com, address);
		System.out.println("position" + position);

		ComContactHeader cch = com.getComContactHeaders().get(position);

		int pos = 0;
		boolean have = false;
		List<ComEmail> ces = cch.getComEmails();
		ComEmail newCE = null;
		String email = "abel.ye5@cetelem.com.cn";
		if (ces == null) {
			ces = new ArrayList<ComEmail>();
			cch.setComEmails(ces);
		} else {
			for (ComEmail ce : ces) {
				if (email.equals(ce.getEmail())) {
					have = true;
					newCE = ce;
					break;
				} else {
					pos++;
				}
			}
		}

		System.out.println("pos" + pos);
		if (have) {
			newCE = ces.get(pos);
			newCE.setUpdateDate(new Date());
			System.out.println("pos have:" + pos);
		} else {
			newCE = new ComEmail();
			CompanyInfoSupport.setComEmailCommon(newCE, true);
			newCE.setMailType(ComEmail.MAIL_TYPE_COMPANY_SHARE);
			newCE.setEmail(email);
			newCE.setReciever("abel.ye");
			ces.add(newCE);
		}

		companyDao.update(cch);
	}

	/**
	 * HEADER. 无则加有则更新.
	 */
	public void testUpdateComByNoHeaders() {
		Company com = companyDao.getById(new Long(2));
		com.setBankAccount("abcdef");

		ProcessContext processContext = new ProcessContext();
		processContext.setLogTitle("ttt");
		String address = "江苏省苏州市闸北区江场三路213号1";
		// String address = "上海市闸北区江场三路213号";

		int position = CompanyInfoSupport.setAddress(processContext, com, address);
		System.out.println("position" + position);

		ComContactHeader cch = com.getComContactHeaders().get(position);

		ComEmail ce = new ComEmail();
		CompanyInfoSupport.setComEmailCommon(ce, true);
		ce.setMailType(ComEmail.MAIL_TYPE_COMPANY_SHARE);
		ce.setEmail("abel.ye@cetelem.com.cn");
		ce.setReciever("abel.ye");

		List<ComEmail> ces = new ArrayList<ComEmail>();
		ces.add(ce);
		cch.setComEmails(ces);

		companyDao.update(com);
	}

}
