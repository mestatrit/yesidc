package com.yesiic.dao.impl;

import org.hibernate.stat.Statistics;

import com.yesibc.core.dao.HibernateEntityDao;
import com.yesiic.common.BaseCode;
import com.yesiic.dao.BaseCodeDao;
import com.yesiic.model.Code;

public class BaseCodeDaoImpl extends HibernateEntityDao<Code> implements
		BaseCodeDao {

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

	public Statistics getStatistics() {
		return this.getHibernateTemplate().getSessionFactory().getStatistics();
	}
}
