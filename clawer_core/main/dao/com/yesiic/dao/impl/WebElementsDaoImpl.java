package com.yesiic.dao.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

import com.yesibc.core.dao.HibernateEntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesiic.dao.WebElementsDao;
import com.yesiic.webswith.model.WebElements;

public class WebElementsDaoImpl extends HibernateEntityDao<WebElements> implements WebElementsDao {

	private static Log log = LogFactory.getLog(WebElementsDaoImpl.class);

	@SuppressWarnings("unchecked")
	public WebElements getWebElementsByCode(String type, String code, int codeLevel) throws ApplicationException {
		Criteria criteria = getSession().createCriteria(WebElements.class);
		if (!StringUtils.trimToEmpty(type).equals("")) {
			if (codeLevel == 1) {
				criteria.createAlias("parent", "parent");
			} else if (codeLevel == 2) {
				criteria.createAlias("parent", "parent1");
				criteria.createAlias("parent1.parent", "parent");
			}
			criteria.add(Restrictions.eq("parent.code", type));
		}
		if (!StringUtils.trimToEmpty(code).equals("")) {
			criteria.add(Restrictions.eq("code", code));
		}

		List<WebElements> wes = criteria.list();
		if (wes != null && !wes.isEmpty()) {
			return wes.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<WebElements> getWebElementsByType(String type) throws ApplicationException {
		String hql = " select wb.ID         , " + " wb.CODE_TYPE    , " + " wb.CODE         , " + " wb.NAME         , "
				+ " wb.memo         , " + " wb.CODE_LEVEL   , " + " wb.SORT_LIST    , " + " wb.CREATE_DATE  , "
				+ " wb.UPDATE_DATE  , " + " wb.CREATE_USER  , " + " wb.UPDATE_USER  "
				+ " FROM WEB_ELEMENTS wb CONNECT BY PRIOR id = code_type START WITH CODE=:P_CODE ";

		Query q = getSession().createSQLQuery(hql);
		q.setParameter("P_CODE", type);
		List<Object[]> list = q.list();
		if (list == null || list.isEmpty()) {
			return null;
		}
		log.info("getWebElementsByType size:" + list.size());
		return convert2WE(list);
	}

	private List<WebElements> convert2WE(List<Object[]> list) {
		List<WebElements> wes = new ArrayList<WebElements>();
		int index = 0;
		for (int i = 0; i < list.size(); i++) {
			Object[] os = list.get(i);
			if (os == null) {
				continue;
			}

			WebElements we = new WebElements();
			wes.add(we);
			index = 0;
			for (Object o : os) {
				if (index == 0) {
					we.setId((String) o);
				} else if (index == 1) {
					if (o != null) {
						we.setParent(get(WebElements.class, (String) o));
					}
				} else if (index == 2) {
					we.setCode((String) o);
				} else if (index == 3) {
					we.setName((String) o);
				} else if (index == 4) {
					we.setMemo((String) o);
				} else if (index == 5) {
					if (o != null) {
						we.setCodeLevel(((BigDecimal) o).longValue());
					}
				} else if (index == 6) {
					if (o != null) {
						we.setSortList(((BigDecimal) o).longValue());
					}
				} else if (index == 7) {
					we.setCreateDate((Date) o);
				} else if (index == 8) {
					we.setUpdateDate((Date) o);
				} else if (index == 9) {
					we.setCreateUser((String) o);
				} else if (index == 10) {
					we.setUpdateUser((String) o);
				}
				index++;
			}
		}
		return wes;
	}

}
