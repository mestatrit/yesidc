package com.yesibc.job51.model;

import java.util.Date;

/**
 * TePEdu entity. @author MyEclipse Persistence Tools
 */

public class PersonEdu implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 412275846457573925L;
	
	public static final String EDU_TYPE_SCHOOL="1";
	
	public static final String EDU_TYPE_TRAINING="2";
	
	public static final String EDU_TYPE_CERTIFICATION="3";
	
	private Long id;
	private Date eduDateFrom;
	private Date eduDateTo;
	private String eduName;
	private String eduSpeciality;
	private String eduLevel;
	private String eduType;
	private Date createDate;
	private Date updateDate;
	private Long personId;
	private String createUser;
	private String updateUser;
	private String memo;
	private Code eduSpecialityFK;
	private Code eduLevelFK;

	// Constructors

	public Code getEduLevelFK() {
		return eduLevelFK;
	}

	public void setEduLevelFK(Code eduLevelFK) {
		this.eduLevelFK = eduLevelFK;
	}

	public Code getEduSpecialityFK() {
		return eduSpecialityFK;
	}

	public void setEduSpecialityFK(Code eduSpecialityFK) {
		this.eduSpecialityFK = eduSpecialityFK;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	/** default constructor */
	public PersonEdu() {
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getEduDateFrom() {
		return this.eduDateFrom;
	}

	public void setEduDateFrom(Date eduDateFrom) {
		this.eduDateFrom = eduDateFrom;
	}

	public Date getEduDateTo() {
		return this.eduDateTo;
	}

	public void setEduDateTo(Date eduDateTo) {
		this.eduDateTo = eduDateTo;
	}

	public String getEduName() {
		return this.eduName;
	}

	public void setEduName(String eduName) {
		this.eduName = eduName;
	}

	public String getEduSpeciality() {
		return this.eduSpeciality;
	}

	public void setEduSpeciality(String eduSpeciality) {
		this.eduSpeciality = eduSpeciality;
	}

	public String getEduLevel() {
		return this.eduLevel;
	}

	public void setEduLevel(String eduLevel) {
		this.eduLevel = eduLevel;
	}

	public String getEduType() {
		return this.eduType;
	}

	public void setEduType(String eduType) {
		this.eduType = eduType;
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

	public Long getPersonId() {
		return this.personId;
	}

	public void setPersonId(Long personId) {
		this.personId = personId;
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