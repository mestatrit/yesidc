package com.yesiic.person.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.yesiic.base.model.Code;

/**
 * TePPerson entity. @author MyEclipse Persistence Tools
 */

public class Person implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 2215862580319408444L;
	private Long id;
	private String personId;
	private Code idType;
	private Code idTypeName;
	private String nameDefault;
	private String nameFirst;
	private String nameMiddle;
	private String nameLast;
	private String nameNick1;
	private String nameNick2;
	private String nameNick3;
	private String sex;
	private Date birthday;
	private Code addrLive;
	private String addrLiveName;
	private Code workYears;
	private String workYearsName;
	private Code addrDomicile;
	private String addrDomicileName;
	private String addrLiveDetail;
	private String addrLiveZip;
	private Code saralyYear;
	private String saralyYearName;
	private String telMobile;
	private String telCompany;
	private String telBp;
	private String telFamily;
	private String homepageSelf1;
	private String homepageSelf2;
	private String linkWangwang;
	private String linkQq;
	private String linkMsn;
	private String linkSkype;
	private String linkGtalk;
	private String linkFetion;
	private BigDecimal workSaralyBasic;
	private BigDecimal workBonus;
	private BigDecimal workSubsidy;
	private BigDecimal workStock;
	private String selfAdjust;
	private String jobNature;
	private Code jobIntentIndustry1;
	private Code jobIntentIndustry2;
	private Code jobIntentIndustry3;
	private Code jobIntentIndustry4;
	private Code jobIntentIndustry5;
	private String jobIntentIndustryName1;
	private String jobIntentIndustryName2;
	private String jobIntentIndustryName3;
	private String jobIntentIndustryName4;
	private String jobIntentIndustryName5;
	private Code jobIntentAddr1;
	private Code jobIntentAddr2;
	private Code jobIntentAddr3;
	private Code jobIntentAddr4;
	private Code jobIntentAddr5;
	private String jobIntentAddrName1;
	private String jobIntentAddrName2;
	private String jobIntentAddrName3;
	private String jobIntentAddrName4;
	private String jobIntentAddrName5;
	private Code jobIntentFun1;
	private Code jobIntentFun2;
	private Code jobIntentFun3;
	private Code jobIntentFun4;
	private Code jobIntentFun5;
	private String jobIntentFunName1;
	private String jobIntentFunName2;
	private String jobIntentFunName3;
	private String jobIntentFunName4;
	private String jobIntentFunName5;
	private Code jobIntentSalary;
	private String jobIntentSalaryName;
	private Code fromWhere;
	private String fromWhereName;
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	
	private List<PersonSkill> personSkills;
	private List<PersonAppend> personAppends;
	private List<PersonLanguage> personLanguages;
	private List<PersonEmail> personEmails;
	private List<PersonEdu> personEdus;
	private List<PersonEdu> personAddresses;

	public String getPersonId() {
		return personId;
	}

	public void setPersonId(String personId) {
		this.personId = personId;
	}

	/** default constructor */
	public Person() {
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNameDefault() {
		return this.nameDefault;
	}

	public void setNameDefault(String nameDefault) {
		this.nameDefault = nameDefault;
	}

	public String getNameFirst() {
		return this.nameFirst;
	}

	public void setNameFirst(String nameFirst) {
		this.nameFirst = nameFirst;
	}

	public String getNameMiddle() {
		return this.nameMiddle;
	}

	public void setNameMiddle(String nameMiddle) {
		this.nameMiddle = nameMiddle;
	}

	public String getNameLast() {
		return this.nameLast;
	}

	public void setNameLast(String nameLast) {
		this.nameLast = nameLast;
	}

	public String getNameNick1() {
		return this.nameNick1;
	}

	public void setNameNick1(String nameNick1) {
		this.nameNick1 = nameNick1;
	}

	public String getNameNick2() {
		return this.nameNick2;
	}

	public void setNameNick2(String nameNick2) {
		this.nameNick2 = nameNick2;
	}

	public String getNameNick3() {
		return this.nameNick3;
	}

	public void setNameNick3(String nameNick3) {
		this.nameNick3 = nameNick3;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Code getAddrLive() {
		return this.addrLive;
	}

	public void setAddrLive(Code addrLive) {
		this.addrLive = addrLive;
	}

	public Code getWorkYears() {
		return this.workYears;
	}

	public void setWorkYears(Code workYears) {
		this.workYears = workYears;
	}

	public Code getAddrDomicile() {
		return this.addrDomicile;
	}

	public void setAddrDomicile(Code addrDomicile) {
		this.addrDomicile = addrDomicile;
	}

	public String getAddrLiveDetail() {
		return this.addrLiveDetail;
	}

	public void setAddrLiveDetail(String addrLiveDetail) {
		this.addrLiveDetail = addrLiveDetail;
	}

	public String getAddrLiveZip() {
		return this.addrLiveZip;
	}

	public void setAddrLiveZip(String addrLiveZip) {
		this.addrLiveZip = addrLiveZip;
	}

	public String getTelMobile() {
		return this.telMobile;
	}

	public void setTelMobile(String telMobile) {
		this.telMobile = telMobile;
	}

	public String getTelCompany() {
		return this.telCompany;
	}

	public void setTelCompany(String telCompany) {
		this.telCompany = telCompany;
	}

	public String getTelBp() {
		return this.telBp;
	}

	public void setTelBp(String telBp) {
		this.telBp = telBp;
	}

	public String getTelFamily() {
		return this.telFamily;
	}

	public void setTelFamily(String telFamily) {
		this.telFamily = telFamily;
	}

	public String getHomepageSelf1() {
		return this.homepageSelf1;
	}

	public void setHomepageSelf1(String homepageSelf1) {
		this.homepageSelf1 = homepageSelf1;
	}

	public String getLinkWangwang() {
		return this.linkWangwang;
	}

	public void setLinkWangwang(String linkWangwang) {
		this.linkWangwang = linkWangwang;
	}

	public String getLinkQq() {
		return this.linkQq;
	}

	public void setLinkQq(String linkQq) {
		this.linkQq = linkQq;
	}

	public String getLinkMsn() {
		return this.linkMsn;
	}

	public void setLinkMsn(String linkMsn) {
		this.linkMsn = linkMsn;
	}

	public String getLinkSkype() {
		return this.linkSkype;
	}

	public void setLinkSkype(String linkSkype) {
		this.linkSkype = linkSkype;
	}

	public String getLinkGtalk() {
		return this.linkGtalk;
	}

	public void setLinkGtalk(String linkGtalk) {
		this.linkGtalk = linkGtalk;
	}

	public String getLinkFetion() {
		return this.linkFetion;
	}

	public void setLinkFetion(String linkFetion) {
		this.linkFetion = linkFetion;
	}

	public BigDecimal getWorkSaralyBasic() {
		return this.workSaralyBasic;
	}

	public void setWorkSaralyBasic(BigDecimal workSaralyBasic) {
		this.workSaralyBasic = workSaralyBasic;
	}

	public BigDecimal getWorkBonus() {
		return this.workBonus;
	}

	public void setWorkBonus(BigDecimal workBonus) {
		this.workBonus = workBonus;
	}

	public BigDecimal getWorkSubsidy() {
		return this.workSubsidy;
	}

	public void setWorkSubsidy(BigDecimal workSubsidy) {
		this.workSubsidy = workSubsidy;
	}

	public BigDecimal getWorkStock() {
		return this.workStock;
	}

	public void setWorkStock(BigDecimal workStock) {
		this.workStock = workStock;
	}

	public String getSelfAdjust() {
		return this.selfAdjust;
	}

	public void setSelfAdjust(String selfAdjust) {
		this.selfAdjust = selfAdjust;
	}

	public String getJobNature() {
		return this.jobNature;
	}

	public void setJobNature(String jobNature) {
		this.jobNature = jobNature;
	}

	public Code getJobIntentIndustry1() {
		return this.jobIntentIndustry1;
	}

	public void setJobIntentIndustry1(Code jobIntentIndustry1) {
		this.jobIntentIndustry1 = jobIntentIndustry1;
	}

	public Code getJobIntentAddr1() {
		return this.jobIntentAddr1;
	}

	public void setJobIntentAddr1(Code jobIntentAddr1) {
		this.jobIntentAddr1 = jobIntentAddr1;
	}

	public Code getJobIntentFun1() {
		return this.jobIntentFun1;
	}

	public void setJobIntentFun1(Code jobIntentFun1) {
		this.jobIntentFun1 = jobIntentFun1;
	}

	public Code getJobIntentSalary() {
		return this.jobIntentSalary;
	}

	public void setJobIntentSalary(Code jobIntentSalary) {
		this.jobIntentSalary = jobIntentSalary;
	}

	public Code getJobIntentIndustry2() {
		return this.jobIntentIndustry2;
	}

	public void setJobIntentIndustry2(Code jobIntentIndustry2) {
		this.jobIntentIndustry2 = jobIntentIndustry2;
	}

	public Code getJobIntentAddr2() {
		return this.jobIntentAddr2;
	}

	public void setJobIntentAddr2(Code jobIntentAddr2) {
		this.jobIntentAddr2 = jobIntentAddr2;
	}

	public Code getJobIntentFun2() {
		return this.jobIntentFun2;
	}

	public void setJobIntentFun2(Code jobIntentFun2) {
		this.jobIntentFun2 = jobIntentFun2;
	}

	public Code getJobIntentFun3() {
		return this.jobIntentFun3;
	}

	public void setJobIntentFun3(Code jobIntentFun3) {
		this.jobIntentFun3 = jobIntentFun3;
	}

	public Code getJobIntentFun4() {
		return this.jobIntentFun4;
	}

	public void setJobIntentFun4(Code jobIntentFun4) {
		this.jobIntentFun4 = jobIntentFun4;
	}

	public Code getJobIntentFun5() {
		return this.jobIntentFun5;
	}

	public void setJobIntentFun5(Code jobIntentFun5) {
		this.jobIntentFun5 = jobIntentFun5;
	}

	public Code getJobIntentAddr3() {
		return this.jobIntentAddr3;
	}

	public void setJobIntentAddr3(Code jobIntentAddr3) {
		this.jobIntentAddr3 = jobIntentAddr3;
	}

	public Code getJobIntentAddr4() {
		return this.jobIntentAddr4;
	}

	public void setJobIntentAddr4(Code jobIntentAddr4) {
		this.jobIntentAddr4 = jobIntentAddr4;
	}

	public Code getJobIntentAddr5() {
		return this.jobIntentAddr5;
	}

	public void setJobIntentAddr5(Code jobIntentAddr5) {
		this.jobIntentAddr5 = jobIntentAddr5;
	}

	public Code getJobIntentIndustry3() {
		return this.jobIntentIndustry3;
	}

	public void setJobIntentIndustry3(Code jobIntentIndustry3) {
		this.jobIntentIndustry3 = jobIntentIndustry3;
	}

	public Code getJobIntentIndustry4() {
		return this.jobIntentIndustry4;
	}

	public void setJobIntentIndustry4(Code jobIntentIndustry4) {
		this.jobIntentIndustry4 = jobIntentIndustry4;
	}

	public Code getJobIntentIndustry5() {
		return this.jobIntentIndustry5;
	}

	public void setJobIntentIndustry5(Code jobIntentIndustry5) {
		this.jobIntentIndustry5 = jobIntentIndustry5;
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

	public Code getIdType() {
		return idType;
	}

	public void setIdType(Code idType) {
		this.idType = idType;
	}

	public Code getIdTypeName() {
		return idTypeName;
	}

	public void setIdTypeName(Code idTypeName) {
		this.idTypeName = idTypeName;
	}

	public String getAddrLiveName() {
		return addrLiveName;
	}

	public void setAddrLiveName(String addrLiveName) {
		this.addrLiveName = addrLiveName;
	}

	public String getWorkYearsName() {
		return workYearsName;
	}

	public void setWorkYearsName(String workYearsName) {
		this.workYearsName = workYearsName;
	}

	public String getAddrDomicileName() {
		return addrDomicileName;
	}

	public void setAddrDomicileName(String addrDomicileName) {
		this.addrDomicileName = addrDomicileName;
	}

	public Code getSaralyYear() {
		return saralyYear;
	}

	public void setSaralyYear(Code saralyYear) {
		this.saralyYear = saralyYear;
	}

	public String getSaralyYearName() {
		return saralyYearName;
	}

	public void setSaralyYearName(String saralyYearName) {
		this.saralyYearName = saralyYearName;
	}

	public String getHomepageSelf2() {
		return homepageSelf2;
	}

	public void setHomepageSelf2(String homepageSelf2) {
		this.homepageSelf2 = homepageSelf2;
	}

	public String getJobIntentIndustryName1() {
		return jobIntentIndustryName1;
	}

	public void setJobIntentIndustryName1(String jobIntentIndustryName1) {
		this.jobIntentIndustryName1 = jobIntentIndustryName1;
	}

	public String getJobIntentIndustryName2() {
		return jobIntentIndustryName2;
	}

	public void setJobIntentIndustryName2(String jobIntentIndustryName2) {
		this.jobIntentIndustryName2 = jobIntentIndustryName2;
	}

	public String getJobIntentIndustryName3() {
		return jobIntentIndustryName3;
	}

	public void setJobIntentIndustryName3(String jobIntentIndustryName3) {
		this.jobIntentIndustryName3 = jobIntentIndustryName3;
	}

	public String getJobIntentIndustryName4() {
		return jobIntentIndustryName4;
	}

	public void setJobIntentIndustryName4(String jobIntentIndustryName4) {
		this.jobIntentIndustryName4 = jobIntentIndustryName4;
	}

	public String getJobIntentIndustryName5() {
		return jobIntentIndustryName5;
	}

	public void setJobIntentIndustryName5(String jobIntentIndustryName5) {
		this.jobIntentIndustryName5 = jobIntentIndustryName5;
	}

	public String getJobIntentAddrName1() {
		return jobIntentAddrName1;
	}

	public void setJobIntentAddrName1(String jobIntentAddrName1) {
		this.jobIntentAddrName1 = jobIntentAddrName1;
	}

	public String getJobIntentAddrName2() {
		return jobIntentAddrName2;
	}

	public void setJobIntentAddrName2(String jobIntentAddrName2) {
		this.jobIntentAddrName2 = jobIntentAddrName2;
	}

	public String getJobIntentAddrName3() {
		return jobIntentAddrName3;
	}

	public void setJobIntentAddrName3(String jobIntentAddrName3) {
		this.jobIntentAddrName3 = jobIntentAddrName3;
	}

	public String getJobIntentAddrName4() {
		return jobIntentAddrName4;
	}

	public void setJobIntentAddrName4(String jobIntentAddrName4) {
		this.jobIntentAddrName4 = jobIntentAddrName4;
	}

	public String getJobIntentAddrName5() {
		return jobIntentAddrName5;
	}

	public void setJobIntentAddrName5(String jobIntentAddrName5) {
		this.jobIntentAddrName5 = jobIntentAddrName5;
	}

	public String getJobIntentFunName1() {
		return jobIntentFunName1;
	}

	public void setJobIntentFunName1(String jobIntentFunName1) {
		this.jobIntentFunName1 = jobIntentFunName1;
	}

	public String getJobIntentFunName2() {
		return jobIntentFunName2;
	}

	public void setJobIntentFunName2(String jobIntentFunName2) {
		this.jobIntentFunName2 = jobIntentFunName2;
	}

	public String getJobIntentFunName3() {
		return jobIntentFunName3;
	}

	public void setJobIntentFunName3(String jobIntentFunName3) {
		this.jobIntentFunName3 = jobIntentFunName3;
	}

	public String getJobIntentFunName4() {
		return jobIntentFunName4;
	}

	public void setJobIntentFunName4(String jobIntentFunName4) {
		this.jobIntentFunName4 = jobIntentFunName4;
	}

	public String getJobIntentFunName5() {
		return jobIntentFunName5;
	}

	public void setJobIntentFunName5(String jobIntentFunName5) {
		this.jobIntentFunName5 = jobIntentFunName5;
	}

	public String getJobIntentSalaryName() {
		return jobIntentSalaryName;
	}

	public void setJobIntentSalaryName(String jobIntentSalaryName) {
		this.jobIntentSalaryName = jobIntentSalaryName;
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

	public List<PersonSkill> getPersonSkills() {
		return personSkills;
	}

	public void setPersonSkills(List<PersonSkill> personSkills) {
		this.personSkills = personSkills;
	}

	public List<PersonAppend> getPersonAppends() {
		return personAppends;
	}

	public void setPersonAppends(List<PersonAppend> personAppends) {
		this.personAppends = personAppends;
	}

	public List<PersonLanguage> getPersonLanguages() {
		return personLanguages;
	}

	public void setPersonLanguages(List<PersonLanguage> personLanguages) {
		this.personLanguages = personLanguages;
	}

	public List<PersonEmail> getPersonEmails() {
		return personEmails;
	}

	public void setPersonEmails(List<PersonEmail> personEmails) {
		this.personEmails = personEmails;
	}

	public List<PersonEdu> getPersonEdus() {
		return personEdus;
	}

	public void setPersonEdus(List<PersonEdu> personEdus) {
		this.personEdus = personEdus;
	}

	public List<PersonEdu> getPersonAddresses() {
		return personAddresses;
	}

	public void setPersonAddresses(List<PersonEdu> personAddresses) {
		this.personAddresses = personAddresses;
	}


}