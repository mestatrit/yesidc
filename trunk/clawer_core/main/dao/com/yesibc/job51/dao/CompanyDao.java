package com.yesibc.job51.dao;

import java.util.List;

import com.yesibc.core.dao.EntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.model.ComAppend;
import com.yesibc.job51.model.ComEmail;
import com.yesibc.job51.model.Company;

public interface CompanyDao extends EntityDao<Company> {

	public void saveAppendLob(ComAppend comAppend, String type) throws ApplicationException;

	public List<Company> getKOLoadedCom() throws ApplicationException;
	
	public List<ComEmail> getComEmails(String email) throws  ApplicationException;
}
