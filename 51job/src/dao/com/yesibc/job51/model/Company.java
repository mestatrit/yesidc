package com.yesibc.job51.model;

import java.util.List;

public class Company {

	private String id;
	private String jobId;
	private String url;
	private String companyName;
	private String companyNameEn;
	private String companyNameSimple;
	private String companyNameSimpleEn;
	private Code companyType;
	private Code companyScale;
	private Code companyIndustry1;
	private Code companyIndustry2;
	private List<CompanyAddress> addresses;
	private String homepage1;
	private String homepage2;
	private String homepage3;
	private String homepage4;
	

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
}
