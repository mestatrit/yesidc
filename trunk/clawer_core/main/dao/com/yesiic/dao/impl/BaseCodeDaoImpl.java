package com.yesiic.dao.impl;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.stat.Statistics;

import com.yesibc.core.dao.HibernateEntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesiic.base.model.Code;
import com.yesiic.common.BaseCode;
import com.yesiic.dao.BaseCodeDao;

public class BaseCodeDaoImpl extends HibernateEntityDao<Code> implements BaseCodeDao {

	public static void main(String[] args) {
		BaseCodeDao baseCodeDao = (BaseCodeDao) SpringContext.getBean("baseCodeDao");
		try {
			List<Code> c = baseCodeDao.queryByName("", "shanghai", "address");
			System.out.println(c.size());
		} catch (ApplicationException e) {
			e.printStackTrace();
		}
	}

	public Code queryByCode(String code, String type) throws ApplicationException {
		return queryByName(null, code, type, -1).get(0);
	}

	@SuppressWarnings("unchecked")
	public List<Code> queryByName(String name, String code, String type, int codeLevel) throws ApplicationException {
		if (StringUtils.isEmpty(type)) {
			throw new ApplicationException(" Type is null!");
		}
		boolean haveName = true;
		if (StringUtils.isEmpty(name)) {
			haveName = false;
		}
		boolean haveCode = true;
		if (StringUtils.isEmpty(code)) {
			haveCode = false;
		}
		String sql = "select ID ," //
				+ " CODE_TYPE   ," //
				+ " CODE        ," //
				+ " CODE1       ," //
				+ " ENAME1      ," //
				+ " ENAME       ," //
				+ " CNAME       ," //
				+ " CNAME1      ," //
				+ " MEMO        ," //
				+ " CODE_LEVEL  ," //
				+ " SORT_LIST   ," //
				+ " CREATE_DATE ," //
				+ " UPDATE_DATE ," //
				+ " CREATE_USER ," //
				+ " UPDATE_USER " //
				+ " FROM t_code wb where 1=1 ";//

		if (haveName) {
			sql = sql + " and CNAME=:CNAME ";//
		}
		if (haveCode) {
			sql = sql + " and CODE=:CODE ";//
		}
		if (codeLevel > -1) {
			sql = sql + " and CODE_LEVEL=:CODE_LEVEL ";//
		}
		sql = sql + " CONNECT BY PRIOR id = code_type "//
				+ " START WITH CODE = :TYPE ";//

		SQLQuery sQLQuery = getSession().createSQLQuery(sql);

		if (haveName) {
			sQLQuery.setParameter("CNAME", name);
		}
		if (haveCode) {
			sQLQuery.setParameter("CODE", code);
		}
		if (codeLevel > -1) {
			sQLQuery.setParameter("CODE_LEVEL", codeLevel);
		}
		sQLQuery.setParameter("TYPE", type);

		List<Object[]> list = sQLQuery.list();
		if (CollectionUtils.isEmpty(list)) {
			return null;
		}
		return set2Codes(list);
	}

	private List<Code> set2Codes(List<Object[]> list) {
		List<Code> codes = new ArrayList<Code>();
		int i = 0;
		for (Object[] o : list) {
			i = 0;
			Code c = new Code();
			c.setId(((BigDecimal) o[i]).longValue());

			i++;
			if (o[i] != null) {
				Code parent = new Code();
				parent.setId(((BigDecimal) o[i]).longValue());
				c.setParent(parent);
			}

			i++;
			c.setCode((String) o[i]);

			i++;
			c.setCode1((String) o[i]);

			i++;
			c.setEname1((String) o[i]);

			i++;
			c.setEname((String) o[i]);

			i++;
			c.setCname((String) o[i]);

			i++;
			c.setCname1((String) o[i]);

			i++;
			c.setMemo((String) o[i]);

			i++;
			c.setCodeLevel(((BigDecimal) o[i]).longValue());

			i++;
			c.setSortList(((BigDecimal) o[i]).longValue());

			i++;
			c.setCreateDate(new Date((((Timestamp) o[i]).getTime())));

			i++;
			c.setUpdateDate(new Date((((Timestamp) o[i]).getTime())));

			i++;
			c.setCreateUser((String) o[i]);

			i++;
			c.setUpdateUser((String) o[i]);

			codes.add(c);
		}
		return codes;
	}

	public Code queryProviceByName(String name) {
		return queryByName(name, BaseCode.ADDRESS, 3);
	}

	public Code queryByName(String name, String type, int i) {
		return queryByName(name, type, i);
	}

	public Code queryCityByName(String name) {
		return queryByName(name, BaseCode.ADDRESS, 4);
	}

	public Code queryFun1ByName(String name) {
		return queryByName(name, BaseCode.FUNCTION, 1);
	}

	public Code queryFun2ByName(String name) {
		return queryByName(name, BaseCode.FUNCTION, 2);
	}

	public Code queryIndustry1ByName(String name) {
		return queryByName(name, BaseCode.INDUSTRY, 3);
	}

	public Code queryIndustry2ByName(String name) {
		return queryByName(name, BaseCode.INDUSTRY, 4);
	}

	public Code querySpeciality1ByName(String name) {
		return queryByName(name, BaseCode.SPECIALITY, 1);
	}

	public Code querySpeciality2ByName(String name) {
		return queryByName(name, BaseCode.SPECIALITY, 2);
	}

	public Code queryEdulevelByName(String name) {
		return queryByName(name, BaseCode.EDULEVEL, 1);
	}

	public Code queryLanguageByName(String name) {
		return queryByName(name, BaseCode.LANGUAGE, 1);
	}

	public Code queryLevelByName(String name) {
		return queryByName(name, BaseCode.LEVEL, 1);
	}

	public Code querySkill1ByName(String name) {
		return queryByName(name, BaseCode.SKILLS, 1);
	}

	public Code querySkill2ByName(String name) {
		return queryByName(name, BaseCode.SKILLS, 2);
	}

	public Code queryAppendixByName(String name) {
		return queryByName(name, BaseCode.APPENDIX, 1);
	}

	public Statistics getStatistics() {
		return this.getHibernateTemplate().getSessionFactory().getStatistics();
	}

	public List<Code> queryByName(String name, String code, String type) throws ApplicationException {
		return queryByName(name, code, type, -1);
	}
}
