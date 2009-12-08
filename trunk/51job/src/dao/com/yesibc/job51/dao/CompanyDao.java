package com.yesibc.job51.dao;

import com.yesibc.core.dao.EntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.model.ComAppend;
import com.yesibc.job51.model.Company;

public interface CompanyDao extends EntityDao<Company> {

	public void saveAppendLob(ComAppend comAppend, String type)
			throws ApplicationException;

}
