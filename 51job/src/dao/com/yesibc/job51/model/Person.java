package com.yesibc.job51.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

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
	private Code workYears;
	private Code addrDomicile;
	private String addrLiveDetail;
	private String addrLiveZip;
	private Code workSaralyYear;
	private String telMobile;
	private String telCompany;
	private String telBp;
	private String telFamily;
	private String homepageSelf;
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
	private Code jobNature;
	private Code jobIntentIndustry1;
	private Code jobIntentAddr1;
	private Code jobIntentFun1;
	private Code jobIntentSalary;
	private Code jobIntentIndustry2;
	private Code jobIntentAddr2;
	private Code jobIntentFun2;
	private Code jobIntentFun3;
	private Code jobIntentFun4;
	private Code jobIntentFun5;
	private Code jobIntentAddr3;
	private Code jobIntentAddr4;
	private Code jobIntentAddr5;
	private Code jobIntentIndustry3;
	private Code jobIntentIndustry4;
	private Code jobIntentIndustry5;
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	private List<Skill> skills;
	private List<Append> appends;
	private List<Language> languages;
	private List<Email> emails;
	private List<Edu> edus;

	public String getPersonId() {
		return personId;
	}

	public void setPersonId(String personId) {
		this.personId = personId;
	}


	// Constructors

	public List<Edu> getEdus() {
		return edus;
	}

	public void setEdus(List<Edu> edus) {
		this.edus = edus;
	}

	public List<Email> getEmails() {
		return emails;
	}

	public List<Append> getAppends() {
		return appends;
	}

	public void setAppends(List<Append> appends) {
		this.appends = appends;
	}

	public void setEmails(List<Email> emails) {
		this.emails = emails;
	}

	public List<Skill> getSkills() {
		return skills;
	}

	public void setSkills(List<Skill> skills) {
		this.skills = skills;
	}

	public List<Language> getLanguages() {
		return languages;
	}

	public void setLanguages(List<Language> languages) {
		this.languages = languages;
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

	public Code getWorkSaralyYear() {
		return this.workSaralyYear;
	}

	public void setWorkSaralyYear(Code workSaralyYear) {
		this.workSaralyYear = workSaralyYear;
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

	public String getHomepageSelf() {
		return this.homepageSelf;
	}

	public void setHomepageSelf(String homepageSelf) {
		this.homepageSelf = homepageSelf;
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

	public Code getJobNature() {
		return this.jobNature;
	}

	public void setJobNature(Code jobNature) {
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

	public String toString() {
		StringBuffer buffer = new StringBuffer(500);
		buffer.append("serialVersionUID = ");
		buffer.append(",\nid = ");
		if (this.id != null)
			buffer.append(this.id.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nnameDefault = ");
		buffer.append(this.nameDefault);
		buffer.append(",\nnameFirst = ");
		buffer.append(this.nameFirst);
		buffer.append(",\nnameMiddle = ");
		buffer.append(this.nameMiddle);
		buffer.append(",\nnameLast = ");
		buffer.append(this.nameLast);
		buffer.append(",\nnameNick1 = ");
		buffer.append(this.nameNick1);
		buffer.append(",\nnameNick2 = ");
		buffer.append(this.nameNick2);
		buffer.append(",\nnameNick3 = ");
		buffer.append(this.nameNick3);
		buffer.append(",\nsex = ");
		buffer.append(this.sex);
		buffer.append(",\nbirthday = ");
		if (this.birthday != null)
			buffer.append(this.birthday.toString());
		else
			buffer.append("value is null");
		buffer.append(",\naddrLive = ");
		if (this.addrLive != null)
			buffer.append(this.addrLive.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nworkYears = ");
		if (this.workYears != null)
			buffer.append(this.workYears.toString());
		else
			buffer.append("value is null");
		buffer.append(",\naddrDomicile = ");
		if (this.addrDomicile != null)
			buffer.append(this.addrDomicile.toString());
		else
			buffer.append("value is null");
		buffer.append(",\naddrLiveDetail = ");
		buffer.append(this.addrLiveDetail);
		buffer.append(",\naddrLiveZip = ");
		buffer.append(this.addrLiveZip);
		buffer.append(",\nworkSaralyYear = ");
		if (this.workSaralyYear != null)
			buffer.append(this.workSaralyYear.toString());
		else
			buffer.append("value is null");
		buffer.append(",\ntelMobile = ");
		buffer.append(this.telMobile);
		buffer.append(",\ntelCompany = ");
		buffer.append(this.telCompany);
		buffer.append(",\ntelBp = ");
		buffer.append(this.telBp);
		buffer.append(",\ntelFamily = ");
		buffer.append(this.telFamily);
		buffer.append(",\nhomepageSelf = ");
		buffer.append(this.homepageSelf);
		buffer.append(",\nlinkWangwang = ");
		buffer.append(this.linkWangwang);
		buffer.append(",\nlinkQq = ");
		buffer.append(this.linkQq);
		buffer.append(",\nlinkMsn = ");
		buffer.append(this.linkMsn);
		buffer.append(",\nlinkSkype = ");
		buffer.append(this.linkSkype);
		buffer.append(",\nlinkGtalk = ");
		buffer.append(this.linkGtalk);
		buffer.append(",\nlinkFetion = ");
		buffer.append(this.linkFetion);
		buffer.append(",\nworkSaralyBasic = ");
		if (this.workSaralyBasic != null)
			buffer.append(this.workSaralyBasic.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nworkBonus = ");
		if (this.workBonus != null)
			buffer.append(this.workBonus.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nworkSubsidy = ");
		if (this.workSubsidy != null)
			buffer.append(this.workSubsidy.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nworkStock = ");
		if (this.workStock != null)
			buffer.append(this.workStock.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nselfAdjust = ");
		buffer.append(this.selfAdjust);
		buffer.append(",\njobNature = ");
		if (this.jobNature != null)
			buffer.append(this.jobNature.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentIndustry1 = ");
		if (this.jobIntentIndustry1 != null)
			buffer.append(this.jobIntentIndustry1.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentAddr1 = ");
		if (this.jobIntentAddr1 != null)
			buffer.append(this.jobIntentAddr1.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentFun1 = ");
		if (this.jobIntentFun1 != null)
			buffer.append(this.jobIntentFun1.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentSalary = ");
		if (this.jobIntentSalary != null)
			buffer.append(this.jobIntentSalary.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentIndustry2 = ");
		if (this.jobIntentIndustry2 != null)
			buffer.append(this.jobIntentIndustry2.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentAddr2 = ");
		if (this.jobIntentAddr2 != null)
			buffer.append(this.jobIntentAddr2.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentFun2 = ");
		if (this.jobIntentFun2 != null)
			buffer.append(this.jobIntentFun2.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentFun3 = ");
		if (this.jobIntentFun3 != null)
			buffer.append(this.jobIntentFun3.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentFun4 = ");
		if (this.jobIntentFun4 != null)
			buffer.append(this.jobIntentFun4.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentFun5 = ");
		if (this.jobIntentFun5 != null)
			buffer.append(this.jobIntentFun5.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentAddr3 = ");
		if (this.jobIntentAddr3 != null)
			buffer.append(this.jobIntentAddr3.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentAddr4 = ");
		if (this.jobIntentAddr4 != null)
			buffer.append(this.jobIntentAddr4.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentAddr5 = ");
		if (this.jobIntentAddr5 != null)
			buffer.append(this.jobIntentAddr5.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentIndustry3 = ");
		if (this.jobIntentIndustry3 != null)
			buffer.append(this.jobIntentIndustry3.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentIndustry4 = ");
		if (this.jobIntentIndustry4 != null)
			buffer.append(this.jobIntentIndustry4.toString());
		else
			buffer.append("value is null");
		buffer.append(",\njobIntentIndustry5 = ");
		if (this.jobIntentIndustry5 != null)
			buffer.append(this.jobIntentIndustry5.toString());
		else
			buffer.append("value is null");
		buffer.append(",\ncreateDate = ");
		if (this.createDate != null)
			buffer.append(this.createDate.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nupdateDate = ");
		if (this.updateDate != null)
			buffer.append(this.updateDate.toString());
		else
			buffer.append("value is null");
		buffer.append(",\ncreateUser = ");
		buffer.append(this.createUser);
		buffer.append(",\nupdateUser = ");
		buffer.append(this.updateUser);
		buffer.append(",\nskills = ");
		if (this.skills != null)
			buffer.append(this.skills.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nappends = ");
		if (this.appends != null)
			buffer.append(this.appends.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nlanguages = ");
		if (this.languages != null)
			buffer.append(this.languages.toString());
		else
			buffer.append("value is null");
		buffer.append(",\nemails = ");
		if (this.emails != null)
			buffer.append(this.emails.toString());
		else
			buffer.append("value is null");
		return buffer.toString();

	}
}