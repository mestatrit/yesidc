package com.yesiic.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.yesibc.core.dao.HibernateEntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesiic.dao.WebPagesDao;
import com.yesiic.webswith.model.WebPages;

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

	public void saveUrls(List<String> urls, String type, String requestId) {
		List<WebPages> wps = new ArrayList<WebPages>();
		Date now = new Date();
		for (String url : urls) {
			WebPages wp = new WebPages();
			wp.setCreateDate(now);
			wp.setPageType(type);
			wp.setRequestId(requestId);
			wp.setStatus(WebPages.STATUS_KO);
			wp.setUpdateDate(now);
			wp.setUrl(url);
			wps.add(wp);
		}
		saveByBatch(wps);
	}

}
