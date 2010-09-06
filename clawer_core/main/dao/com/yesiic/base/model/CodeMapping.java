package com.yesiic.base.model;

import java.util.Date;
import java.util.List;

/**
 * TeCode entity. @author MyEclipse Persistence Tools
 */

public class CodeMapping implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -4231312582019918823L;
	private Long id;
	private CodeMapping parent;
	private String code;
	private String code1;
	private String ename;
	private String ename1;
	private String cname;
	private String cname1;
	private String memo;
	private Long sortList;
	private Date createDate;
	private Date updateDate;
	private Long codeLevel;
	private String createUser;
	private String updateUser;
	private List<CodeMapping> children;
	private List<Code> codes;

	public String getCname1() {
		return cname1;
	}

	public void setCname1(String cname1) {
		this.cname1 = cname1;
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

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
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

	public String getEname1() {
		return ename1;
	}

	public void setEname1(String ename1) {
		this.ename1 = ename1;
	}

	public String getCode1() {
		return code1;
	}

	public void setCode1(String code1) {
		this.code1 = code1;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public List<Code> getCodes() {
		return codes;
	}

	public void setCodes(List<Code> codes) {
		this.codes = codes;
	}

	public CodeMapping getParent() {
		return parent;
	}

	public void setParent(CodeMapping parent) {
		this.parent = parent;
	}

	public List<CodeMapping> getChildren() {
		return children;
	}

	public void setChildren(List<CodeMapping> children) {
		this.children = children;
	}

}