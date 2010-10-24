package com.yesibc.job51.web.search;

import com.webrenderer.swing.IBrowserCanvas;

public class ProcessContext {

	private String logTitle;
	private IBrowserCanvas browser;
	private String url;
	private boolean error = false;
	private String errorMsg;
	private int index = 0;

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

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
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

	public void setErrorMsg(String errorMs) {
		this.errorMsg = this.errorMsg + errorMsg;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

}
