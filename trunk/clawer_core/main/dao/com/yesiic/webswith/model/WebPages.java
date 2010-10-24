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

	/**
	 * 11-search types;12-search types 2 level;21-search pages;22-search pages 2
	 * level;31-details;32-details 2 level;
	 **/

	public static String PAGE_TYPES_11 = "11";
	public static String PAGE_TYPES_12 = "11";
	public static String PAGE_PAGES_21 = "21";
	public static String PAGE_PAGES_22 = "22";
	public static String PAGE_DETAILS_31 = "31";
	public static String PAGE_DETAILS_32 = "31";

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
