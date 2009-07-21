package com.yesibc.job51.model;


/**
 * TeEmail entity. @author MyEclipse Persistence Tools
 */

public class PersonEmail implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -8194296996528149627L;
	private Long id;
	private Code city;
	private String email;
	private String nameDefault;
	

	private String mailType;
	private Person person;
	private Long personId;
	private String createDate;
	private String updateDate;
	private String createUser;
	private String updateUser;

	// Constructors


	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNameDefault() {
		return this.nameDefault;
	}

	public void setNameDefault(String nameDefault) {
		this.nameDefault = nameDefault;
	}

	public String getMailType() {
		return this.mailType;
	}

	public void setMailType(String mailType) {
		this.mailType = mailType;
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

	public Code getCity() {
		return city;
	}

	public void setCity(Code city) {
		this.city = city;
	}

	public Long getPersonId() {
		return personId;
	}

	public void setPersonId(Long personId) {
		this.personId = personId;
	}

}