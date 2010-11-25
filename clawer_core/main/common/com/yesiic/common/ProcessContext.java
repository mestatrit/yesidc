package com.yesiic.common;

import java.util.ArrayList;
import java.util.List;

import com.yesibc.core.utils.CollectionUtils;
import com.yesiic.person.model.SimPerson;
import com.yesiic.webswith.model.WebPages;

public class ProcessContext {

	private String logTitle;
	private String html;
	private String errorMsg;
	private String requestId;
	private WebPages wp;
	private List<String> urls;
	private List<SimPerson> simPersons;
	private String pageType;
	private int total = 0;
	private int index = 0;
	private boolean error = false;

	public String getLogTitle() {
		return logTitle;
	}

	public void setLogTitle(String logTitle) {
		this.logTitle = logTitle;
	}

	public boolean isError() {
		return error;
	}

	public void setError(boolean error) {
		this.error = error;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = this.errorMsg + errorMsg;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public WebPages getWp() {
		return wp;
	}

	public void setWp(WebPages wp) {
		this.wp = wp;
	}

	public String getHtml() {
		return html;
	}

	public void setHtml(String html) {
		this.html = html;
	}

	public String getPageType() {
		return pageType;
	}

	public void setPageType(String pageType) {
		this.pageType = pageType;
	}

	public List<String> getUrls() {
		return urls;
	}

	public void setUrls(List<String> urls) {
		this.urls = urls;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getRequestId() {
		return requestId;
	}

	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}

	public List<SimPerson> getSimPersons() {
		return simPersons;
	}

	public void setSimPersons(List<SimPerson> simPersons) {
		this.simPersons = simPersons;
	}
	
	public void setSimPerson(SimPerson simPerson) {
		if(CollectionUtils.isEmpty(simPersons)){
			simPersons = new ArrayList<SimPerson>();
		}
		simPersons.add(simPerson);
	}

}
