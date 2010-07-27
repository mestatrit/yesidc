package com.yesibc.job51.dao.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.yesibc.core.dao.HibernateEntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.dao.WebPagesDao;
import com.yesibc.job51.model.WebPages;

public class WebPagesDaoImpl extends HibernateEntityDao<WebPages> implements WebPagesDao {

	@SuppressWarnings("unchecked")
	public List<WebPages> getWebPagesByType(String type, String status, int fetchSize) throws ApplicationException {
		Criteria criteria = getSession().createCriteria(WebPages.class).addOrder(Order.asc("id"));
		if (!StringUtils.trimToEmpty(type).equals("")) {
			criteria.add(Restrictions.eq("pageType", type));
		}
		if (!StringUtils.trimToEmpty(status).equals("")) {
			criteria.add(Restrictions.eq("status", status));
		}
		if (fetchSize > 0) {
			criteria.setMaxResults(fetchSize);
		}

		return criteria.list();
	}

	public void saveByBatch(List<WebPages> wps) {
		Session session = getSession();
		int i = 0;
		for (WebPages wp : wps) {
			if (wp.getId() != null) {
				continue;
			}
			i++;
			session.save(wp);
			if (i % 200 == 0) {
				session.flush();
				session.clear();
			}
		}

	}

}
