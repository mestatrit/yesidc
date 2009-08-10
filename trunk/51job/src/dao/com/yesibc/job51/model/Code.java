package com.yesibc.job51.model;

import java.util.List;

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
	private Code parent;
	private String code;
	private String ename;
	private String cname;
	private String cname1;
	private Long sortList;
	private String createDate;
	private String updateDate;
	private Long codeLevel;
	private String createUser;
	private String updateUser;
	private List<Code> children;

	public String getCname1() {
		return cname1;
	}

	public void setCname1(String cname1) {
		this.cname1 = cname1;
	}

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

	public Code getParent() {
		return parent;
	}

	public void setParent(Code parent) {
		this.parent = parent;
	}

	public List<Code> getChildren() {
		return children;
	}

	public void setChildren(List<Code> children) {
		this.children = children;
	}

}