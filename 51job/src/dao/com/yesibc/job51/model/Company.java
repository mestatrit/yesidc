package com.yesibc.job51.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * TeCCompany entity. @author MyEclipse Persistence Tools
 */

public class Company implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 8426374065705778688L;
	private Long id;
	private String companyCode;
	private String url;
	private String companyName;
	private String companyNameEn;
	private String companyNameSimple;
	private String companyNameSimpleEn;
	private Long companyType;
	private Long companyScale;
	private Long companyIndustry1;
	private Long companyIndustry2;

	private String homepage1;
	private String homepage2;
	private String homepage3;
	private String homepage4;
	private String homepage5;
	private String companyDomain1;
	private String companyDomain2;
	private String companyMemo;
	private Code fromWhere;
	private String fromWhereName;
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	private Long companyIndustry3;
	private BigDecimal registeredCapitalAmount;
	private String registeredCapitalUnit;
	private Long businessOperation;
	private String mainBusinessAddress;
	private String mainProducts;
	private String establishmentTime;
	private String registerAddr;
	private String coporateRepresentative;
	private String bankAccountOpen;
	private String bankAccount;
	private String factorySpace;
	private Long staffAmount;
	private Long researchDptAmount;
	private String brandName;
	private Long outputMonthlyAmount;
	private Long outputMonthlyUnit;
	private Long turnoverYearly;
	private String mngSysAuth;
	private String qulityControl;
	private String mainMarket;
	private String mainCustomer;
	private String isOem;
	private String companyTypeName;
	private String companyScaleName;
	private String companyIndustry1Name;
	private String companyIndustry2Name;
	private String companyIndustry3Name;
	private String registeredCapitalAmountName;
	private String registeredCapitalUnitName;
	private String businessOperationName;
	private String researchDptAmountName;
	private String staffAmountName;
	private String outputMonthlyAmountName;
	private String outputMonthlyUnitName;
	private String turnoverYearlyName;
	private String importsAmountName;
	private Long importsAmount;
	private String exportsAmountName;
	private Long exportsAmount;

	private Company parent;
	private List<Company> children;
	private List<ComContactHeader> comContactHeaders;
	private List<ComAppend> comAppends;

	// Constructors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyNameEn() {
		return this.companyNameEn;
	}

	public void setCompanyNameEn(String companyNameEn) {
		this.companyNameEn = companyNameEn;
	}

	public String getCompanyNameSimple() {
		return this.companyNameSimple;
	}

	public void setCompanyNameSimple(String companyNameSimple) {
		this.companyNameSimple = companyNameSimple;
	}

	public String getCompanyNameSimpleEn() {
		return this.companyNameSimpleEn;
	}

	public void setCompanyNameSimpleEn(String companyNameSimpleEn) {
		this.companyNameSimpleEn = companyNameSimpleEn;
	}

	public Long getCompanyType() {
		return this.companyType;
	}

	public void setCompanyType(Long companyType) {
		this.companyType = companyType;
	}

	public Long getCompanyScale() {
		return this.companyScale;
	}

	public void setCompanyScale(Long companyScale) {
		this.companyScale = companyScale;
	}

	public Long getCompanyIndustry1() {
		return this.companyIndustry1;
	}

	public void setCompanyIndustry1(Long companyIndustry1) {
		this.companyIndustry1 = companyIndustry1;
	}

	public Long getCompanyIndustry2() {
		return this.companyIndustry2;
	}

	public void setCompanyIndustry2(Long companyIndustry2) {
		this.companyIndustry2 = companyIndustry2;
	}

	public String getHomepage1() {
		return this.homepage1;
	}

	public void setHomepage1(String homepage1) {
		this.homepage1 = homepage1;
	}

	public String getHomepage2() {
		return this.homepage2;
	}

	public void setHomepage2(String homepage2) {
		this.homepage2 = homepage2;
	}

	public String getHomepage3() {
		return this.homepage3;
	}

	public void setHomepage3(String homepage3) {
		this.homepage3 = homepage3;
	}

	public String getHomepage4() {
		return this.homepage4;
	}

	public void setHomepage4(String homepage4) {
		this.homepage4 = homepage4;
	}

	public String getHomepage5() {
		return this.homepage5;
	}

	public void setHomepage5(String homepage5) {
		this.homepage5 = homepage5;
	}

	public String getCompanyDomain1() {
		return this.companyDomain1;
	}

	public void setCompanyDomain1(String companyDomain1) {
		this.companyDomain1 = companyDomain1;
	}

	public String getCompanyDomain2() {
		return this.companyDomain2;
	}

	public void setCompanyDomain2(String companyDomain2) {
		this.companyDomain2 = companyDomain2;
	}

	public String getCompanyMemo() {
		return this.companyMemo;
	}

	public void setCompanyMemo(String companyMemo) {
		this.companyMemo = companyMemo;
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

	public Long getCompanyIndustry3() {
		return this.companyIndustry3;
	}

	public void setCompanyIndustry3(Long companyIndustry3) {
		this.companyIndustry3 = companyIndustry3;
	}

	public BigDecimal getRegisteredCapitalAmount() {
		return this.registeredCapitalAmount;
	}

	public void setRegisteredCapitalAmount(BigDecimal registeredCapitalAmount) {
		this.registeredCapitalAmount = registeredCapitalAmount;
	}

	public String getRegisteredCapitalUnit() {
		return this.registeredCapitalUnit;
	}

	public void setRegisteredCapitalUnit(String registeredCapitalUnit) {
		this.registeredCapitalUnit = registeredCapitalUnit;
	}

	public Long getBusinessOperation() {
		return this.businessOperation;
	}

	public void setBusinessOperation(Long businessOperation) {
		this.businessOperation = businessOperation;
	}

	public String getMainBusinessAddress() {
		return this.mainBusinessAddress;
	}

	public void setMainBusinessAddress(String mainBusinessAddress) {
		this.mainBusinessAddress = mainBusinessAddress;
	}

	public String getMainProducts() {
		return this.mainProducts;
	}

	public void setMainProducts(String mainProducts) {
		this.mainProducts = mainProducts;
	}

	public String getEstablishmentTime() {
		return this.establishmentTime;
	}

	public void setEstablishmentTime(String establishmentTime) {
		this.establishmentTime = establishmentTime;
	}

	public String getRegisterAddr() {
		return this.registerAddr;
	}

	public void setRegisterAddr(String registerAddr) {
		this.registerAddr = registerAddr;
	}

	public String getCoporateRepresentative() {
		return this.coporateRepresentative;
	}

	public void setCoporateRepresentative(String coporateRepresentative) {
		this.coporateRepresentative = coporateRepresentative;
	}

	public String getBankAccountOpen() {
		return this.bankAccountOpen;
	}

	public void setBankAccountOpen(String bankAccountOpen) {
		this.bankAccountOpen = bankAccountOpen;
	}

	public String getBankAccount() {
		return this.bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getFactorySpace() {
		return this.factorySpace;
	}

	public void setFactorySpace(String factorySpace) {
		this.factorySpace = factorySpace;
	}

	public Long getStaffAmount() {
		return this.staffAmount;
	}

	public void setStaffAmount(Long staffAmount) {
		this.staffAmount = staffAmount;
	}

	public Long getResearchDptAmount() {
		return this.researchDptAmount;
	}

	public void setResearchDptAmount(Long researchDptAmount) {
		this.researchDptAmount = researchDptAmount;
	}

	public String getBrandName() {
		return this.brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public Long getOutputMonthlyAmount() {
		return this.outputMonthlyAmount;
	}

	public void setOutputMonthlyAmount(Long outputMonthlyAmount) {
		this.outputMonthlyAmount = outputMonthlyAmount;
	}

	public Long getOutputMonthlyUnit() {
		return this.outputMonthlyUnit;
	}

	public void setOutputMonthlyUnit(Long outputMonthlyUnit) {
		this.outputMonthlyUnit = outputMonthlyUnit;
	}

	public Long getTurnoverYearly() {
		return this.turnoverYearly;
	}

	public void setTurnoverYearly(Long turnoverYearly) {
		this.turnoverYearly = turnoverYearly;
	}

	public String getMngSysAuth() {
		return this.mngSysAuth;
	}

	public void setMngSysAuth(String mngSysAuth) {
		this.mngSysAuth = mngSysAuth;
	}

	public String getQulityControl() {
		return this.qulityControl;
	}

	public void setQulityControl(String qulityControl) {
		this.qulityControl = qulityControl;
	}

	public String getMainMarket() {
		return this.mainMarket;
	}

	public void setMainMarket(String mainMarket) {
		this.mainMarket = mainMarket;
	}

	public String getMainCustomer() {
		return this.mainCustomer;
	}

	public void setMainCustomer(String mainCustomer) {
		this.mainCustomer = mainCustomer;
	}

	public String getIsOem() {
		return this.isOem;
	}

	public void setIsOem(String isOem) {
		this.isOem = isOem;
	}

	public String getCompanyTypeName() {
		return this.companyTypeName;
	}

	public void setCompanyTypeName(String companyTypeName) {
		this.companyTypeName = companyTypeName;
	}

	public String getCompanyScaleName() {
		return this.companyScaleName;
	}

	public void setCompanyScaleName(String companyScaleName) {
		this.companyScaleName = companyScaleName;
	}

	public String getCompanyIndustry1Name() {
		return this.companyIndustry1Name;
	}

	public void setCompanyIndustry1Name(String companyIndustry1Name) {
		this.companyIndustry1Name = companyIndustry1Name;
	}

	public String getCompanyIndustry2Name() {
		return this.companyIndustry2Name;
	}

	public void setCompanyIndustry2Name(String companyIndustry2Name) {
		this.companyIndustry2Name = companyIndustry2Name;
	}

	public String getCompanyIndustry3Name() {
		return this.companyIndustry3Name;
	}

	public void setCompanyIndustry3Name(String companyIndustry3Name) {
		this.companyIndustry3Name = companyIndustry3Name;
	}

	public String getRegisteredCapitalAmountName() {
		return this.registeredCapitalAmountName;
	}

	public void setRegisteredCapitalAmountName(
			String registeredCapitalAmountName) {
		this.registeredCapitalAmountName = registeredCapitalAmountName;
	}

	public String getRegisteredCapitalUnitName() {
		return this.registeredCapitalUnitName;
	}

	public void setRegisteredCapitalUnitName(String registeredCapitalUnitName) {
		this.registeredCapitalUnitName = registeredCapitalUnitName;
	}

	public String getBusinessOperationName() {
		return this.businessOperationName;
	}

	public void setBusinessOperationName(String businessOperationName) {
		this.businessOperationName = businessOperationName;
	}

	public String getResearchDptAmountName() {
		return this.researchDptAmountName;
	}

	public void setResearchDptAmountName(String researchDptAmountName) {
		this.researchDptAmountName = researchDptAmountName;
	}

	public String getStaffAmountName() {
		return this.staffAmountName;
	}

	public void setStaffAmountName(String staffAmountName) {
		this.staffAmountName = staffAmountName;
	}

	public String getOutputMonthlyAmountName() {
		return this.outputMonthlyAmountName;
	}

	public void setOutputMonthlyAmountName(String outputMonthlyAmountName) {
		this.outputMonthlyAmountName = outputMonthlyAmountName;
	}

	public String getOutputMonthlyUnitName() {
		return this.outputMonthlyUnitName;
	}

	public void setOutputMonthlyUnitName(String outputMonthlyUnitName) {
		this.outputMonthlyUnitName = outputMonthlyUnitName;
	}

	public String getTurnoverYearlyName() {
		return this.turnoverYearlyName;
	}

	public void setTurnoverYearlyName(String turnoverYearlyName) {
		this.turnoverYearlyName = turnoverYearlyName;
	}

	public String getImportsAmountName() {
		return this.importsAmountName;
	}

	public void setImportsAmountName(String importsAmountName) {
		this.importsAmountName = importsAmountName;
	}

	public Long getImportsAmount() {
		return this.importsAmount;
	}

	public void setImportsAmount(Long importsAmount) {
		this.importsAmount = importsAmount;
	}

	public String getExportsAmountName() {
		return this.exportsAmountName;
	}

	public void setExportsAmountName(String exportsAmountName) {
		this.exportsAmountName = exportsAmountName;
	}

	public Long getExportsAmount() {
		return this.exportsAmount;
	}

	public void setExportsAmount(Long exportsAmount) {
		this.exportsAmount = exportsAmount;
	}

	public Company getParent() {
		return parent;
	}

	public void setParent(Company parent) {
		this.parent = parent;
	}

	public List<Company> getChildren() {
		return children;
	}

	public void setChildren(List<Company> children) {
		this.children = children;
	}

	public List<ComContactHeader> getComContactHeaders() {
		return comContactHeaders;
	}

	public void setComContactHeaders(List<ComContactHeader> comContactHeaders) {
		this.comContactHeaders = comContactHeaders;
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

	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	public List<ComAppend> getComAppends() {
		return comAppends;
	}

	public void setComAppends(List<ComAppend> comAppends) {
		this.comAppends = comAppends;
	}

}