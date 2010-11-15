package com.yesiic.common;

import com.yesiic.webswith.model.WebPages;

public class ProcessContext {

	private String logTitle;
	private String html;
	private boolean error = false;
	private String errorMsg;
	private int index = 0;
	private WebPages wp;

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

}
