package com.yesibc.job51.web.support;

public class PageLinksInfo {

	private String firstURL;
	private String name;
	private int totalPages;
	private int totalRecords;

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	public String getFirstURL() {
		return firstURL;
	}

	public void setFirstURL(String firstURL) {
		this.firstURL = firstURL;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
