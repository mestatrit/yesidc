package com.yesiic.dao;

import org.hibernate.stat.Statistics;

import com.yesibc.core.dao.EntityDao;
import com.yesiic.model.Code;

public interface BaseCodeDao  extends EntityDao<Code>{
	
	public Code queryByCode(String code, String type);

	public Code queryByName(String name, String type, int level);

	public Code queryProviceByName(String name);

	public Code queryCityByName(String name);

	public Code queryIndustry2ByName(String name);

	public Code queryFun1ByName(String name);

	public Code queryFun2ByName(String name);

	public Code queryIndustry1ByName(String name);

	public Code querySpeciality1ByName(String name);

	public Code querySpeciality2ByName(String name);

	public Code queryEdulevelByName(String name);

	public Code queryLanguageByName(String name);

	public Code queryLevelByName(String name);

	public Code querySkill1ByName(String name);

	public Code querySkill2ByName(String name);

	public Code queryAppendixByName(String name);

	public Statistics getStatistics();
}
