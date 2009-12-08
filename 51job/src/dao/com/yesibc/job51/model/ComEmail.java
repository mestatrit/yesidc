package com.yesibc.job51.model;

import java.util.Date;
import java.util.List;

/**
 * TeCAddr entity. @author MyEclipse Persistence Tools
 */

public class ComEmail implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 3197774547449040020L;
	private Long id;
	private String email;
	/**
	 * 个人-1 公司共享-2 公司个人-3 
	 */
	private String mailType;
	public final static String MAIL_TYPE_PRIVATE = "1";
	public final static String MAIL_TYPE_COMPANY_SHARE = "2";
	public final static String MAIL_TYPE_COMPANY_PRIVATE = "3";

	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	
	private Code fromWhere;
	private String fromWhereName;

	private List<ComContactHeader> comContactHeaders;

	// Constructors

	/** default constructor */
	public ComEmail() {
	}

	/** minimal constructor */
	public ComEmail(Long id) {
		this.id = id;
	}



	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getMailType() {
		return mailType;
	}

	public void setMailType(String mailType) {
		this.mailType = mailType;
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