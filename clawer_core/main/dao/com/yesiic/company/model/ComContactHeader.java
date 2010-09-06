package com.yesiic.company.model;

import java.util.Date;
import java.util.List;

import com.yesiic.base.model.Code;

/**
 * TeCEmail entity. @author MyEclipse Persistence Tools
 */

public class ComContactHeader implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 5380654787914433154L;
	private Long id;

	private Code fromWhere;
	private String fromWhereName;

	private String defaultName;
	private String defaultNameEn;

	private Code country;
	private Code province;
	private Code city;
	private String countryName;
	private String provinceName;
	private String cityName;
	private String address1;
	private String address2;
	private String postcode1;
	private String postcode2;

	private Company company;
	private String companyName;

	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	private String department;
	private String position;

	private List<ComContactInfo> comContactInfos;
	private List<ComEmail> comEmails;

	// Constructors

	/** default constructor */
	public ComContactHeader() {
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDefaultName() {
		return this.defaultName;
	}

	public void setDefaultName(String defaultName) {
		this.defaultName = defaultName;
	}

	public String getDefaultNameEn() {
		return this.defaultNameEn;
	}

	public void setDefaultNameEn(String defaultNameEn) {
		this.defaultNameEn = defaultNameEn;
	}

	public Code getCountry() {
		return this.country;
	}

	public void setCountry(Code country) {
		this.country = country;
	}

	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
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

	public String getDepartment() {
		return this.department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public Code getCity() {
		return city;
	}

	public void setCity(Code city) {
		this.city = city;
	}

	public Code getProvince() {
		return province;
	}

	public void setProvince(Code province) {
		this.province = province;
	}

	public String getProvinceName() {
		return provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getPostcode1() {
		return postcode1;
	}

	public void setPostcode1(String postcode1) {
		this.postcode1 = postcode1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getPostcode2() {
		return postcode2;
	}

	public void setPostcode2(String postcode2) {
		this.postcode2 = postcode2;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public List<ComContactInfo> getComContactInfos() {
		return comContactInfos;
	}

	public void setComContactInfos(List<ComContactInfo> comContactInfos) {
		this.comContactInfos = comContactInfos;
	}

	public List<ComEmail> getComEmails() {
		return comEmails;
	}

	public void setComEmails(List<ComEmail> comEmails) {
		this.comEmails = comEmails;
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

	@Override
	public String toString() {
		return "ComContactHeader [address1=" + address1 + ", address2="
				+ address2 + ", city=" + city + ", cityName=" + cityName
				+ ", company=" + company + ", companyName=" + companyName
				+ ", country=" + country + ", countryName=" + countryName
				+ ", createDate=" + createDate + ", createUser=" + createUser
				+ ", defaultName=" + defaultName + ", defaultNameEn="
				+ defaultNameEn + ", department=" + department + ", fromWhere="
				+ fromWhere + ", fromWhereName=" + fromWhereName + ", id=" + id
				+ ", position=" + position + ", postcode1=" + postcode1
				+ ", postcode2=" + postcode2 + ", province=" + province
				+ ", provinceName=" + provinceName + ", updateDate="
				+ updateDate + ", updateUser=" + updateUser + "]";
	}

}