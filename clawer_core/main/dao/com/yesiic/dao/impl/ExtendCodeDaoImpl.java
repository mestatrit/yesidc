package com.yesiic.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import com.yesibc.core.dao.HibernateEntityDao;
import com.yesibc.core.utils.StringUtils;
import com.yesiic.base.model.ExtendCode;
import com.yesiic.dao.ExtendCodeDao;

public class ExtendCodeDaoImpl extends HibernateEntityDao<ExtendCode> implements ExtendCodeDao {

	@SuppressWarnings("unchecked")
	public List<ExtendCode> queryByFilter(ExtendCode ec) {
		Criteria criteria = getSession().createCriteria(ExtendCode.class);
		if (ec == null) {
			return criteria.list();
		}
		if (!StringUtils.isEmpty(ec.getName())) {
			criteria.add(Restrictions.like("name", "%" + ec.getName() + "%"));
		}
		if (!StringUtils.isEmpty(ec.getCode())) {
			criteria.add(Restrictions.eq("code", ec.getCode()));
		}
		if (!StringUtils.isEmpty(ec.getCodeType())) {
			criteria.add(Restrictions.eq("codeType", ec.getCodeType()));
		}
		return criteria.list();
	}

}
