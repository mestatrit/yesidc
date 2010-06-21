package com.yesidc.email.common;

import com.webrenderer.swing.IBrowserCanvas;

public class ProcessContext {

	private String logTitle;
	private IBrowserCanvas browser;
	private String url;
	private boolean error = false;
	private String errorMs;

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

	public String getErrorMs() {
		return errorMs;
	}

	public void setErrorMs(String errorMs) {
		this.errorMs = errorMs;
	}

}
