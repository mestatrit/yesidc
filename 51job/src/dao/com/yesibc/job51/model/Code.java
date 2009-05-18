package com.yesibc.job51.model;

/**
 * TeCode entity. @author MyEclipse Persistence Tools
 */

public class Code implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -4231312582019918823L;
	private Long id;
	private Code codeType;
	private String code;
	private String ename;
	private String cname;
	private String cname1;

	public String getCname1() {
		return cname1;
	}

	public void setCname1(String cname1) {
		this.cname1 = cname1;
	}

	private Long sortList;
	private String createDate;
	private String updateDate;
	private Long codeLevel;
	private String createUser;
	private String updateUser;

	// Constructors

	/** default constructor */
	public Code() {
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getEname() {
		return this.ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Long getSortList() {
		return this.sortList;
	}

	public void setSortList(Long sortList) {
		this.sortList = sortList;
	}

	public String getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public Long getCodeLevel() {
		return this.codeLevel;
	}

	public void setCodeLevel(Long codeLevel) {
		this.codeLevel = codeLevel;
	}

	public String getCreateUser() {
		return this.createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getUpdateUser() {
		return this.updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public Code getCodeType() {
		return codeType;
	}

	public void setCodeType(Code codeType) {
		this.codeType = codeType;
	}

}