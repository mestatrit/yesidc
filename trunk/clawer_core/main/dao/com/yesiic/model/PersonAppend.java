package com.yesiic.model;

import java.util.Date;

/**
 * TePAppend entity. @author MyEclipse Persistence Tools
 */

public class PersonAppend implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 276067746607355244L;

	private Long id;
	private Person person;
	private Code fromWhere;
	private String fromWhereName;

	private Code appendType;
	private String appendTypeName;

	private String content;
	private String content1;

	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;

	// Constructors

	/** default constructor */
	public PersonAppend() {
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public String getAppendTypeName() {
		return appendTypeName;
	}

	public void setAppendTypeName(String appendTypeName) {
		this.appendTypeName = appendTypeName;
	}

	public void setAppendType(Code appendType) {
		this.appendType = appendType;
	}

	public Code getAppendType() {
		return appendType;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
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

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getContent1() {
		return content1;
	}

	public void setContent1(String content1) {
		this.content1 = content1;
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