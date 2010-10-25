package com.yesiic.common;

import com.webrenderer.swing.IBrowserCanvas;
import com.yesiic.webswith.model.WebPages;

public class ProcessContext {

	private String logTitle;
	private IBrowserCanvas browser;
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

	public IBrowserCanvas getBrowser() {
		return browser;
	}

	public void setBrowser(IBrowserCanvas browser) {
		this.browser = browser;
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

}
