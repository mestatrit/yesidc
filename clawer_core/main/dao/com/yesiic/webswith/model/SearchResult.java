package com.yesiic.webswith.model;

import java.util.Date;

public class SearchResult implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -97712101671423175L;
	private Long id;

	public static String STATUS_KO = "1";
	public static String STATUS_OK = "2";

	private String requestId;
	private String urlCode;
	private String urlAddr;
	private int totRecords;
	private int totPages;
	private String status;
	private Date createDate;
	private Date updateDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUrlCode() {
		return urlCode;
	}

	public void setUrlCode(String urlCode) {
		this.urlCode = urlCode;
	}

	public String getUrlAddr() {
		return urlAddr;
	}

	public void setUrlAddr(String urlAddr) {
		this.urlAddr = urlAddr;
	}

	public int getTotRecords() {
		return totRecords;
	}

	public void setTotRecords(int totRecords) {
		this.totRecords = totRecords;
	}

	public int getTotPages() {
		return totPages;
	}

	public void setTotPages(int totPages) {
		this.totPages = totPages;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getRequestId() {
		return requestId;
	}

	public void setRequestId(String requestId) {
		this.requestId = requestId;
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

}
