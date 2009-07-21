package com.yesibc.job51.model;


/**
 * TeCEmail entity. @author MyEclipse Persistence Tools
 */

public class ComEmail implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 5380654787914433154L;
	private Long id;
	private String countryName;
	private String cityName;
	private String fromWhere;
	private String defaultName;
	private String defaultNameEn;
	private Code country;
	private Code city;
	private String email;
	private String mailType;
	private String companyName;
	private Long companyid;
	private String mobile1;
	private String mobile2;
	private String tel1;
	private String tel2;
	private String tel3;
	private String fax1;
	private String fax2;
	private String fax3;
	private String wangwangId;
	private String createDate;
	private String updateDate;
	private String createUser;
	private String updateUser;
	private String department;
	private String position;

	// Constructors

	/** default constructor */
	public ComEmail() {
	}

	/** minimal constructor */
	public ComEmail(Long id, String email) {
		this.id = id;
		this.email = email;
	}


	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFromWhere() {
		return this.fromWhere;
	}

	public void setFromWhere(String fromWhere) {
		this.fromWhere = fromWhere;
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

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMailType() {
		return this.mailType;
	}

	public void setMailType(String mailType) {
		this.mailType = mailType;
	}

	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public Long getCompanyid() {
		return this.companyid;
	}

	public void setCompanyid(Long companyid) {
		this.companyid = companyid;
	}

	public String getMobile1() {
		return this.mobile1;
	}

	public void setMobile1(String mobile1) {
		this.mobile1 = mobile1;
	}

	public String getMobile2() {
		return this.mobile2;
	}

	public void setMobile2(String mobile2) {
		this.mobile2 = mobile2;
	}

	public String getTel1() {
		return this.tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return this.tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return this.tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	public String getFax1() {
		return this.fax1;
	}

	public void setFax1(String fax1) {
		this.fax1 = fax1;
	}

	public String getFax2() {
		return this.fax2;
	}

	public void setFax2(String fax2) {
		this.fax2 = fax2;
	}

	public String getFax3() {
		return this.fax3;
	}

	public void setFax3(String fax3) {
		this.fax3 = fax3;
	}

	public String getWangwangId() {
		return this.wangwangId;
	}

	public void setWangwangId(String wangwangId) {
		this.wangwangId = wangwangId;
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

}