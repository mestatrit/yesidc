package com.yesibc.job51.service;

import com.yesibc.core.exception.ApplicationException;

public interface CompanyInfoHandlerService {
	
	void handleCompanyInfo(String companyHTML) throws ApplicationException;
}
