package com.yesiic.person.model;

import java.util.Date;

import com.yesiic.base.model.Code;

/**
 * TePEdu entity. @author MyEclipse Persistence Tools
 */

public class PersonEdu implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 412275846457573925L;

	public static final String EDU_TYPE_SCHOOL = "1";

	public static final String EDU_TYPE_TRAINING = "2";

	public static final String EDU_TYPE_CERTIFICATION = "3";

	private Long id;
	private Person person;
	private Code fromWhere;
	private String fromWhereName;
	private Date eduDateFrom;
	private Date eduDateTo;
	private String eduName;
	private String eduSpecialityName;
	private Code eduSpeciality;
	private String eduLevelName;
	private Code eduLevel;
	private String eduType;
	private String memo;
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
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
	public Date getEduDateFrom() {
		return eduDateFrom;
	}
	public void setEduDateFrom(Date eduDateFrom) {
		this.eduDateFrom = eduDateFrom;
	}
	public Date getEduDateTo() {
		return eduDateTo;
	}
	public void setEduDateTo(Date eduDateTo) {
		this.eduDateTo = eduDateTo;
	}
	public String getEduName() {
		return eduName;
	}
	public void setEduName(String eduName) {
		this.eduName = eduName;
	}
	public String getEduSpecialityName() {
		return eduSpecialityName;
	}
	public void setEduSpecialityName(String eduSpecialityName) {
		this.eduSpecialityName = eduSpecialityName;
	}
	public Code getEduSpeciality() {
		return eduSpeciality;
	}
	public void setEduSpeciality(Code eduSpeciality) {
		this.eduSpeciality = eduSpeciality;
	}
	public String getEduLevelName() {
		return eduLevelName;
	}
	public void setEduLevelName(String eduLevelName) {
		this.eduLevelName = eduLevelName;
	}
	public Code getEduLevel() {
		return eduLevel;
	}
	public void setEduLevel(Code eduLevel) {
		this.eduLevel = eduLevel;
	}
	public String getEduType() {
		return eduType;
	}
	public void setEduType(String eduType) {
		this.eduType = eduType;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
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