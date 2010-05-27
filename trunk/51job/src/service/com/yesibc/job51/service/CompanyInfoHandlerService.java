package com.yesibc.job51.service;

import java.util.List;
import java.util.Map;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.model.ComContactHeader;
import com.yesibc.job51.model.ComEmail;
import com.yesibc.job51.model.Company;

public interface CompanyInfoHandlerService {

	void handleCompanyInfo(String companyHTML) throws ApplicationException;

	void save(ComEmail comEmail, List<ComContactHeader> comContactHeaders) throws ApplicationException;

	void initalCompanyInfo(Map<String, Company> companies, List<String> emails) throws ApplicationException;

	void saveCompany(Company company) throws ApplicationException;

	void save(Object o);

	void update(Object o);

	Company getById(Long id);

	public void logHibernateStat();

	public void testUpdateComByNoHeaders();

	public void testUpdateComByEmail();
}
