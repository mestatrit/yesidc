package com.yesiic.webswith.model;

import java.util.Date;

public class WebPages implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -977121016714231777L;
	private Long id;

	public static String STATUS_KO = "1";
	public static String STATUS_OK = "2";

	// 0-default=OK;1-search type list;2-search pages list;3-job list;4-company
	// list
	public static String PAGE_TYPE_SEARCH_LIST = "1";
	public static String PAGE_TYPE_SEARCH_PAGES = "2";
	public static String PAGE_TYPE_JOB_LIST = "3";

	private String pageType;

	private String requestId;
	private String url;
	private String status;
	private Date createDate;
	private Date updateDate;
	private String memo;

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPageType() {
		return pageType;
	}

	public void setPageType(String pageType) {
		this.pageType = pageType;
	}

	public String getRequestId() {
		return requestId;
	}

	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "Pages [id=" + id + ", pageType=" + pageType + ", requestId=" + requestId + ", status=" + status
				+ ", updateDate=" + updateDate + ", url=" + url + "]";
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

}
