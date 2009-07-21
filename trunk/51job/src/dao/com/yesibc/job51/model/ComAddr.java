package com.yesibc.job51.model;

import java.util.Date;

/**
 * TeCAddr entity. @author MyEclipse Persistence Tools
 */

public class ComAddr implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 3197774547449040020L;
	private Long id;
	private Company company;
	private Code country;
	private Code city;
	private String cityName;
	private String countryName;
	private String address;
	private String postcode;
	private String memo;
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;

	// Constructors

	/** default constructor */
	public ComAddr() {
	}

	/** minimal constructor */
	public ComAddr(Long id) {
		this.id = id;
	}



	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostcode() {
		return this.postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
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

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Code getCountry() {
		return country;
	}

	public void setCountry(Code country) {
		this.country = country;
	}

	public Code getCity() {
		return city;
	}

	public void setCity(Code city) {
		this.city = city;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
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

}