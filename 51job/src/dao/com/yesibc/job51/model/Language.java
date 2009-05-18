package com.yesibc.job51.model;

import java.util.Date;

/**
 * TePLanguage entity. @author MyEclipse Persistence Tools
 */

public class Language implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5092936477192462770L;

	/**
	 * 未知/�?�?/良好/熟练/精�??
	 * 
	 */
	public static final String LEVEL_UNKNOWN = "0";
	public static final String LEVEL_COMMON = "1";
	public static final String LEVEL_GOOD = "2";
	public static final String LEVEL_BETTER = "3";
	public static final String LEVEL_BEST = "4";

	private Long id;
	private Person person;
	private String useLevelName;
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	private String languageName;
	private Code language;
	private Code useLevel;

	public String getUseLevelName() {
		return useLevelName;
	}

	public void setUseLevelName(String useLevelName) {
		this.useLevelName = useLevelName;
	}

	public Code getLanguage() {
		return language;
	}

	public void setLanguage(Code language) {
		this.language = language;
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

	public Code getUseLevel() {
		return useLevel;
	}

	public void setUseLevel(Code useLevel) {
		this.useLevel = useLevel;
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

}