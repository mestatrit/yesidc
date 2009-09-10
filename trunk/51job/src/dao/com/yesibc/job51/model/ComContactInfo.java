package com.yesibc.job51.model;

import java.util.Date;
import java.util.List;

/**
 * TeCAddr entity. @author MyEclipse Persistence Tools
 */

public class ComContactInfo implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 3197774547449040020L;
	private Long id;
	private String contractNo;
	
	private Code fromWhere;
	private String fromWhereName;
	
	public final static String CONTRACT_TAG_TEL = "tel";
	public final static String CONTRACT_TAG_FAX = "fax";
	public final static String CONTRACT_TAG_QQ = "qq";
	public final static String CONTRACT_TAG_WW = "ww";
	
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	
	private List<ComContactHeader> comContactHeaders;

	// Constructors

	/** default constructor */
	public ComContactInfo() {
	}

	/** minimal constructor */
	public ComContactInfo(Long id) {
		this.id = id;
	}



	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public String getContractNo() {
		return contractNo;
	}

	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
	}

	public List<ComContactHeader> getComContactHeaders() {
		return comContactHeaders;
	}

	public void setComContactHeaders(List<ComContactHeader> comContactHeaders) {
		this.comContactHeaders = comContactHeaders;
	}

	public Code getFromWhere() {
		return fromWhere;
	}

	public void setFromWhere(Code fromWhere) {
		this.fromWhere = fromWhere;
	}

	public String getFromWhereName() {
		return fromWhereName;
	}

	public void setFromWhereName(String fromWhereName) {
		this.fromWhereName = fromWhereName;
	}


}