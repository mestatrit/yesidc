package com.yesibc.job51.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.htmlparser.tags.TableTag;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.dao.BaseCodeDao;
import com.yesibc.job51.dao.PersonDao;
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

public class CompanyInfoHandlerServiceImpl implements CompanyInfoHandlerService {
	
	public static BaseCodeDao baseCode = (BaseCodeDao)SpringContext.getBean("baseCode");

	public void setPersonDao(PersonDao personDao) {
		this.personDao = personDao;
	}

	private PersonDao personDao;
	
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

}
