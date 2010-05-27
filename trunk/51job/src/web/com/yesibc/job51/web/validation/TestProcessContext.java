package com.yesibc.job51.web.validation;

import com.webrenderer.swing.IBrowserCanvas;
import com.yesibc.job51.web.search.ProcessContext;

public class TestProcessContext extends ProcessContext {

	private String logTitle;
	private IBrowserCanvas browser;
	private ValidateCompanyDetailAndJobPaging companyDetailAndJobPaging;

	public String getLogTitle() {
		return logTitle;
	}

	public void setLogTitle(String logTitle) {
		this.logTitle = logTitle;
	}

	public IBrowserCanvas getBrowser() {
		return browser;
	}

	public void setBrowser(IBrowserCanvas browser) {
		this.browser = browser;
	}

	public void setCompanyDetailAndJobPaging(ValidateCompanyDetailAndJobPaging companyDetailAndJobPaging) {
		this.companyDetailAndJobPaging = companyDetailAndJobPaging;
	}

	public ValidateCompanyDetailAndJobPaging getCompanyDetailAndJobPaging() {
		return companyDetailAndJobPaging;
	}

}
