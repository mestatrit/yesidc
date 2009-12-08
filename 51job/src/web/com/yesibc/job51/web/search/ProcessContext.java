package com.yesibc.job51.web.search;

import com.webrenderer.swing.IBrowserCanvas;

public class ProcessContext {
	
	private String logTitle;
	private IBrowserCanvas browser;
	private SearchCompanyNJobLinksEngine searchJobEngine;

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

	public SearchCompanyNJobLinksEngine getSearchJobEngine() {
		return searchJobEngine;
	}

	public void setSearchJobEngine(SearchCompanyNJobLinksEngine searchJobEngine) {
		this.searchJobEngine = searchJobEngine;
	}

}
