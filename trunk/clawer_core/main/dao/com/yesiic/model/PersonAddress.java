package com.yesiic.model;

import java.util.Date;

/**
 * TePAddr entity. @author MyEclipse Persistence Tools
 */

public class PersonAddress implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 185209594110232349L;
	private Long id;
	private Person person;
	private Code fromWhere;
	private String fromWhereName;
	private Code country;
	private Code province;
	private Code city;
	private String countryName;
	private String provinceName;
	private String cityName;
	private String address;
	private String postcode;
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
	public Code getCountry() {
		return country;
	}
	public void setCountry(Code country) {
		this.country = country;
	}
	public Code getProvince() {
		return province;
	}
	public void setProvince(Code province) {
		this.province = province;
	}
	public Code getCity() {
		return city;
	}
	public void setCity(Code city) {
		this.city = city;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
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