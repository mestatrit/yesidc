package com.yesibc.job51.dao.impl;

import com.yesibc.core.dao.HibernateEntityDao;
import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.dao.CodeJobDao;
import com.yesibc.job51.model.Code;
import com.yesibc.job51.model.CodeJob;

public class CodeJobDaoImpl extends HibernateEntityDao<CodeJob> implements
		CodeJobDao {

	public Code queryByCode(String code, String type) {
		Code c = new Code();
		c.setCode(code);
		c.setCname(code);
		c.setEname(code);
		return c;
	}

	public Code queryByName(String name, String type, int level) {
		Code c = new Code();
		c.setCode(name);
		c.setCname(name);
		c.setEname(name);
		c.setCodeLevel(new Long(level));
		return c;
	}

	public Code queryProviceByName(String name) {
		return queryByName(name, BaseCode.ADDRESS, 0);
	}

	public Code queryCityByName(String name) {
		return queryByName(name, BaseCode.ADDRESS, 1);
	}

	public Code queryFun1ByName(String name) {
		return queryByName(name, BaseCode.FUNCTION, 0);
	}

	public Code queryFun2ByName(String name) {
		return queryByName(name, BaseCode.FUNCTION, 1);
	}

	public Code queryIndustry1ByName(String name) {
		return queryByName(name, BaseCode.INDUSTRY, 0);
	}

	public Code queryIndustry2ByName(String name) {
		return queryByName(name, BaseCode.INDUSTRY, 1);
	}

	public Code querySpeciality1ByName(String name) {
		return queryByName(name, BaseCode.SPECIALITY, 0);
	}

	public Code querySpeciality2ByName(String name) {
		return queryByName(name, BaseCode.SPECIALITY, 1);
	}

	public Code queryEdulevelByName(String name) {
		return queryByName(name, BaseCode.EDULEVEL, 1);
	}

	public Code queryLanguageByName(String name) {
		return queryByName(name, BaseCode.LANGUAGE, 0);
	}

	public Code queryLevelByName(String name) {
		return queryByName(name, BaseCode.LEVEL, 0);
	}

	public Code querySkill1ByName(String name) {
		return queryByName(name, BaseCode.SKILLS, 0);
	}

	public Code querySkill2ByName(String name) {
		return queryByName(name, BaseCode.SKILLS, 1);
	}

	public Code queryAppendixByName(String name) {
		return queryByName(name, BaseCode.APPENDIX, 0);
	}

}
