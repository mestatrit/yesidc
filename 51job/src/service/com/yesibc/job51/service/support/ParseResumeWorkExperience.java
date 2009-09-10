package com.yesibc.job51.service.support;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.htmlparser.tags.TableTag;

import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.PersonAppend;
import com.yesibc.job51.model.Person;
import com.yesibc.job51.service.impl.ResumeHandlerServiceImpl;

public class ParseResumeWorkExperience {
	public static void parseWorkExperience(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.JOB_EXPERIENCE + ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}
		List<PersonAppend> appends = p.getPersonAppends();
		if (CollectionUtils.isEmpty(appends)) {
			appends = new ArrayList<PersonAppend>();
			p.setPersonAppends(appends);
		}
		PersonAppend append = new PersonAppend();
		append.setAppendType(ResumeHandlerServiceImpl.baseCode
				.queryAppendixByName(ClawerConstants.PROJECT_EXPERIENCE));
		append.setAppendTypeName(ClawerConstants.JOB_EXPERIENCE);
		append.setContent(basicTag.toHtml());
		append.setCreateDate(new Date());
		append.setUpdateDate(new Date());
		append.setCreateUser(ClawerConstants.DEFAULT_USER);
		append.setUpdateUser(ClawerConstants.DEFAULT_USER);
		appends.add(append);
	}
}
