package com.yesiic.person.model;

import java.util.Date;

import com.yesiic.base.model.Code;

/**
 * TePLanguage entity. @author MyEclipse Persistence Tools
 */

public class PersonLanguage implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5092936477192462770L;

	private Long id;
	private Person person;
	private Code fromWhere;
	private String fromWhereName;
	
	private String useLevelName;
	private Code useLevel;

	private String languageName;
	private Code languageCode;

	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	
	public Code getLanguageCode() {
		return languageCode;
	}

	public void setLanguageCode(Code languageCode) {
		this.languageCode = languageCode;
	}

	public String getLanguageName() {
		return languageName;
	}

	public void setLanguageName(String languageName) {
		this.languageName = languageName;
	}

	public Long getId() {
		return id;
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

	public String getUseLevelName() {
		return useLevelName;
	}

	public void setUseLevelName(String useLevelName) {
		this.useLevelName = useLevelName;
	}

	public Code getUseLevel() {
		return useLevel;
	}

	public void setUseLevel(Code useLevel) {
		this.useLevel = useLevel;
	}

}