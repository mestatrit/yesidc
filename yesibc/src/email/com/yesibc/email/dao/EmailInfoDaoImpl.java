package com.yesibc.email.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

import com.yesibc.core.dao.HibernateEntityDao;
import com.yesibc.email.model.MailSender;
import com.yesibc.email.model.MailServer;

public class EmailInfoDaoImpl extends HibernateEntityDao<MailServer> implements EmailInfoDao {

	@SuppressWarnings("unchecked")
	public List<MailSender> getMails() {
		Criteria criteria = getSession().createCriteria(MailSender.class).add(Restrictions.eq("status", "1")).addOrder(
				Order.desc("id"));

		return criteria.list();
	}

}
