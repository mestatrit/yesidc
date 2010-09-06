package com.yesiic.dao;

import java.util.List;

import com.yesibc.core.dao.EntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesiic.company.model.ComAppend;
import com.yesiic.company.model.ComEmail;
import com.yesiic.company.model.Company;

public interface CompanyDao extends EntityDao<Company> {

	public void saveAppendLob(ComAppend comAppend, String type) throws ApplicationException;

	public List<Company> getKOLoadedCom() throws ApplicationException;
	
	public List<ComEmail> getComEmails(String email) throws  ApplicationException;
}
