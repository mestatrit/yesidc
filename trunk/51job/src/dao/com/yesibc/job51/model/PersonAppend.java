package com.yesibc.job51.model;

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
	private Date createDate;
	private Date updateDate;
	private Code appendType;
	private String appendTypeName;

	private String content;
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

}