package cn.cetelem.track.audit.domain;

import java.util.Date;

/**
 * DesBasicAudit entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class DesBasicAudit extends BaseAudit implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long logId;
	private String appId;
	private String urn;
	private String logo;
	private String cdmType;
	private String customer1Flag;
	private String customer2Flag;
	private String accountFlag;
	private String embosser1Flag;
	private String embosser2Flag;
	private String loanFlag;
	private String flagTest;
	private String origin;
	private Date applicationDateTime;
	private String masterProduct;
	private String currency;
	private String pct;
	private String classificationNb;
	private Date dateTimeLastUpdat;
	private Date dateTimeRdv;
	private Date dateTimeTakePurchase;
	private String contractReference;
	private String dateTermsAndCondit;
	private String productOrg;
	private String refPartner;
	private String letterId;
	private String relationshipNb;
	private String orderFlag;
	private String flagSeCall;
	private String flagMaritalStatus;
	private String flagSpouseChanged;
	private String flagChilddepChanged;
	private String flagBudgetChanged;
	private String storeUser;
	private String salesId;
	private String csrUser;
	private String inStoreProcess;
	private String userHierarchy;
	private String userTeam;
	private String collectable;
	private String stoNumberOrigin;
	private String stoStatus;
	private String stoMerchantName;
	private String stoMerchantBlockCode;
	private Date stoMerchantDateBlockCode;
	private String stoNameOrigin;
	private String stoCountry;
	private String stoDistrict;
	private String stoCity;
	private String stoAdresse1;
	private String stoAdresse2;
	private String stoAdresse3;
	private String stoZipcode;
	private String stoPhone;
	private String stoFax;
	private String stoEmail;
	private String stoContactId;
	private String stoContactName;
	private String stoContactPhone;
	private String stoChain;
	private String stoUnion;
	private String stoGroup;
	private String stoCurrency;
	private Date stoDateCreated;
	private Date stoDateUpdated;
	private Date stoDateClosed;
	private String stoPrintCode;
	private String stoActivityDomain;
	private String stoOrderForm;
	private String stoMediaType;
	private Long stoMaxAmountCard;
	private Long stoMinMonthlyPayment;
	private Long stoMaxAmountLoan;
	private Long stoMaxTerms;
	private Long stoMaxAmountAutoOk;
	private String stoFiability;
	private String stoRiskPosition;
	private String stoRatingBnpp;
	private String accNumber;
	private String accOrderNumber;
	private Date accDatePlan;
	private Long accDueDate;
	private String promotionalId;
	private String accStatementFreq;
	private String accStatementFlag;
	private String accDualBillingFlag;
	private String accCustomerStatement;
	private String accVipCode;
	private String accOwnerInsurance;
	private String accCoownerInsurance;
	private String accOwningStore;
	private String accMemoComm;
	private String accCardholderType;
	private Long accBillingCycle;
	private String accPartnerRefAccNb;
	private Long accCreditLimit;
	private String accAlternateCustFlag;
	private String accCardScheme;
	private Long accCardMonthlyPaym;
	private String accCardBin;
	private Long accCrLimitAmtPurch;
	private Long accCreditLoan;
	private Long accCreditCash;
	private String accFutureField1;
	private String accFutureField2;
	private String accFutureField3;
	private String accFutureField4;
	private String accFutureField5;
	private String accFutureField6;
	private String accFutureField7;
	private String accFutureField8;
	private String accFutureField9;
	private String accFutureField10;
	private Date accFutureField11;
	private Date accFutureField12;
	private Date accFutureField13;
	private Date accFutureField14;
	private Date accFutureField15;
	private Date accFutureField16;
	private Date accFutureField17;
	private Date accFutureField18;
	private Date accFutureField19;
	private Date accFutureField20;
	private Date accFutureField21;
	private Date accFutureField22;
	private Date accFutureField23;
	private Date accFutureField24;
	private String accFutureField25;
	private String accFutureField26;
	private String accFutureField27;
	private String accFutureField28;
	private String accFutureField29;
	private String accFutureField30;
	private String accFutureField31;
	private String accFutureField32;
	private String accFutureField33;
	private String accFutureField34;
	private String accFutureField35;
	private String accFutureField36;
	private String accFutureField37;
	private String accFutureField38;
	private String accFutureField39;
	private String accFutureField40;
	private String accFutureField41;
	private String accFutureField42;
	private String accFutureField43;
	private String accFutureField44;
	private String accFutureField45;
	private Long accOpenToBuy;
	private String accBlockCode1;
	private String accBlockCode2;
	private String cust1Org;
	private String cust1Nb;
	private String cust1Communication;
	private String cust1Language;
	private String cust1Address;
	private String cust1Complement;
	private String cust1Zipcode;
	private String cust1City;
	private String cust1HomePhonePref;
	private String cust1HomePhone;
	private String cust1HomePhoneExt;
	private String cust1IdType;
	private String cust1IdNumber;
	private Date cust1IdExpDate;
	private String cust1Gender;
	private String cust1LastName;
	private String cust1FirstName;
	private String cust1Name;
	private String cust1EnglName;
	private Date cust1BirthDate;
	private String cust1Nationality;
	private String cust1EducationLevel;
	private String cust1MobileNumber;
	private String cust1Email;
	private String cust1CompanyBranch;
	private String cust1CompanyType;
	private String cust1CompanyDept;
	private String cust1JobCode;
	private String cust1CompanyName;
	private Date cust1JobStartDate;
	private String cust1CompanyAdr;
	private String cust1CompanyCompl;
	private String cust1CompanyZipcode;
	private String cust1CompanyCity;
	private String cust1CompanyPhPre;
	private String cust1CompanyPhNb;
	private String cust1CompanyPhExt;
	private String cust1CompanyEmail;
	private String cust1MaritalStatus;
	private String cust1HouseStatus;
	private Date cust1HouseStatusDate;
	private Long cust1ChildNb;
	private Long cust1DependantNb;
	private String cust1FlagSalary;
	private Long cust1Salary;
	private Long cust1NbMonthSalary;
	private Long cust1Pension;
	private Long cust1NbMonthPension;
	private Long cust1OthersIncomes;
	private Long cust1NbMonthOthersIncomes;
	private Long cust1TotalIncomes;
	private Long cust1NbCreditcards;
	private Long cust1Dwelling;
	private Long cust1AutoLoans;
	private Long cust1OtherCredit;
	private Long cust1Alimony;
	private Long cust1OthersCharges;
	private Long cust1TotalExpenses;
	private String cust1ReputableCompany;
	private Date cust1BkStartDate;
	private String cust1CbInquDate;
	private String cust1FutureField1;
	private String cust1FutureField2;
	private String cust1FutureField3;
	private String cust1FutureField4;
	private String cust1FutureField5;
	private String cust1FutureField6;
	private String cust1FutureField7;
	private String cust1FutureField8;
	private String cust1FutureField9;
	private String refRelationship;
	private String refLastname;
	private String refFirstName;
	private String refName;
	private String refMobile;
	private String refAddress;
	private String refComplement;
	private String refZipcode;
	private String refCity;
	private String refPhonePrefix;
	private String refPhoneNumber;
	private String refPhoneExtension;
	private String cust2Org;
	private String cust2Nb;
	private String cust2Communication;
	private String cust2Language;
	private String cust2Address;
	private String cust2Complement;
	private String cust2Zipcode;
	private String cust2City;
	private String cust2HomePhonePref;
	private String cust2HomePhone;
	private String cust2HomePhoneExt;
	private String cust2IdType;
	private String cust2IdNumber;
	private Date cust2IdExpDate;
	private String cust2Gender;
	private String cust2LastName;
	private String cust2FirstName;
	private String cust2Name;
	private String cust2EnglName;
	private Date cust2BirthDate;
	private String cust2Nationality;
	private String cust2EducationLevel;
	private String cust2MobileNumber;
	private String cust2Email;
	private String cust2CompanyBranch;
	private String cust2CompanyType;
	private String cust2CompanyDept;
	private String cust2JobCode;
	private String cust2CompanyName;
	private Date cust2JobStartDate;
	private String cust2CompanyAdr;
	private String cust2CompanyCompl;
	private String cust2CompanyZipcode;
	private String cust2CompanyCity;
	private String cust2CompanyPhPre;
	private String cust2CompanyPhNb;
	private String cust2CompanyPhExt;
	private String cust2CompanyEmail;
	private String cust2MaritalStatus;
	private String cust2HouseStatus;
	private Date cust2HouseStatusDate;
	private Long cust2ChildNb;
	private Long cust2DependantNb;
	private String cust2FlagSalary;
	private Long cust2Salary;
	private Long cust2NbMonthSalary;
	private Long cust2Pension;
	private Long cust2NbMonthPension;
	private Long cust2OthersIncomes;
	private Long cust2NbMonthOthersIncomes;
	private Long cust2TotalIncomes;
	private Long cust2NbCreditcards;
	private Long cust2Dwelling;
	private Long cust2AutoLoans;
	private Long cust2OtherCredit;
	private Long cust2Alimony;
	private Long cust2OthersCharges;
	private Long cust2TotalExpenses;
	private String cust2ReputableCompany;
	private Date cust2BkStartDate;
	private String cust2CbInquDate;
	private String cust2FutureField1;
	private String cust2FutureField2;
	private String cust2FutureField3;
	private String cust2FutureField4;
	private String cust2FutureField5;
	private String cust2FutureField6;
	private String cust2FutureField7;
	private String cust2FutureField8;
	private String cust2FutureField9;
	private String bkPaymentMode;
	private Date bkDdEndDate;
	private String bkBankNumber;
	private String bkBranchNumber;
	private String bkAccountNumber;
	private String bkOwnerName;
	private String carCardNumber;
	private Date carExpirationDate;
	private String carOwnerCode;
	private String carLogo;
	private Long carRepaymentPercent;
	private Long carQuantity;
	private String carCust1Name;
	private String carCust1Pid;
	private String carCust1MailerName;
	private String carCust2Name;
	private String carCust2Pid;
	private String carCust2MailerName;
	private String carCust1PlasticType;
	private String carCust2PlasticType;
	private String claPlanNumber;
	private String claStoreName;
	private String claStoreNumber;
	private Long claSku1;
	private Long claSku2;
	private Long claSku3;
	private Long claSku4;
	private Long claSku5;
	private Long claSku6;
	private Long claSku7;
	private Long claSku8;
	private Long claSku9;
	private Long claSku10;
	private String claTransCode;
	private String claReferenceNumber;
	private Long claLoanAmount;
	private Long claDepositAmount;
	private Long claPrincipal;
	private Long claCalcIndInterest;
	private Long claInterestCapInd;
	private Long claInterestRateTable;
	private Long claInterest;
	private Long claInitialRate;
	private String claCalcIndInsurance;
	private String claInsuranceCapInd;
	private Long claInsurance;
	private String claCalcIndFee1;
	private Long claUserFee1;
	private String claCalcIndFee2;
	private Long claUserFee2;
	private String claCalcIndFee3;
	private Long claUserFee3;
	private String claCalcIndFee4;
	private Long claUserFee4;
	private String claCalcIndFee5;
	private Long claUserFee5;
	private String claCalcIndFee6;
	private Long claUserFee6;
	private Date claPlanDate;
	private Long claNumberMonths;
	private Long claDuration;
	private Long claFixedInterestAmt;
	private String claDispersalMethod;
	private Long claFstPaymentAmt;
	private Date claFstPaymentDate;
	private Long claComptTerms;
	private Long claComptTermsRem;
	private String claComptTable;
	private String claComptMethod;
	private String claComptStartInd;
	private String claComptStartMtdh;
	private String claComptStartDay;
	private String claComptRounding;
	private Long claComptFixAmt;
	private String claComptNextAmoDate;
	private String claComptTabOverride;
	private String claComptNegQuCcDat;
	private Date claFutureField1;
	private Date claFutureField2;
	private Date claFutureField3;
	private Date claFutureField4;
	private Long claMonthlyPayment;
	private Long claFutureField6;
	private Long claFutureField7;
	private String claFutureField8;
	private String claFutureField9;
	private String claFutureField10;
	private String interfaceBatchNo;
	private Date interfaceDateTime;
	private Date logDateTime;
	private String idCardCopyInd;
	private String bankPassbookInd;
	private String otherProofOfSalaryInd;
	private String uploadSpousesPhotoInd;
	private String spouseIdCardCopyInd;
	private String spouseBankPassbookInd;
	private String spouseOtherProofSalaryInd;
	private Date accOpenDate;
	private String cust1SalaryDay;
	private String cust2SalaryDay;
	private Long cust1SocialInsurance;
	private Long cust2SocialInsurance;
	private String bkAccountType;
	private String carPinInd;
	private Long futureField1;
	private Long futureField2;
	private Long futureField3;
	private Long futureField4;
	private Long futureField5;
	private Date futureField6;
	private Date futureField7;
	private Date futureField8;
	private Date futureField9;
	private Date futureField10;
	private String futureField11;
	private String futureField12;
	private String futureField13;
	private String futureField14;
	private String futureField15;
	private String futureField16;
	private String futureField17;
	private String futureField18;
	private String futureField19;
	private String futureField20;
	private String carGradeOption;
	private Long claLatepayDuration;
	private Long cust1IncomeVerified;
	private Long cust2IncomeVerified;
	private String stoNumberCurrent;
	private String carDdPaymentMode;
	private Long carSuppNum;
	private Long desiredCreditLimit;
	private Date lastClIncreaseDate;
	private Long lastClAmount;
	private Date lastPurchaseDate;
	private Long highestBalance;
	private Long totalBalance;
	private Long currentCd;
	private Date currentCreditLimitDate;
	private Date lastDelinquentDate;
	private String histroy24Months;
	private String cust1Province;
	private String cust1District;
	private String cust1CompanyProvince;
	private String cust1CompanyDistrict;
	private String refProvince;
	private String refDistrict;
	private String cust2CompanyProvince;
	private String cust2CompanyDistrict;
	
	private DesMainAudit desMain;

	// Constructors

	public DesMainAudit getDesMain() {
		return desMain;
	}

	public void setDesMain(DesMainAudit desMain) {
		this.desMain = desMain;
	}

	/** default constructor */
	public DesBasicAudit() {
	}

	/** minimal constructor */
	public DesBasicAudit(Long logId, Date logDateTime) {
		this.logId = logId;
		this.logDateTime = logDateTime;
	}
	
	// Property accessors

	public Long getLogId() {
		return this.logId;
	}

	public void setLogId(Long logId) {
		this.logId = logId;
	}

	public String getAppId() {
		return this.appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

	public String getUrn() {
		return this.urn;
	}

	public void setUrn(String urn) {
		this.urn = urn;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getCdmType() {
		return this.cdmType;
	}

	public void setCdmType(String cdmType) {
		this.cdmType = cdmType;
	}

	public String getCustomer1Flag() {
		return this.customer1Flag;
	}

	public void setCustomer1Flag(String customer1Flag) {
		this.customer1Flag = customer1Flag;
	}

	public String getCustomer2Flag() {
		return this.customer2Flag;
	}

	public void setCustomer2Flag(String customer2Flag) {
		this.customer2Flag = customer2Flag;
	}

	public String getAccountFlag() {
		return this.accountFlag;
	}

	public void setAccountFlag(String accountFlag) {
		this.accountFlag = accountFlag;
	}

	public String getEmbosser1Flag() {
		return this.embosser1Flag;
	}

	public void setEmbosser1Flag(String embosser1Flag) {
		this.embosser1Flag = embosser1Flag;
	}

	public String getEmbosser2Flag() {
		return this.embosser2Flag;
	}

	public void setEmbosser2Flag(String embosser2Flag) {
		this.embosser2Flag = embosser2Flag;
	}

	public String getLoanFlag() {
		return this.loanFlag;
	}

	public void setLoanFlag(String loanFlag) {
		this.loanFlag = loanFlag;
	}

	public String getFlagTest() {
		return this.flagTest;
	}

	public void setFlagTest(String flagTest) {
		this.flagTest = flagTest;
	}

	public String getOrigin() {
		return this.origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public Date getApplicationDateTime() {
		return this.applicationDateTime;
	}

	public void setApplicationDateTime(Date applicationDateTime) {
		this.applicationDateTime = applicationDateTime;
	}

	public String getMasterProduct() {
		return this.masterProduct;
	}

	public void setMasterProduct(String masterProduct) {
		this.masterProduct = masterProduct;
	}

	public String getCurrency() {
		return this.currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getPct() {
		return this.pct;
	}

	public void setPct(String pct) {
		this.pct = pct;
	}

	public String getClassificationNb() {
		return this.classificationNb;
	}

	public void setClassificationNb(String classificationNb) {
		this.classificationNb = classificationNb;
	}

	public Date getDateTimeLastUpdat() {
		return this.dateTimeLastUpdat;
	}

	public void setDateTimeLastUpdat(Date dateTimeLastUpdat) {
		this.dateTimeLastUpdat = dateTimeLastUpdat;
	}

	public Date getDateTimeRdv() {
		return this.dateTimeRdv;
	}

	public void setDateTimeRdv(Date dateTimeRdv) {
		this.dateTimeRdv = dateTimeRdv;
	}

	public Date getDateTimeTakePurchase() {
		return this.dateTimeTakePurchase;
	}

	public void setDateTimeTakePurchase(Date dateTimeTakePurchase) {
		this.dateTimeTakePurchase = dateTimeTakePurchase;
	}

	public String getContractReference() {
		return this.contractReference;
	}

	public void setContractReference(String contractReference) {
		this.contractReference = contractReference;
	}

	public String getDateTermsAndCondit() {
		return this.dateTermsAndCondit;
	}

	public void setDateTermsAndCondit(String dateTermsAndCondit) {
		this.dateTermsAndCondit = dateTermsAndCondit;
	}

	public String getProductOrg() {
		return this.productOrg;
	}

	public void setProductOrg(String productOrg) {
		this.productOrg = productOrg;
	}

	public String getRefPartner() {
		return this.refPartner;
	}

	public void setRefPartner(String refPartner) {
		this.refPartner = refPartner;
	}

	public String getLetterId() {
		return this.letterId;
	}

	public void setLetterId(String letterId) {
		this.letterId = letterId;
	}

	public String getRelationshipNb() {
		return this.relationshipNb;
	}

	public void setRelationshipNb(String relationshipNb) {
		this.relationshipNb = relationshipNb;
	}

	public String getOrderFlag() {
		return this.orderFlag;
	}

	public void setOrderFlag(String orderFlag) {
		this.orderFlag = orderFlag;
	}

	public String getFlagSeCall() {
		return this.flagSeCall;
	}

	public void setFlagSeCall(String flagSeCall) {
		this.flagSeCall = flagSeCall;
	}

	public String getFlagMaritalStatus() {
		return this.flagMaritalStatus;
	}

	public void setFlagMaritalStatus(String flagMaritalStatus) {
		this.flagMaritalStatus = flagMaritalStatus;
	}

	public String getFlagSpouseChanged() {
		return this.flagSpouseChanged;
	}

	public void setFlagSpouseChanged(String flagSpouseChanged) {
		this.flagSpouseChanged = flagSpouseChanged;
	}

	public String getFlagChilddepChanged() {
		return this.flagChilddepChanged;
	}

	public void setFlagChilddepChanged(String flagChilddepChanged) {
		this.flagChilddepChanged = flagChilddepChanged;
	}

	public String getFlagBudgetChanged() {
		return this.flagBudgetChanged;
	}

	public void setFlagBudgetChanged(String flagBudgetChanged) {
		this.flagBudgetChanged = flagBudgetChanged;
	}

	public String getStoreUser() {
		return this.storeUser;
	}

	public void setStoreUser(String storeUser) {
		this.storeUser = storeUser;
	}

	public String getSalesId() {
		return this.salesId;
	}

	public void setSalesId(String salesId) {
		this.salesId = salesId;
	}

	public String getCsrUser() {
		return this.csrUser;
	}

	public void setCsrUser(String csrUser) {
		this.csrUser = csrUser;
	}

	public String getInStoreProcess() {
		return this.inStoreProcess;
	}

	public void setInStoreProcess(String inStoreProcess) {
		this.inStoreProcess = inStoreProcess;
	}

	public String getUserHierarchy() {
		return this.userHierarchy;
	}

	public void setUserHierarchy(String userHierarchy) {
		this.userHierarchy = userHierarchy;
	}

	public String getUserTeam() {
		return this.userTeam;
	}

	public void setUserTeam(String userTeam) {
		this.userTeam = userTeam;
	}

	public String getCollectable() {
		return this.collectable;
	}

	public void setCollectable(String collectable) {
		this.collectable = collectable;
	}

	public String getStoNumberOrigin() {
		return this.stoNumberOrigin;
	}

	public void setStoNumberOrigin(String stoNumberOrigin) {
		this.stoNumberOrigin = stoNumberOrigin;
	}

	public String getStoStatus() {
		return this.stoStatus;
	}

	public void setStoStatus(String stoStatus) {
		this.stoStatus = stoStatus;
	}

	public String getStoMerchantName() {
		return this.stoMerchantName;
	}

	public void setStoMerchantName(String stoMerchantName) {
		this.stoMerchantName = stoMerchantName;
	}

	public String getStoMerchantBlockCode() {
		return this.stoMerchantBlockCode;
	}

	public void setStoMerchantBlockCode(String stoMerchantBlockCode) {
		this.stoMerchantBlockCode = stoMerchantBlockCode;
	}

	public Date getStoMerchantDateBlockCode() {
		return this.stoMerchantDateBlockCode;
	}

	public void setStoMerchantDateBlockCode(Date stoMerchantDateBlockCode) {
		this.stoMerchantDateBlockCode = stoMerchantDateBlockCode;
	}

	public String getStoNameOrigin() {
		return this.stoNameOrigin;
	}

	public void setStoNameOrigin(String stoNameOrigin) {
		this.stoNameOrigin = stoNameOrigin;
	}

	public String getStoCountry() {
		return this.stoCountry;
	}

	public void setStoCountry(String stoCountry) {
		this.stoCountry = stoCountry;
	}

	public String getStoDistrict() {
		return this.stoDistrict;
	}

	public void setStoDistrict(String stoDistrict) {
		this.stoDistrict = stoDistrict;
	}

	public String getStoCity() {
		return this.stoCity;
	}

	public void setStoCity(String stoCity) {
		this.stoCity = stoCity;
	}

	public String getStoAdresse1() {
		return this.stoAdresse1;
	}

	public void setStoAdresse1(String stoAdresse1) {
		this.stoAdresse1 = stoAdresse1;
	}

	public String getStoAdresse2() {
		return this.stoAdresse2;
	}

	public void setStoAdresse2(String stoAdresse2) {
		this.stoAdresse2 = stoAdresse2;
	}

	public String getStoAdresse3() {
		return this.stoAdresse3;
	}

	public void setStoAdresse3(String stoAdresse3) {
		this.stoAdresse3 = stoAdresse3;
	}

	public String getStoZipcode() {
		return this.stoZipcode;
	}

	public void setStoZipcode(String stoZipcode) {
		this.stoZipcode = stoZipcode;
	}

	public String getStoPhone() {
		return this.stoPhone;
	}

	public void setStoPhone(String stoPhone) {
		this.stoPhone = stoPhone;
	}

	public String getStoFax() {
		return this.stoFax;
	}

	public void setStoFax(String stoFax) {
		this.stoFax = stoFax;
	}

	public String getStoEmail() {
		return this.stoEmail;
	}

	public void setStoEmail(String stoEmail) {
		this.stoEmail = stoEmail;
	}

	public String getStoContactId() {
		return this.stoContactId;
	}

	public void setStoContactId(String stoContactId) {
		this.stoContactId = stoContactId;
	}

	public String getStoContactName() {
		return this.stoContactName;
	}

	public void setStoContactName(String stoContactName) {
		this.stoContactName = stoContactName;
	}

	public String getStoContactPhone() {
		return this.stoContactPhone;
	}

	public void setStoContactPhone(String stoContactPhone) {
		this.stoContactPhone = stoContactPhone;
	}

	public String getStoChain() {
		return this.stoChain;
	}

	public void setStoChain(String stoChain) {
		this.stoChain = stoChain;
	}

	public String getStoUnion() {
		return this.stoUnion;
	}

	public void setStoUnion(String stoUnion) {
		this.stoUnion = stoUnion;
	}

	public String getStoGroup() {
		return this.stoGroup;
	}

	public void setStoGroup(String stoGroup) {
		this.stoGroup = stoGroup;
	}

	public String getStoCurrency() {
		return this.stoCurrency;
	}

	public void setStoCurrency(String stoCurrency) {
		this.stoCurrency = stoCurrency;
	}

	public Date getStoDateCreated() {
		return this.stoDateCreated;
	}

	public void setStoDateCreated(Date stoDateCreated) {
		this.stoDateCreated = stoDateCreated;
	}

	public Date getStoDateUpdated() {
		return this.stoDateUpdated;
	}

	public void setStoDateUpdated(Date stoDateUpdated) {
		this.stoDateUpdated = stoDateUpdated;
	}

	public Date getStoDateClosed() {
		return this.stoDateClosed;
	}

	public void setStoDateClosed(Date stoDateClosed) {
		this.stoDateClosed = stoDateClosed;
	}

	public String getStoPrintCode() {
		return this.stoPrintCode;
	}

	public void setStoPrintCode(String stoPrintCode) {
		this.stoPrintCode = stoPrintCode;
	}

	public String getStoActivityDomain() {
		return this.stoActivityDomain;
	}

	public void setStoActivityDomain(String stoActivityDomain) {
		this.stoActivityDomain = stoActivityDomain;
	}

	public String getStoOrderForm() {
		return this.stoOrderForm;
	}

	public void setStoOrderForm(String stoOrderForm) {
		this.stoOrderForm = stoOrderForm;
	}

	public String getStoMediaType() {
		return this.stoMediaType;
	}

	public void setStoMediaType(String stoMediaType) {
		this.stoMediaType = stoMediaType;
	}

	public Long getStoMaxAmountCard() {
		return this.stoMaxAmountCard;
	}

	public void setStoMaxAmountCard(Long stoMaxAmountCard) {
		this.stoMaxAmountCard = stoMaxAmountCard;
	}

	public Long getStoMinMonthlyPayment() {
		return this.stoMinMonthlyPayment;
	}

	public void setStoMinMonthlyPayment(Long stoMinMonthlyPayment) {
		this.stoMinMonthlyPayment = stoMinMonthlyPayment;
	}

	public Long getStoMaxAmountLoan() {
		return this.stoMaxAmountLoan;
	}

	public void setStoMaxAmountLoan(Long stoMaxAmountLoan) {
		this.stoMaxAmountLoan = stoMaxAmountLoan;
	}

	public Long getStoMaxTerms() {
		return this.stoMaxTerms;
	}

	public void setStoMaxTerms(Long stoMaxTerms) {
		this.stoMaxTerms = stoMaxTerms;
	}

	public Long getStoMaxAmountAutoOk() {
		return this.stoMaxAmountAutoOk;
	}

	public void setStoMaxAmountAutoOk(Long stoMaxAmountAutoOk) {
		this.stoMaxAmountAutoOk = stoMaxAmountAutoOk;
	}

	public String getStoFiability() {
		return this.stoFiability;
	}

	public void setStoFiability(String stoFiability) {
		this.stoFiability = stoFiability;
	}

	public String getStoRiskPosition() {
		return this.stoRiskPosition;
	}

	public void setStoRiskPosition(String stoRiskPosition) {
		this.stoRiskPosition = stoRiskPosition;
	}

	public String getStoRatingBnpp() {
		return this.stoRatingBnpp;
	}

	public void setStoRatingBnpp(String stoRatingBnpp) {
		this.stoRatingBnpp = stoRatingBnpp;
	}

	public String getAccNumber() {
		return this.accNumber;
	}

	public void setAccNumber(String accNumber) {
		this.accNumber = accNumber;
	}

	public String getAccOrderNumber() {
		return this.accOrderNumber;
	}

	public void setAccOrderNumber(String accOrderNumber) {
		this.accOrderNumber = accOrderNumber;
	}

	public Date getAccDatePlan() {
		return this.accDatePlan;
	}

	public void setAccDatePlan(Date accDatePlan) {
		this.accDatePlan = accDatePlan;
	}

	public Long getAccDueDate() {
		return this.accDueDate;
	}

	public void setAccDueDate(Long accDueDate) {
		this.accDueDate = accDueDate;
	}

	public String getPromotionalId() {
		return this.promotionalId;
	}

	public void setPromotionalId(String promotionalId) {
		this.promotionalId = promotionalId;
	}

	public String getAccStatementFreq() {
		return this.accStatementFreq;
	}

	public void setAccStatementFreq(String accStatementFreq) {
		this.accStatementFreq = accStatementFreq;
	}

	public String getAccStatementFlag() {
		return this.accStatementFlag;
	}

	public void setAccStatementFlag(String accStatementFlag) {
		this.accStatementFlag = accStatementFlag;
	}

	public String getAccDualBillingFlag() {
		return this.accDualBillingFlag;
	}

	public void setAccDualBillingFlag(String accDualBillingFlag) {
		this.accDualBillingFlag = accDualBillingFlag;
	}

	public String getAccCustomerStatement() {
		return this.accCustomerStatement;
	}

	public void setAccCustomerStatement(String accCustomerStatement) {
		this.accCustomerStatement = accCustomerStatement;
	}

	public String getAccVipCode() {
		return this.accVipCode;
	}

	public void setAccVipCode(String accVipCode) {
		this.accVipCode = accVipCode;
	}

	public String getAccOwnerInsurance() {
		return this.accOwnerInsurance;
	}

	public void setAccOwnerInsurance(String accOwnerInsurance) {
		this.accOwnerInsurance = accOwnerInsurance;
	}

	public String getAccCoownerInsurance() {
		return this.accCoownerInsurance;
	}

	public void setAccCoownerInsurance(String accCoownerInsurance) {
		this.accCoownerInsurance = accCoownerInsurance;
	}

	public String getAccOwningStore() {
		return this.accOwningStore;
	}

	public void setAccOwningStore(String accOwningStore) {
		this.accOwningStore = accOwningStore;
	}

	public String getAccMemoComm() {
		return this.accMemoComm;
	}

	public void setAccMemoComm(String accMemoComm) {
		this.accMemoComm = accMemoComm;
	}

	public String getAccCardholderType() {
		return this.accCardholderType;
	}

	public void setAccCardholderType(String accCardholderType) {
		this.accCardholderType = accCardholderType;
	}

	public Long getAccBillingCycle() {
		return this.accBillingCycle;
	}

	public void setAccBillingCycle(Long accBillingCycle) {
		this.accBillingCycle = accBillingCycle;
	}

	public String getAccPartnerRefAccNb() {
		return this.accPartnerRefAccNb;
	}

	public void setAccPartnerRefAccNb(String accPartnerRefAccNb) {
		this.accPartnerRefAccNb = accPartnerRefAccNb;
	}

	public Long getAccCreditLimit() {
		return this.accCreditLimit;
	}

	public void setAccCreditLimit(Long accCreditLimit) {
		this.accCreditLimit = accCreditLimit;
	}

	public String getAccAlternateCustFlag() {
		return this.accAlternateCustFlag;
	}

	public void setAccAlternateCustFlag(String accAlternateCustFlag) {
		this.accAlternateCustFlag = accAlternateCustFlag;
	}

	public String getAccCardScheme() {
		return this.accCardScheme;
	}

	public void setAccCardScheme(String accCardScheme) {
		this.accCardScheme = accCardScheme;
	}

	public Long getAccCardMonthlyPaym() {
		return this.accCardMonthlyPaym;
	}

	public void setAccCardMonthlyPaym(Long accCardMonthlyPaym) {
		this.accCardMonthlyPaym = accCardMonthlyPaym;
	}

	public String getAccCardBin() {
		return this.accCardBin;
	}

	public void setAccCardBin(String accCardBin) {
		this.accCardBin = accCardBin;
	}

	public Long getAccCrLimitAmtPurch() {
		return this.accCrLimitAmtPurch;
	}

	public void setAccCrLimitAmtPurch(Long accCrLimitAmtPurch) {
		this.accCrLimitAmtPurch = accCrLimitAmtPurch;
	}

	public Long getAccCreditLoan() {
		return this.accCreditLoan;
	}

	public void setAccCreditLoan(Long accCreditLoan) {
		this.accCreditLoan = accCreditLoan;
	}

	public Long getAccCreditCash() {
		return this.accCreditCash;
	}

	public void setAccCreditCash(Long accCreditCash) {
		this.accCreditCash = accCreditCash;
	}

	public String getAccFutureField1() {
		return this.accFutureField1;
	}

	public void setAccFutureField1(String accFutureField1) {
		this.accFutureField1 = accFutureField1;
	}

	public String getAccFutureField2() {
		return this.accFutureField2;
	}

	public void setAccFutureField2(String accFutureField2) {
		this.accFutureField2 = accFutureField2;
	}

	public String getAccFutureField3() {
		return this.accFutureField3;
	}

	public void setAccFutureField3(String accFutureField3) {
		this.accFutureField3 = accFutureField3;
	}

	public String getAccFutureField4() {
		return this.accFutureField4;
	}

	public void setAccFutureField4(String accFutureField4) {
		this.accFutureField4 = accFutureField4;
	}

	public String getAccFutureField5() {
		return this.accFutureField5;
	}

	public void setAccFutureField5(String accFutureField5) {
		this.accFutureField5 = accFutureField5;
	}

	public String getAccFutureField6() {
		return this.accFutureField6;
	}

	public void setAccFutureField6(String accFutureField6) {
		this.accFutureField6 = accFutureField6;
	}

	public String getAccFutureField7() {
		return this.accFutureField7;
	}

	public void setAccFutureField7(String accFutureField7) {
		this.accFutureField7 = accFutureField7;
	}

	public String getAccFutureField8() {
		return this.accFutureField8;
	}

	public void setAccFutureField8(String accFutureField8) {
		this.accFutureField8 = accFutureField8;
	}

	public String getAccFutureField9() {
		return this.accFutureField9;
	}

	public void setAccFutureField9(String accFutureField9) {
		this.accFutureField9 = accFutureField9;
	}

	public String getAccFutureField10() {
		return this.accFutureField10;
	}

	public void setAccFutureField10(String accFutureField10) {
		this.accFutureField10 = accFutureField10;
	}

	public Date getAccFutureField11() {
		return this.accFutureField11;
	}

	public void setAccFutureField11(Date accFutureField11) {
		this.accFutureField11 = accFutureField11;
	}

	public Date getAccFutureField12() {
		return this.accFutureField12;
	}

	public void setAccFutureField12(Date accFutureField12) {
		this.accFutureField12 = accFutureField12;
	}

	public Date getAccFutureField13() {
		return this.accFutureField13;
	}

	public void setAccFutureField13(Date accFutureField13) {
		this.accFutureField13 = accFutureField13;
	}

	public Date getAccFutureField14() {
		return this.accFutureField14;
	}

	public void setAccFutureField14(Date accFutureField14) {
		this.accFutureField14 = accFutureField14;
	}

	public Date getAccFutureField15() {
		return this.accFutureField15;
	}

	public void setAccFutureField15(Date accFutureField15) {
		this.accFutureField15 = accFutureField15;
	}

	public Date getAccFutureField16() {
		return this.accFutureField16;
	}

	public void setAccFutureField16(Date accFutureField16) {
		this.accFutureField16 = accFutureField16;
	}

	public Date getAccFutureField17() {
		return this.accFutureField17;
	}

	public void setAccFutureField17(Date accFutureField17) {
		this.accFutureField17 = accFutureField17;
	}

	public Date getAccFutureField18() {
		return this.accFutureField18;
	}

	public void setAccFutureField18(Date accFutureField18) {
		this.accFutureField18 = accFutureField18;
	}

	public Date getAccFutureField19() {
		return this.accFutureField19;
	}

	public void setAccFutureField19(Date accFutureField19) {
		this.accFutureField19 = accFutureField19;
	}

	public Date getAccFutureField20() {
		return this.accFutureField20;
	}

	public void setAccFutureField20(Date accFutureField20) {
		this.accFutureField20 = accFutureField20;
	}

	public Date getAccFutureField21() {
		return this.accFutureField21;
	}

	public void setAccFutureField21(Date accFutureField21) {
		this.accFutureField21 = accFutureField21;
	}

	public Date getAccFutureField22() {
		return this.accFutureField22;
	}

	public void setAccFutureField22(Date accFutureField22) {
		this.accFutureField22 = accFutureField22;
	}

	public Date getAccFutureField23() {
		return this.accFutureField23;
	}

	public void setAccFutureField23(Date accFutureField23) {
		this.accFutureField23 = accFutureField23;
	}

	public Date getAccFutureField24() {
		return this.accFutureField24;
	}

	public void setAccFutureField24(Date accFutureField24) {
		this.accFutureField24 = accFutureField24;
	}

	public String getAccFutureField25() {
		return this.accFutureField25;
	}

	public void setAccFutureField25(String accFutureField25) {
		this.accFutureField25 = accFutureField25;
	}

	public String getAccFutureField26() {
		return this.accFutureField26;
	}

	public void setAccFutureField26(String accFutureField26) {
		this.accFutureField26 = accFutureField26;
	}

	public String getAccFutureField27() {
		return this.accFutureField27;
	}

	public void setAccFutureField27(String accFutureField27) {
		this.accFutureField27 = accFutureField27;
	}

	public String getAccFutureField28() {
		return this.accFutureField28;
	}

	public void setAccFutureField28(String accFutureField28) {
		this.accFutureField28 = accFutureField28;
	}

	public String getAccFutureField29() {
		return this.accFutureField29;
	}

	public void setAccFutureField29(String accFutureField29) {
		this.accFutureField29 = accFutureField29;
	}

	public String getAccFutureField30() {
		return this.accFutureField30;
	}

	public void setAccFutureField30(String accFutureField30) {
		this.accFutureField30 = accFutureField30;
	}

	public String getAccFutureField31() {
		return this.accFutureField31;
	}

	public void setAccFutureField31(String accFutureField31) {
		this.accFutureField31 = accFutureField31;
	}

	public String getAccFutureField32() {
		return this.accFutureField32;
	}

	public void setAccFutureField32(String accFutureField32) {
		this.accFutureField32 = accFutureField32;
	}

	public String getAccFutureField33() {
		return this.accFutureField33;
	}

	public void setAccFutureField33(String accFutureField33) {
		this.accFutureField33 = accFutureField33;
	}

	public String getAccFutureField34() {
		return this.accFutureField34;
	}

	public void setAccFutureField34(String accFutureField34) {
		this.accFutureField34 = accFutureField34;
	}

	public String getAccFutureField35() {
		return this.accFutureField35;
	}

	public void setAccFutureField35(String accFutureField35) {
		this.accFutureField35 = accFutureField35;
	}

	public String getAccFutureField36() {
		return this.accFutureField36;
	}

	public void setAccFutureField36(String accFutureField36) {
		this.accFutureField36 = accFutureField36;
	}

	public String getAccFutureField37() {
		return this.accFutureField37;
	}

	public void setAccFutureField37(String accFutureField37) {
		this.accFutureField37 = accFutureField37;
	}

	public String getAccFutureField38() {
		return this.accFutureField38;
	}

	public void setAccFutureField38(String accFutureField38) {
		this.accFutureField38 = accFutureField38;
	}

	public String getAccFutureField39() {
		return this.accFutureField39;
	}

	public void setAccFutureField39(String accFutureField39) {
		this.accFutureField39 = accFutureField39;
	}

	public String getAccFutureField40() {
		return this.accFutureField40;
	}

	public void setAccFutureField40(String accFutureField40) {
		this.accFutureField40 = accFutureField40;
	}

	public String getAccFutureField41() {
		return this.accFutureField41;
	}

	public void setAccFutureField41(String accFutureField41) {
		this.accFutureField41 = accFutureField41;
	}

	public String getAccFutureField42() {
		return this.accFutureField42;
	}

	public void setAccFutureField42(String accFutureField42) {
		this.accFutureField42 = accFutureField42;
	}

	public String getAccFutureField43() {
		return this.accFutureField43;
	}

	public void setAccFutureField43(String accFutureField43) {
		this.accFutureField43 = accFutureField43;
	}

	public String getAccFutureField44() {
		return this.accFutureField44;
	}

	public void setAccFutureField44(String accFutureField44) {
		this.accFutureField44 = accFutureField44;
	}

	public String getAccFutureField45() {
		return this.accFutureField45;
	}

	public void setAccFutureField45(String accFutureField45) {
		this.accFutureField45 = accFutureField45;
	}

	public Long getAccOpenToBuy() {
		return this.accOpenToBuy;
	}

	public void setAccOpenToBuy(Long accOpenToBuy) {
		this.accOpenToBuy = accOpenToBuy;
	}

	public String getAccBlockCode1() {
		return this.accBlockCode1;
	}

	public void setAccBlockCode1(String accBlockCode1) {
		this.accBlockCode1 = accBlockCode1;
	}

	public String getAccBlockCode2() {
		return this.accBlockCode2;
	}

	public void setAccBlockCode2(String accBlockCode2) {
		this.accBlockCode2 = accBlockCode2;
	}

	public String getCust1Org() {
		return this.cust1Org;
	}

	public void setCust1Org(String cust1Org) {
		this.cust1Org = cust1Org;
	}

	public String getCust1Nb() {
		return this.cust1Nb;
	}

	public void setCust1Nb(String cust1Nb) {
		this.cust1Nb = cust1Nb;
	}

	public String getCust1Communication() {
		return this.cust1Communication;
	}

	public void setCust1Communication(String cust1Communication) {
		this.cust1Communication = cust1Communication;
	}

	public String getCust1Language() {
		return this.cust1Language;
	}

	public void setCust1Language(String cust1Language) {
		this.cust1Language = cust1Language;
	}

	public String getCust1Address() {
		return this.cust1Address;
	}

	public void setCust1Address(String cust1Address) {
		this.cust1Address = cust1Address;
	}

	public String getCust1Complement() {
		return this.cust1Complement;
	}

	public void setCust1Complement(String cust1Complement) {
		this.cust1Complement = cust1Complement;
	}

	public String getCust1Zipcode() {
		return this.cust1Zipcode;
	}

	public void setCust1Zipcode(String cust1Zipcode) {
		this.cust1Zipcode = cust1Zipcode;
	}

	public String getCust1City() {
		return this.cust1City;
	}

	public void setCust1City(String cust1City) {
		this.cust1City = cust1City;
	}

	public String getCust1HomePhonePref() {
		return this.cust1HomePhonePref;
	}

	public void setCust1HomePhonePref(String cust1HomePhonePref) {
		this.cust1HomePhonePref = cust1HomePhonePref;
	}

	public String getCust1HomePhone() {
		return this.cust1HomePhone;
	}

	public void setCust1HomePhone(String cust1HomePhone) {
		this.cust1HomePhone = cust1HomePhone;
	}

	public String getCust1HomePhoneExt() {
		return this.cust1HomePhoneExt;
	}

	public void setCust1HomePhoneExt(String cust1HomePhoneExt) {
		this.cust1HomePhoneExt = cust1HomePhoneExt;
	}

	public String getCust1IdType() {
		return this.cust1IdType;
	}

	public void setCust1IdType(String cust1IdType) {
		this.cust1IdType = cust1IdType;
	}

	public String getCust1IdNumber() {
		return this.cust1IdNumber;
	}

	public void setCust1IdNumber(String cust1IdNumber) {
		this.cust1IdNumber = cust1IdNumber;
	}

	public Date getCust1IdExpDate() {
		return this.cust1IdExpDate;
	}

	public void setCust1IdExpDate(Date cust1IdExpDate) {
		this.cust1IdExpDate = cust1IdExpDate;
	}

	public String getCust1Gender() {
		return this.cust1Gender;
	}

	public void setCust1Gender(String cust1Gender) {
		this.cust1Gender = cust1Gender;
	}

	public String getCust1LastName() {
		return this.cust1LastName;
	}

	public void setCust1LastName(String cust1LastName) {
		this.cust1LastName = cust1LastName;
	}

	public String getCust1FirstName() {
		return this.cust1FirstName;
	}

	public void setCust1FirstName(String cust1FirstName) {
		this.cust1FirstName = cust1FirstName;
	}

	public String getCust1Name() {
		return this.cust1Name;
	}

	public void setCust1Name(String cust1Name) {
		this.cust1Name = cust1Name;
	}

	public String getCust1EnglName() {
		return this.cust1EnglName;
	}

	public void setCust1EnglName(String cust1EnglName) {
		this.cust1EnglName = cust1EnglName;
	}

	public Date getCust1BirthDate() {
		return this.cust1BirthDate;
	}

	public void setCust1BirthDate(Date cust1BirthDate) {
		this.cust1BirthDate = cust1BirthDate;
	}

	public String getCust1Nationality() {
		return this.cust1Nationality;
	}

	public void setCust1Nationality(String cust1Nationality) {
		this.cust1Nationality = cust1Nationality;
	}

	public String getCust1EducationLevel() {
		return this.cust1EducationLevel;
	}

	public void setCust1EducationLevel(String cust1EducationLevel) {
		this.cust1EducationLevel = cust1EducationLevel;
	}

	public String getCust1MobileNumber() {
		return this.cust1MobileNumber;
	}

	public void setCust1MobileNumber(String cust1MobileNumber) {
		this.cust1MobileNumber = cust1MobileNumber;
	}

	public String getCust1Email() {
		return this.cust1Email;
	}

	public void setCust1Email(String cust1Email) {
		this.cust1Email = cust1Email;
	}

	public String getCust1CompanyBranch() {
		return this.cust1CompanyBranch;
	}

	public void setCust1CompanyBranch(String cust1CompanyBranch) {
		this.cust1CompanyBranch = cust1CompanyBranch;
	}

	public String getCust1CompanyType() {
		return this.cust1CompanyType;
	}

	public void setCust1CompanyType(String cust1CompanyType) {
		this.cust1CompanyType = cust1CompanyType;
	}

	public String getCust1CompanyDept() {
		return this.cust1CompanyDept;
	}

	public void setCust1CompanyDept(String cust1CompanyDept) {
		this.cust1CompanyDept = cust1CompanyDept;
	}

	public String getCust1JobCode() {
		return this.cust1JobCode;
	}

	public void setCust1JobCode(String cust1JobCode) {
		this.cust1JobCode = cust1JobCode;
	}

	public String getCust1CompanyName() {
		return this.cust1CompanyName;
	}

	public void setCust1CompanyName(String cust1CompanyName) {
		this.cust1CompanyName = cust1CompanyName;
	}

	public Date getCust1JobStartDate() {
		return this.cust1JobStartDate;
	}

	public void setCust1JobStartDate(Date cust1JobStartDate) {
		this.cust1JobStartDate = cust1JobStartDate;
	}

	public String getCust1CompanyAdr() {
		return this.cust1CompanyAdr;
	}

	public void setCust1CompanyAdr(String cust1CompanyAdr) {
		this.cust1CompanyAdr = cust1CompanyAdr;
	}

	public String getCust1CompanyCompl() {
		return this.cust1CompanyCompl;
	}

	public void setCust1CompanyCompl(String cust1CompanyCompl) {
		this.cust1CompanyCompl = cust1CompanyCompl;
	}

	public String getCust1CompanyZipcode() {
		return this.cust1CompanyZipcode;
	}

	public void setCust1CompanyZipcode(String cust1CompanyZipcode) {
		this.cust1CompanyZipcode = cust1CompanyZipcode;
	}

	public String getCust1CompanyCity() {
		return this.cust1CompanyCity;
	}

	public void setCust1CompanyCity(String cust1CompanyCity) {
		this.cust1CompanyCity = cust1CompanyCity;
	}

	public String getCust1CompanyPhPre() {
		return this.cust1CompanyPhPre;
	}

	public void setCust1CompanyPhPre(String cust1CompanyPhPre) {
		this.cust1CompanyPhPre = cust1CompanyPhPre;
	}

	public String getCust1CompanyPhNb() {
		return this.cust1CompanyPhNb;
	}

	public void setCust1CompanyPhNb(String cust1CompanyPhNb) {
		this.cust1CompanyPhNb = cust1CompanyPhNb;
	}

	public String getCust1CompanyPhExt() {
		return this.cust1CompanyPhExt;
	}

	public void setCust1CompanyPhExt(String cust1CompanyPhExt) {
		this.cust1CompanyPhExt = cust1CompanyPhExt;
	}

	public String getCust1CompanyEmail() {
		return this.cust1CompanyEmail;
	}

	public void setCust1CompanyEmail(String cust1CompanyEmail) {
		this.cust1CompanyEmail = cust1CompanyEmail;
	}

	public String getCust1MaritalStatus() {
		return this.cust1MaritalStatus;
	}

	public void setCust1MaritalStatus(String cust1MaritalStatus) {
		this.cust1MaritalStatus = cust1MaritalStatus;
	}

	public String getCust1HouseStatus() {
		return this.cust1HouseStatus;
	}

	public void setCust1HouseStatus(String cust1HouseStatus) {
		this.cust1HouseStatus = cust1HouseStatus;
	}

	public Date getCust1HouseStatusDate() {
		return this.cust1HouseStatusDate;
	}

	public void setCust1HouseStatusDate(Date cust1HouseStatusDate) {
		this.cust1HouseStatusDate = cust1HouseStatusDate;
	}

	public Long getCust1ChildNb() {
		return this.cust1ChildNb;
	}

	public void setCust1ChildNb(Long cust1ChildNb) {
		this.cust1ChildNb = cust1ChildNb;
	}

	public Long getCust1DependantNb() {
		return this.cust1DependantNb;
	}

	public void setCust1DependantNb(Long cust1DependantNb) {
		this.cust1DependantNb = cust1DependantNb;
	}

	public String getCust1FlagSalary() {
		return this.cust1FlagSalary;
	}

	public void setCust1FlagSalary(String cust1FlagSalary) {
		this.cust1FlagSalary = cust1FlagSalary;
	}

	public Long getCust1Salary() {
		return this.cust1Salary;
	}

	public void setCust1Salary(Long cust1Salary) {
		this.cust1Salary = cust1Salary;
	}

	public Long getCust1NbMonthSalary() {
		return this.cust1NbMonthSalary;
	}

	public void setCust1NbMonthSalary(Long cust1NbMonthSalary) {
		this.cust1NbMonthSalary = cust1NbMonthSalary;
	}

	public Long getCust1Pension() {
		return this.cust1Pension;
	}

	public void setCust1Pension(Long cust1Pension) {
		this.cust1Pension = cust1Pension;
	}

	public Long getCust1NbMonthPension() {
		return this.cust1NbMonthPension;
	}

	public void setCust1NbMonthPension(Long cust1NbMonthPension) {
		this.cust1NbMonthPension = cust1NbMonthPension;
	}

	public Long getCust1OthersIncomes() {
		return this.cust1OthersIncomes;
	}

	public void setCust1OthersIncomes(Long cust1OthersIncomes) {
		this.cust1OthersIncomes = cust1OthersIncomes;
	}

	public Long getCust1NbMonthOthersIncomes() {
		return this.cust1NbMonthOthersIncomes;
	}

	public void setCust1NbMonthOthersIncomes(Long cust1NbMonthOthersIncomes) {
		this.cust1NbMonthOthersIncomes = cust1NbMonthOthersIncomes;
	}

	public Long getCust1TotalIncomes() {
		return this.cust1TotalIncomes;
	}

	public void setCust1TotalIncomes(Long cust1TotalIncomes) {
		this.cust1TotalIncomes = cust1TotalIncomes;
	}

	public Long getCust1NbCreditcards() {
		return this.cust1NbCreditcards;
	}

	public void setCust1NbCreditcards(Long cust1NbCreditcards) {
		this.cust1NbCreditcards = cust1NbCreditcards;
	}

	public Long getCust1Dwelling() {
		return this.cust1Dwelling;
	}

	public void setCust1Dwelling(Long cust1Dwelling) {
		this.cust1Dwelling = cust1Dwelling;
	}

	public Long getCust1AutoLoans() {
		return this.cust1AutoLoans;
	}

	public void setCust1AutoLoans(Long cust1AutoLoans) {
		this.cust1AutoLoans = cust1AutoLoans;
	}

	public Long getCust1OtherCredit() {
		return this.cust1OtherCredit;
	}

	public void setCust1OtherCredit(Long cust1OtherCredit) {
		this.cust1OtherCredit = cust1OtherCredit;
	}

	public Long getCust1Alimony() {
		return this.cust1Alimony;
	}

	public void setCust1Alimony(Long cust1Alimony) {
		this.cust1Alimony = cust1Alimony;
	}

	public Long getCust1OthersCharges() {
		return this.cust1OthersCharges;
	}

	public void setCust1OthersCharges(Long cust1OthersCharges) {
		this.cust1OthersCharges = cust1OthersCharges;
	}

	public Long getCust1TotalExpenses() {
		return this.cust1TotalExpenses;
	}

	public void setCust1TotalExpenses(Long cust1TotalExpenses) {
		this.cust1TotalExpenses = cust1TotalExpenses;
	}

	public String getCust1ReputableCompany() {
		return this.cust1ReputableCompany;
	}

	public void setCust1ReputableCompany(String cust1ReputableCompany) {
		this.cust1ReputableCompany = cust1ReputableCompany;
	}

	public Date getCust1BkStartDate() {
		return this.cust1BkStartDate;
	}

	public void setCust1BkStartDate(Date cust1BkStartDate) {
		this.cust1BkStartDate = cust1BkStartDate;
	}

	public String getCust1CbInquDate() {
		return this.cust1CbInquDate;
	}

	public void setCust1CbInquDate(String cust1CbInquDate) {
		this.cust1CbInquDate = cust1CbInquDate;
	}

	public String getCust1FutureField1() {
		return this.cust1FutureField1;
	}

	public void setCust1FutureField1(String cust1FutureField1) {
		this.cust1FutureField1 = cust1FutureField1;
	}

	public String getCust1FutureField2() {
		return this.cust1FutureField2;
	}

	public void setCust1FutureField2(String cust1FutureField2) {
		this.cust1FutureField2 = cust1FutureField2;
	}

	public String getCust1FutureField3() {
		return this.cust1FutureField3;
	}

	public void setCust1FutureField3(String cust1FutureField3) {
		this.cust1FutureField3 = cust1FutureField3;
	}

	public String getCust1FutureField4() {
		return this.cust1FutureField4;
	}

	public void setCust1FutureField4(String cust1FutureField4) {
		this.cust1FutureField4 = cust1FutureField4;
	}

	public String getCust1FutureField5() {
		return this.cust1FutureField5;
	}

	public void setCust1FutureField5(String cust1FutureField5) {
		this.cust1FutureField5 = cust1FutureField5;
	}

	public String getCust1FutureField6() {
		return this.cust1FutureField6;
	}

	public void setCust1FutureField6(String cust1FutureField6) {
		this.cust1FutureField6 = cust1FutureField6;
	}

	public String getCust1FutureField7() {
		return this.cust1FutureField7;
	}

	public void setCust1FutureField7(String cust1FutureField7) {
		this.cust1FutureField7 = cust1FutureField7;
	}

	public String getCust1FutureField8() {
		return this.cust1FutureField8;
	}

	public void setCust1FutureField8(String cust1FutureField8) {
		this.cust1FutureField8 = cust1FutureField8;
	}

	public String getCust1FutureField9() {
		return this.cust1FutureField9;
	}

	public void setCust1FutureField9(String cust1FutureField9) {
		this.cust1FutureField9 = cust1FutureField9;
	}

	public String getRefRelationship() {
		return this.refRelationship;
	}

	public void setRefRelationship(String refRelationship) {
		this.refRelationship = refRelationship;
	}

	public String getRefLastname() {
		return this.refLastname;
	}

	public void setRefLastname(String refLastname) {
		this.refLastname = refLastname;
	}

	public String getRefFirstName() {
		return this.refFirstName;
	}

	public void setRefFirstName(String refFirstName) {
		this.refFirstName = refFirstName;
	}

	public String getRefName() {
		return this.refName;
	}

	public void setRefName(String refName) {
		this.refName = refName;
	}

	public String getRefMobile() {
		return this.refMobile;
	}

	public void setRefMobile(String refMobile) {
		this.refMobile = refMobile;
	}

	public String getRefAddress() {
		return this.refAddress;
	}

	public void setRefAddress(String refAddress) {
		this.refAddress = refAddress;
	}

	public String getRefComplement() {
		return this.refComplement;
	}

	public void setRefComplement(String refComplement) {
		this.refComplement = refComplement;
	}

	public String getRefZipcode() {
		return this.refZipcode;
	}

	public void setRefZipcode(String refZipcode) {
		this.refZipcode = refZipcode;
	}

	public String getRefCity() {
		return this.refCity;
	}

	public void setRefCity(String refCity) {
		this.refCity = refCity;
	}

	public String getRefPhonePrefix() {
		return this.refPhonePrefix;
	}

	public void setRefPhonePrefix(String refPhonePrefix) {
		this.refPhonePrefix = refPhonePrefix;
	}

	public String getRefPhoneNumber() {
		return this.refPhoneNumber;
	}

	public void setRefPhoneNumber(String refPhoneNumber) {
		this.refPhoneNumber = refPhoneNumber;
	}

	public String getRefPhoneExtension() {
		return this.refPhoneExtension;
	}

	public void setRefPhoneExtension(String refPhoneExtension) {
		this.refPhoneExtension = refPhoneExtension;
	}

	public String getCust2Org() {
		return this.cust2Org;
	}

	public void setCust2Org(String cust2Org) {
		this.cust2Org = cust2Org;
	}

	public String getCust2Nb() {
		return this.cust2Nb;
	}

	public void setCust2Nb(String cust2Nb) {
		this.cust2Nb = cust2Nb;
	}

	public String getCust2Communication() {
		return this.cust2Communication;
	}

	public void setCust2Communication(String cust2Communication) {
		this.cust2Communication = cust2Communication;
	}

	public String getCust2Language() {
		return this.cust2Language;
	}

	public void setCust2Language(String cust2Language) {
		this.cust2Language = cust2Language;
	}

	public String getCust2Address() {
		return this.cust2Address;
	}

	public void setCust2Address(String cust2Address) {
		this.cust2Address = cust2Address;
	}

	public String getCust2Complement() {
		return this.cust2Complement;
	}

	public void setCust2Complement(String cust2Complement) {
		this.cust2Complement = cust2Complement;
	}

	public String getCust2Zipcode() {
		return this.cust2Zipcode;
	}

	public void setCust2Zipcode(String cust2Zipcode) {
		this.cust2Zipcode = cust2Zipcode;
	}

	public String getCust2City() {
		return this.cust2City;
	}

	public void setCust2City(String cust2City) {
		this.cust2City = cust2City;
	}

	public String getCust2HomePhonePref() {
		return this.cust2HomePhonePref;
	}

	public void setCust2HomePhonePref(String cust2HomePhonePref) {
		this.cust2HomePhonePref = cust2HomePhonePref;
	}

	public String getCust2HomePhone() {
		return this.cust2HomePhone;
	}

	public void setCust2HomePhone(String cust2HomePhone) {
		this.cust2HomePhone = cust2HomePhone;
	}

	public String getCust2HomePhoneExt() {
		return this.cust2HomePhoneExt;
	}

	public void setCust2HomePhoneExt(String cust2HomePhoneExt) {
		this.cust2HomePhoneExt = cust2HomePhoneExt;
	}

	public String getCust2IdType() {
		return this.cust2IdType;
	}

	public void setCust2IdType(String cust2IdType) {
		this.cust2IdType = cust2IdType;
	}

	public String getCust2IdNumber() {
		return this.cust2IdNumber;
	}

	public void setCust2IdNumber(String cust2IdNumber) {
		this.cust2IdNumber = cust2IdNumber;
	}

	public Date getCust2IdExpDate() {
		return this.cust2IdExpDate;
	}

	public void setCust2IdExpDate(Date cust2IdExpDate) {
		this.cust2IdExpDate = cust2IdExpDate;
	}

	public String getCust2Gender() {
		return this.cust2Gender;
	}

	public void setCust2Gender(String cust2Gender) {
		this.cust2Gender = cust2Gender;
	}

	public String getCust2LastName() {
		return this.cust2LastName;
	}

	public void setCust2LastName(String cust2LastName) {
		this.cust2LastName = cust2LastName;
	}

	public String getCust2FirstName() {
		return this.cust2FirstName;
	}

	public void setCust2FirstName(String cust2FirstName) {
		this.cust2FirstName = cust2FirstName;
	}

	public String getCust2Name() {
		return this.cust2Name;
	}

	public void setCust2Name(String cust2Name) {
		this.cust2Name = cust2Name;
	}

	public String getCust2EnglName() {
		return this.cust2EnglName;
	}

	public void setCust2EnglName(String cust2EnglName) {
		this.cust2EnglName = cust2EnglName;
	}

	public Date getCust2BirthDate() {
		return this.cust2BirthDate;
	}

	public void setCust2BirthDate(Date cust2BirthDate) {
		this.cust2BirthDate = cust2BirthDate;
	}

	public String getCust2Nationality() {
		return this.cust2Nationality;
	}

	public void setCust2Nationality(String cust2Nationality) {
		this.cust2Nationality = cust2Nationality;
	}

	public String getCust2EducationLevel() {
		return this.cust2EducationLevel;
	}

	public void setCust2EducationLevel(String cust2EducationLevel) {
		this.cust2EducationLevel = cust2EducationLevel;
	}

	public String getCust2MobileNumber() {
		return this.cust2MobileNumber;
	}

	public void setCust2MobileNumber(String cust2MobileNumber) {
		this.cust2MobileNumber = cust2MobileNumber;
	}

	public String getCust2Email() {
		return this.cust2Email;
	}

	public void setCust2Email(String cust2Email) {
		this.cust2Email = cust2Email;
	}

	public String getCust2CompanyBranch() {
		return this.cust2CompanyBranch;
	}

	public void setCust2CompanyBranch(String cust2CompanyBranch) {
		this.cust2CompanyBranch = cust2CompanyBranch;
	}

	public String getCust2CompanyType() {
		return this.cust2CompanyType;
	}

	public void setCust2CompanyType(String cust2CompanyType) {
		this.cust2CompanyType = cust2CompanyType;
	}

	public String getCust2CompanyDept() {
		return this.cust2CompanyDept;
	}

	public void setCust2CompanyDept(String cust2CompanyDept) {
		this.cust2CompanyDept = cust2CompanyDept;
	}

	public String getCust2JobCode() {
		return this.cust2JobCode;
	}

	public void setCust2JobCode(String cust2JobCode) {
		this.cust2JobCode = cust2JobCode;
	}

	public String getCust2CompanyName() {
		return this.cust2CompanyName;
	}

	public void setCust2CompanyName(String cust2CompanyName) {
		this.cust2CompanyName = cust2CompanyName;
	}

	public Date getCust2JobStartDate() {
		return this.cust2JobStartDate;
	}

	public void setCust2JobStartDate(Date cust2JobStartDate) {
		this.cust2JobStartDate = cust2JobStartDate;
	}

	public String getCust2CompanyAdr() {
		return this.cust2CompanyAdr;
	}

	public void setCust2CompanyAdr(String cust2CompanyAdr) {
		this.cust2CompanyAdr = cust2CompanyAdr;
	}

	public String getCust2CompanyCompl() {
		return this.cust2CompanyCompl;
	}

	public void setCust2CompanyCompl(String cust2CompanyCompl) {
		this.cust2CompanyCompl = cust2CompanyCompl;
	}

	public String getCust2CompanyZipcode() {
		return this.cust2CompanyZipcode;
	}

	public void setCust2CompanyZipcode(String cust2CompanyZipcode) {
		this.cust2CompanyZipcode = cust2CompanyZipcode;
	}

	public String getCust2CompanyCity() {
		return this.cust2CompanyCity;
	}

	public void setCust2CompanyCity(String cust2CompanyCity) {
		this.cust2CompanyCity = cust2CompanyCity;
	}

	public String getCust2CompanyPhPre() {
		return this.cust2CompanyPhPre;
	}

	public void setCust2CompanyPhPre(String cust2CompanyPhPre) {
		this.cust2CompanyPhPre = cust2CompanyPhPre;
	}

	public String getCust2CompanyPhNb() {
		return this.cust2CompanyPhNb;
	}

	public void setCust2CompanyPhNb(String cust2CompanyPhNb) {
		this.cust2CompanyPhNb = cust2CompanyPhNb;
	}

	public String getCust2CompanyPhExt() {
		return this.cust2CompanyPhExt;
	}

	public void setCust2CompanyPhExt(String cust2CompanyPhExt) {
		this.cust2CompanyPhExt = cust2CompanyPhExt;
	}

	public String getCust2CompanyEmail() {
		return this.cust2CompanyEmail;
	}

	public void setCust2CompanyEmail(String cust2CompanyEmail) {
		this.cust2CompanyEmail = cust2CompanyEmail;
	}

	public String getCust2MaritalStatus() {
		return this.cust2MaritalStatus;
	}

	public void setCust2MaritalStatus(String cust2MaritalStatus) {
		this.cust2MaritalStatus = cust2MaritalStatus;
	}

	public String getCust2HouseStatus() {
		return this.cust2HouseStatus;
	}

	public void setCust2HouseStatus(String cust2HouseStatus) {
		this.cust2HouseStatus = cust2HouseStatus;
	}

	public Date getCust2HouseStatusDate() {
		return this.cust2HouseStatusDate;
	}

	public void setCust2HouseStatusDate(Date cust2HouseStatusDate) {
		this.cust2HouseStatusDate = cust2HouseStatusDate;
	}

	public Long getCust2ChildNb() {
		return this.cust2ChildNb;
	}

	public void setCust2ChildNb(Long cust2ChildNb) {
		this.cust2ChildNb = cust2ChildNb;
	}

	public Long getCust2DependantNb() {
		return this.cust2DependantNb;
	}

	public void setCust2DependantNb(Long cust2DependantNb) {
		this.cust2DependantNb = cust2DependantNb;
	}

	public String getCust2FlagSalary() {
		return this.cust2FlagSalary;
	}

	public void setCust2FlagSalary(String cust2FlagSalary) {
		this.cust2FlagSalary = cust2FlagSalary;
	}

	public Long getCust2Salary() {
		return this.cust2Salary;
	}

	public void setCust2Salary(Long cust2Salary) {
		this.cust2Salary = cust2Salary;
	}

	public Long getCust2NbMonthSalary() {
		return this.cust2NbMonthSalary;
	}

	public void setCust2NbMonthSalary(Long cust2NbMonthSalary) {
		this.cust2NbMonthSalary = cust2NbMonthSalary;
	}

	public Long getCust2Pension() {
		return this.cust2Pension;
	}

	public void setCust2Pension(Long cust2Pension) {
		this.cust2Pension = cust2Pension;
	}

	public Long getCust2NbMonthPension() {
		return this.cust2NbMonthPension;
	}

	public void setCust2NbMonthPension(Long cust2NbMonthPension) {
		this.cust2NbMonthPension = cust2NbMonthPension;
	}

	public Long getCust2OthersIncomes() {
		return this.cust2OthersIncomes;
	}

	public void setCust2OthersIncomes(Long cust2OthersIncomes) {
		this.cust2OthersIncomes = cust2OthersIncomes;
	}

	public Long getCust2NbMonthOthersIncomes() {
		return this.cust2NbMonthOthersIncomes;
	}

	public void setCust2NbMonthOthersIncomes(Long cust2NbMonthOthersIncomes) {
		this.cust2NbMonthOthersIncomes = cust2NbMonthOthersIncomes;
	}

	public Long getCust2TotalIncomes() {
		return this.cust2TotalIncomes;
	}

	public void setCust2TotalIncomes(Long cust2TotalIncomes) {
		this.cust2TotalIncomes = cust2TotalIncomes;
	}

	public Long getCust2NbCreditcards() {
		return this.cust2NbCreditcards;
	}

	public void setCust2NbCreditcards(Long cust2NbCreditcards) {
		this.cust2NbCreditcards = cust2NbCreditcards;
	}

	public Long getCust2Dwelling() {
		return this.cust2Dwelling;
	}

	public void setCust2Dwelling(Long cust2Dwelling) {
		this.cust2Dwelling = cust2Dwelling;
	}

	public Long getCust2AutoLoans() {
		return this.cust2AutoLoans;
	}

	public void setCust2AutoLoans(Long cust2AutoLoans) {
		this.cust2AutoLoans = cust2AutoLoans;
	}

	public Long getCust2OtherCredit() {
		return this.cust2OtherCredit;
	}

	public void setCust2OtherCredit(Long cust2OtherCredit) {
		this.cust2OtherCredit = cust2OtherCredit;
	}

	public Long getCust2Alimony() {
		return this.cust2Alimony;
	}

	public void setCust2Alimony(Long cust2Alimony) {
		this.cust2Alimony = cust2Alimony;
	}

	public Long getCust2OthersCharges() {
		return this.cust2OthersCharges;
	}

	public void setCust2OthersCharges(Long cust2OthersCharges) {
		this.cust2OthersCharges = cust2OthersCharges;
	}

	public Long getCust2TotalExpenses() {
		return this.cust2TotalExpenses;
	}

	public void setCust2TotalExpenses(Long cust2TotalExpenses) {
		this.cust2TotalExpenses = cust2TotalExpenses;
	}

	public String getCust2ReputableCompany() {
		return this.cust2ReputableCompany;
	}

	public void setCust2ReputableCompany(String cust2ReputableCompany) {
		this.cust2ReputableCompany = cust2ReputableCompany;
	}

	public Date getCust2BkStartDate() {
		return this.cust2BkStartDate;
	}

	public void setCust2BkStartDate(Date cust2BkStartDate) {
		this.cust2BkStartDate = cust2BkStartDate;
	}

	public String getCust2CbInquDate() {
		return this.cust2CbInquDate;
	}

	public void setCust2CbInquDate(String cust2CbInquDate) {
		this.cust2CbInquDate = cust2CbInquDate;
	}

	public String getCust2FutureField1() {
		return this.cust2FutureField1;
	}

	public void setCust2FutureField1(String cust2FutureField1) {
		this.cust2FutureField1 = cust2FutureField1;
	}

	public String getCust2FutureField2() {
		return this.cust2FutureField2;
	}

	public void setCust2FutureField2(String cust2FutureField2) {
		this.cust2FutureField2 = cust2FutureField2;
	}

	public String getCust2FutureField3() {
		return this.cust2FutureField3;
	}

	public void setCust2FutureField3(String cust2FutureField3) {
		this.cust2FutureField3 = cust2FutureField3;
	}

	public String getCust2FutureField4() {
		return this.cust2FutureField4;
	}

	public void setCust2FutureField4(String cust2FutureField4) {
		this.cust2FutureField4 = cust2FutureField4;
	}

	public String getCust2FutureField5() {
		return this.cust2FutureField5;
	}

	public void setCust2FutureField5(String cust2FutureField5) {
		this.cust2FutureField5 = cust2FutureField5;
	}

	public String getCust2FutureField6() {
		return this.cust2FutureField6;
	}

	public void setCust2FutureField6(String cust2FutureField6) {
		this.cust2FutureField6 = cust2FutureField6;
	}

	public String getCust2FutureField7() {
		return this.cust2FutureField7;
	}

	public void setCust2FutureField7(String cust2FutureField7) {
		this.cust2FutureField7 = cust2FutureField7;
	}

	public String getCust2FutureField8() {
		return this.cust2FutureField8;
	}

	public void setCust2FutureField8(String cust2FutureField8) {
		this.cust2FutureField8 = cust2FutureField8;
	}

	public String getCust2FutureField9() {
		return this.cust2FutureField9;
	}

	public void setCust2FutureField9(String cust2FutureField9) {
		this.cust2FutureField9 = cust2FutureField9;
	}

	public String getBkPaymentMode() {
		return this.bkPaymentMode;
	}

	public void setBkPaymentMode(String bkPaymentMode) {
		this.bkPaymentMode = bkPaymentMode;
	}

	public Date getBkDdEndDate() {
		return this.bkDdEndDate;
	}

	public void setBkDdEndDate(Date bkDdEndDate) {
		this.bkDdEndDate = bkDdEndDate;
	}

	public String getBkBankNumber() {
		return this.bkBankNumber;
	}

	public void setBkBankNumber(String bkBankNumber) {
		this.bkBankNumber = bkBankNumber;
	}

	public String getBkBranchNumber() {
		return this.bkBranchNumber;
	}

	public void setBkBranchNumber(String bkBranchNumber) {
		this.bkBranchNumber = bkBranchNumber;
	}

	public String getBkAccountNumber() {
		return this.bkAccountNumber;
	}

	public void setBkAccountNumber(String bkAccountNumber) {
		this.bkAccountNumber = bkAccountNumber;
	}

	public String getBkOwnerName() {
		return this.bkOwnerName;
	}

	public void setBkOwnerName(String bkOwnerName) {
		this.bkOwnerName = bkOwnerName;
	}

	public String getCarCardNumber() {
		return this.carCardNumber;
	}

	public void setCarCardNumber(String carCardNumber) {
		this.carCardNumber = carCardNumber;
	}

	public Date getCarExpirationDate() {
		return this.carExpirationDate;
	}

	public void setCarExpirationDate(Date carExpirationDate) {
		this.carExpirationDate = carExpirationDate;
	}

	public String getCarOwnerCode() {
		return this.carOwnerCode;
	}

	public void setCarOwnerCode(String carOwnerCode) {
		this.carOwnerCode = carOwnerCode;
	}

	public String getCarLogo() {
		return this.carLogo;
	}

	public void setCarLogo(String carLogo) {
		this.carLogo = carLogo;
	}

	public Long getCarRepaymentPercent() {
		return this.carRepaymentPercent;
	}

	public void setCarRepaymentPercent(Long carRepaymentPercent) {
		this.carRepaymentPercent = carRepaymentPercent;
	}

	public Long getCarQuantity() {
		return this.carQuantity;
	}

	public void setCarQuantity(Long carQuantity) {
		this.carQuantity = carQuantity;
	}

	public String getCarCust1Name() {
		return this.carCust1Name;
	}

	public void setCarCust1Name(String carCust1Name) {
		this.carCust1Name = carCust1Name;
	}

	public String getCarCust1Pid() {
		return this.carCust1Pid;
	}

	public void setCarCust1Pid(String carCust1Pid) {
		this.carCust1Pid = carCust1Pid;
	}

	public String getCarCust1MailerName() {
		return this.carCust1MailerName;
	}

	public void setCarCust1MailerName(String carCust1MailerName) {
		this.carCust1MailerName = carCust1MailerName;
	}

	public String getCarCust2Name() {
		return this.carCust2Name;
	}

	public void setCarCust2Name(String carCust2Name) {
		this.carCust2Name = carCust2Name;
	}

	public String getCarCust2Pid() {
		return this.carCust2Pid;
	}

	public void setCarCust2Pid(String carCust2Pid) {
		this.carCust2Pid = carCust2Pid;
	}

	public String getCarCust2MailerName() {
		return this.carCust2MailerName;
	}

	public void setCarCust2MailerName(String carCust2MailerName) {
		this.carCust2MailerName = carCust2MailerName;
	}

	public String getCarCust1PlasticType() {
		return this.carCust1PlasticType;
	}

	public void setCarCust1PlasticType(String carCust1PlasticType) {
		this.carCust1PlasticType = carCust1PlasticType;
	}

	public String getCarCust2PlasticType() {
		return this.carCust2PlasticType;
	}

	public void setCarCust2PlasticType(String carCust2PlasticType) {
		this.carCust2PlasticType = carCust2PlasticType;
	}

	public String getClaPlanNumber() {
		return this.claPlanNumber;
	}

	public void setClaPlanNumber(String claPlanNumber) {
		this.claPlanNumber = claPlanNumber;
	}

	public String getClaStoreName() {
		return this.claStoreName;
	}

	public void setClaStoreName(String claStoreName) {
		this.claStoreName = claStoreName;
	}

	public String getClaStoreNumber() {
		return this.claStoreNumber;
	}

	public void setClaStoreNumber(String claStoreNumber) {
		this.claStoreNumber = claStoreNumber;
	}

	public Long getClaSku1() {
		return this.claSku1;
	}

	public void setClaSku1(Long claSku1) {
		this.claSku1 = claSku1;
	}

	public Long getClaSku2() {
		return this.claSku2;
	}

	public void setClaSku2(Long claSku2) {
		this.claSku2 = claSku2;
	}

	public Long getClaSku3() {
		return this.claSku3;
	}

	public void setClaSku3(Long claSku3) {
		this.claSku3 = claSku3;
	}

	public Long getClaSku4() {
		return this.claSku4;
	}

	public void setClaSku4(Long claSku4) {
		this.claSku4 = claSku4;
	}

	public Long getClaSku5() {
		return this.claSku5;
	}

	public void setClaSku5(Long claSku5) {
		this.claSku5 = claSku5;
	}

	public Long getClaSku6() {
		return this.claSku6;
	}

	public void setClaSku6(Long claSku6) {
		this.claSku6 = claSku6;
	}

	public Long getClaSku7() {
		return this.claSku7;
	}

	public void setClaSku7(Long claSku7) {
		this.claSku7 = claSku7;
	}

	public Long getClaSku8() {
		return this.claSku8;
	}

	public void setClaSku8(Long claSku8) {
		this.claSku8 = claSku8;
	}

	public Long getClaSku9() {
		return this.claSku9;
	}

	public void setClaSku9(Long claSku9) {
		this.claSku9 = claSku9;
	}

	public Long getClaSku10() {
		return this.claSku10;
	}

	public void setClaSku10(Long claSku10) {
		this.claSku10 = claSku10;
	}

	public String getClaTransCode() {
		return this.claTransCode;
	}

	public void setClaTransCode(String claTransCode) {
		this.claTransCode = claTransCode;
	}

	public String getClaReferenceNumber() {
		return this.claReferenceNumber;
	}

	public void setClaReferenceNumber(String claReferenceNumber) {
		this.claReferenceNumber = claReferenceNumber;
	}

	public Long getClaLoanAmount() {
		return this.claLoanAmount;
	}

	public void setClaLoanAmount(Long claLoanAmount) {
		this.claLoanAmount = claLoanAmount;
	}

	public Long getClaDepositAmount() {
		return this.claDepositAmount;
	}

	public void setClaDepositAmount(Long claDepositAmount) {
		this.claDepositAmount = claDepositAmount;
	}

	public Long getClaPrincipal() {
		return this.claPrincipal;
	}

	public void setClaPrincipal(Long claPrincipal) {
		this.claPrincipal = claPrincipal;
	}

	public Long getClaCalcIndInterest() {
		return this.claCalcIndInterest;
	}

	public void setClaCalcIndInterest(Long claCalcIndInterest) {
		this.claCalcIndInterest = claCalcIndInterest;
	}

	public Long getClaInterestCapInd() {
		return this.claInterestCapInd;
	}

	public void setClaInterestCapInd(Long claInterestCapInd) {
		this.claInterestCapInd = claInterestCapInd;
	}

	public Long getClaInterestRateTable() {
		return this.claInterestRateTable;
	}

	public void setClaInterestRateTable(Long claInterestRateTable) {
		this.claInterestRateTable = claInterestRateTable;
	}

	public Long getClaInterest() {
		return this.claInterest;
	}

	public void setClaInterest(Long claInterest) {
		this.claInterest = claInterest;
	}

	public Long getClaInitialRate() {
		return this.claInitialRate;
	}

	public void setClaInitialRate(Long claInitialRate) {
		this.claInitialRate = claInitialRate;
	}

	public String getClaCalcIndInsurance() {
		return this.claCalcIndInsurance;
	}

	public void setClaCalcIndInsurance(String claCalcIndInsurance) {
		this.claCalcIndInsurance = claCalcIndInsurance;
	}

	public String getClaInsuranceCapInd() {
		return this.claInsuranceCapInd;
	}

	public void setClaInsuranceCapInd(String claInsuranceCapInd) {
		this.claInsuranceCapInd = claInsuranceCapInd;
	}

	public Long getClaInsurance() {
		return this.claInsurance;
	}

	public void setClaInsurance(Long claInsurance) {
		this.claInsurance = claInsurance;
	}

	public String getClaCalcIndFee1() {
		return this.claCalcIndFee1;
	}

	public void setClaCalcIndFee1(String claCalcIndFee1) {
		this.claCalcIndFee1 = claCalcIndFee1;
	}

	public Long getClaUserFee1() {
		return this.claUserFee1;
	}

	public void setClaUserFee1(Long claUserFee1) {
		this.claUserFee1 = claUserFee1;
	}

	public String getClaCalcIndFee2() {
		return this.claCalcIndFee2;
	}

	public void setClaCalcIndFee2(String claCalcIndFee2) {
		this.claCalcIndFee2 = claCalcIndFee2;
	}

	public Long getClaUserFee2() {
		return this.claUserFee2;
	}

	public void setClaUserFee2(Long claUserFee2) {
		this.claUserFee2 = claUserFee2;
	}

	public String getClaCalcIndFee3() {
		return this.claCalcIndFee3;
	}

	public void setClaCalcIndFee3(String claCalcIndFee3) {
		this.claCalcIndFee3 = claCalcIndFee3;
	}

	public Long getClaUserFee3() {
		return this.claUserFee3;
	}

	public void setClaUserFee3(Long claUserFee3) {
		this.claUserFee3 = claUserFee3;
	}

	public String getClaCalcIndFee4() {
		return this.claCalcIndFee4;
	}

	public void setClaCalcIndFee4(String claCalcIndFee4) {
		this.claCalcIndFee4 = claCalcIndFee4;
	}

	public Long getClaUserFee4() {
		return this.claUserFee4;
	}

	public void setClaUserFee4(Long claUserFee4) {
		this.claUserFee4 = claUserFee4;
	}

	public String getClaCalcIndFee5() {
		return this.claCalcIndFee5;
	}

	public void setClaCalcIndFee5(String claCalcIndFee5) {
		this.claCalcIndFee5 = claCalcIndFee5;
	}

	public Long getClaUserFee5() {
		return this.claUserFee5;
	}

	public void setClaUserFee5(Long claUserFee5) {
		this.claUserFee5 = claUserFee5;
	}

	public String getClaCalcIndFee6() {
		return this.claCalcIndFee6;
	}

	public void setClaCalcIndFee6(String claCalcIndFee6) {
		this.claCalcIndFee6 = claCalcIndFee6;
	}

	public Long getClaUserFee6() {
		return this.claUserFee6;
	}

	public void setClaUserFee6(Long claUserFee6) {
		this.claUserFee6 = claUserFee6;
	}

	public Date getClaPlanDate() {
		return this.claPlanDate;
	}

	public void setClaPlanDate(Date claPlanDate) {
		this.claPlanDate = claPlanDate;
	}

	public Long getClaNumberMonths() {
		return this.claNumberMonths;
	}

	public void setClaNumberMonths(Long claNumberMonths) {
		this.claNumberMonths = claNumberMonths;
	}

	public Long getClaDuration() {
		return this.claDuration;
	}

	public void setClaDuration(Long claDuration) {
		this.claDuration = claDuration;
	}

	public Long getClaFixedInterestAmt() {
		return this.claFixedInterestAmt;
	}

	public void setClaFixedInterestAmt(Long claFixedInterestAmt) {
		this.claFixedInterestAmt = claFixedInterestAmt;
	}

	public String getClaDispersalMethod() {
		return this.claDispersalMethod;
	}

	public void setClaDispersalMethod(String claDispersalMethod) {
		this.claDispersalMethod = claDispersalMethod;
	}

	public Long getClaFstPaymentAmt() {
		return this.claFstPaymentAmt;
	}

	public void setClaFstPaymentAmt(Long claFstPaymentAmt) {
		this.claFstPaymentAmt = claFstPaymentAmt;
	}

	public Date getClaFstPaymentDate() {
		return this.claFstPaymentDate;
	}

	public void setClaFstPaymentDate(Date claFstPaymentDate) {
		this.claFstPaymentDate = claFstPaymentDate;
	}

	public Long getClaComptTerms() {
		return this.claComptTerms;
	}

	public void setClaComptTerms(Long claComptTerms) {
		this.claComptTerms = claComptTerms;
	}

	public Long getClaComptTermsRem() {
		return this.claComptTermsRem;
	}

	public void setClaComptTermsRem(Long claComptTermsRem) {
		this.claComptTermsRem = claComptTermsRem;
	}

	public String getClaComptTable() {
		return this.claComptTable;
	}

	public void setClaComptTable(String claComptTable) {
		this.claComptTable = claComptTable;
	}

	public String getClaComptMethod() {
		return this.claComptMethod;
	}

	public void setClaComptMethod(String claComptMethod) {
		this.claComptMethod = claComptMethod;
	}

	public String getClaComptStartInd() {
		return this.claComptStartInd;
	}

	public void setClaComptStartInd(String claComptStartInd) {
		this.claComptStartInd = claComptStartInd;
	}

	public String getClaComptStartMtdh() {
		return this.claComptStartMtdh;
	}

	public void setClaComptStartMtdh(String claComptStartMtdh) {
		this.claComptStartMtdh = claComptStartMtdh;
	}

	public String getClaComptStartDay() {
		return this.claComptStartDay;
	}

	public void setClaComptStartDay(String claComptStartDay) {
		this.claComptStartDay = claComptStartDay;
	}

	public String getClaComptRounding() {
		return this.claComptRounding;
	}

	public void setClaComptRounding(String claComptRounding) {
		this.claComptRounding = claComptRounding;
	}

	public Long getClaComptFixAmt() {
		return this.claComptFixAmt;
	}

	public void setClaComptFixAmt(Long claComptFixAmt) {
		this.claComptFixAmt = claComptFixAmt;
	}

	public String getClaComptNextAmoDate() {
		return this.claComptNextAmoDate;
	}

	public void setClaComptNextAmoDate(String claComptNextAmoDate) {
		this.claComptNextAmoDate = claComptNextAmoDate;
	}

	public String getClaComptTabOverride() {
		return this.claComptTabOverride;
	}

	public void setClaComptTabOverride(String claComptTabOverride) {
		this.claComptTabOverride = claComptTabOverride;
	}

	public String getClaComptNegQuCcDat() {
		return this.claComptNegQuCcDat;
	}

	public void setClaComptNegQuCcDat(String claComptNegQuCcDat) {
		this.claComptNegQuCcDat = claComptNegQuCcDat;
	}

	public Date getClaFutureField1() {
		return this.claFutureField1;
	}

	public void setClaFutureField1(Date claFutureField1) {
		this.claFutureField1 = claFutureField1;
	}

	public Date getClaFutureField2() {
		return this.claFutureField2;
	}

	public void setClaFutureField2(Date claFutureField2) {
		this.claFutureField2 = claFutureField2;
	}

	public Date getClaFutureField3() {
		return this.claFutureField3;
	}

	public void setClaFutureField3(Date claFutureField3) {
		this.claFutureField3 = claFutureField3;
	}

	public Date getClaFutureField4() {
		return this.claFutureField4;
	}

	public void setClaFutureField4(Date claFutureField4) {
		this.claFutureField4 = claFutureField4;
	}

	public Long getClaMonthlyPayment() {
		return this.claMonthlyPayment;
	}

	public void setClaMonthlyPayment(Long claMonthlyPayment) {
		this.claMonthlyPayment = claMonthlyPayment;
	}

	public Long getClaFutureField6() {
		return this.claFutureField6;
	}

	public void setClaFutureField6(Long claFutureField6) {
		this.claFutureField6 = claFutureField6;
	}

	public Long getClaFutureField7() {
		return this.claFutureField7;
	}

	public void setClaFutureField7(Long claFutureField7) {
		this.claFutureField7 = claFutureField7;
	}

	public String getClaFutureField8() {
		return this.claFutureField8;
	}

	public void setClaFutureField8(String claFutureField8) {
		this.claFutureField8 = claFutureField8;
	}

	public String getClaFutureField9() {
		return this.claFutureField9;
	}

	public void setClaFutureField9(String claFutureField9) {
		this.claFutureField9 = claFutureField9;
	}

	public String getClaFutureField10() {
		return this.claFutureField10;
	}

	public void setClaFutureField10(String claFutureField10) {
		this.claFutureField10 = claFutureField10;
	}

	public String getInterfaceBatchNo() {
		return this.interfaceBatchNo;
	}

	public void setInterfaceBatchNo(String interfaceBatchNo) {
		this.interfaceBatchNo = interfaceBatchNo;
	}

	public Date getInterfaceDateTime() {
		return this.interfaceDateTime;
	}

	public void setInterfaceDateTime(Date interfaceDateTime) {
		this.interfaceDateTime = interfaceDateTime;
	}

	public Date getLogDateTime() {
		return this.logDateTime;
	}

	public void setLogDateTime(Date logDateTime) {
		this.logDateTime = logDateTime;
	}

	public String getIdCardCopyInd() {
		return this.idCardCopyInd;
	}

	public void setIdCardCopyInd(String idCardCopyInd) {
		this.idCardCopyInd = idCardCopyInd;
	}

	public String getBankPassbookInd() {
		return this.bankPassbookInd;
	}

	public void setBankPassbookInd(String bankPassbookInd) {
		this.bankPassbookInd = bankPassbookInd;
	}

	public String getOtherProofOfSalaryInd() {
		return this.otherProofOfSalaryInd;
	}

	public void setOtherProofOfSalaryInd(String otherProofOfSalaryInd) {
		this.otherProofOfSalaryInd = otherProofOfSalaryInd;
	}

	public String getUploadSpousesPhotoInd() {
		return this.uploadSpousesPhotoInd;
	}

	public void setUploadSpousesPhotoInd(String uploadSpousesPhotoInd) {
		this.uploadSpousesPhotoInd = uploadSpousesPhotoInd;
	}

	public String getSpouseIdCardCopyInd() {
		return this.spouseIdCardCopyInd;
	}

	public void setSpouseIdCardCopyInd(String spouseIdCardCopyInd) {
		this.spouseIdCardCopyInd = spouseIdCardCopyInd;
	}

	public String getSpouseBankPassbookInd() {
		return this.spouseBankPassbookInd;
	}

	public void setSpouseBankPassbookInd(String spouseBankPassbookInd) {
		this.spouseBankPassbookInd = spouseBankPassbookInd;
	}

	public String getSpouseOtherProofSalaryInd() {
		return this.spouseOtherProofSalaryInd;
	}

	public void setSpouseOtherProofSalaryInd(String spouseOtherProofSalaryInd) {
		this.spouseOtherProofSalaryInd = spouseOtherProofSalaryInd;
	}

	public Date getAccOpenDate() {
		return this.accOpenDate;
	}

	public void setAccOpenDate(Date accOpenDate) {
		this.accOpenDate = accOpenDate;
	}

	public String getCust1SalaryDay() {
		return this.cust1SalaryDay;
	}

	public void setCust1SalaryDay(String cust1SalaryDay) {
		this.cust1SalaryDay = cust1SalaryDay;
	}

	public String getCust2SalaryDay() {
		return this.cust2SalaryDay;
	}

	public void setCust2SalaryDay(String cust2SalaryDay) {
		this.cust2SalaryDay = cust2SalaryDay;
	}

	public Long getCust1SocialInsurance() {
		return this.cust1SocialInsurance;
	}

	public void setCust1SocialInsurance(Long cust1SocialInsurance) {
		this.cust1SocialInsurance = cust1SocialInsurance;
	}

	public Long getCust2SocialInsurance() {
		return this.cust2SocialInsurance;
	}

	public void setCust2SocialInsurance(Long cust2SocialInsurance) {
		this.cust2SocialInsurance = cust2SocialInsurance;
	}

	public String getBkAccountType() {
		return this.bkAccountType;
	}

	public void setBkAccountType(String bkAccountType) {
		this.bkAccountType = bkAccountType;
	}

	public String getCarPinInd() {
		return this.carPinInd;
	}

	public void setCarPinInd(String carPinInd) {
		this.carPinInd = carPinInd;
	}

	public Long getFutureField1() {
		return this.futureField1;
	}

	public void setFutureField1(Long futureField1) {
		this.futureField1 = futureField1;
	}

	public Long getFutureField2() {
		return this.futureField2;
	}

	public void setFutureField2(Long futureField2) {
		this.futureField2 = futureField2;
	}

	public Long getFutureField3() {
		return this.futureField3;
	}

	public void setFutureField3(Long futureField3) {
		this.futureField3 = futureField3;
	}

	public Long getFutureField4() {
		return this.futureField4;
	}

	public void setFutureField4(Long futureField4) {
		this.futureField4 = futureField4;
	}

	public Long getFutureField5() {
		return this.futureField5;
	}

	public void setFutureField5(Long futureField5) {
		this.futureField5 = futureField5;
	}

	public Date getFutureField6() {
		return this.futureField6;
	}

	public void setFutureField6(Date futureField6) {
		this.futureField6 = futureField6;
	}

	public Date getFutureField7() {
		return this.futureField7;
	}

	public void setFutureField7(Date futureField7) {
		this.futureField7 = futureField7;
	}

	public Date getFutureField8() {
		return this.futureField8;
	}

	public void setFutureField8(Date futureField8) {
		this.futureField8 = futureField8;
	}

	public Date getFutureField9() {
		return this.futureField9;
	}

	public void setFutureField9(Date futureField9) {
		this.futureField9 = futureField9;
	}

	public Date getFutureField10() {
		return this.futureField10;
	}

	public void setFutureField10(Date futureField10) {
		this.futureField10 = futureField10;
	}

	public String getFutureField11() {
		return this.futureField11;
	}

	public void setFutureField11(String futureField11) {
		this.futureField11 = futureField11;
	}

	public String getFutureField12() {
		return this.futureField12;
	}

	public void setFutureField12(String futureField12) {
		this.futureField12 = futureField12;
	}

	public String getFutureField13() {
		return this.futureField13;
	}

	public void setFutureField13(String futureField13) {
		this.futureField13 = futureField13;
	}

	public String getFutureField14() {
		return this.futureField14;
	}

	public void setFutureField14(String futureField14) {
		this.futureField14 = futureField14;
	}

	public String getFutureField15() {
		return this.futureField15;
	}

	public void setFutureField15(String futureField15) {
		this.futureField15 = futureField15;
	}

	public String getFutureField16() {
		return this.futureField16;
	}

	public void setFutureField16(String futureField16) {
		this.futureField16 = futureField16;
	}

	public String getFutureField17() {
		return this.futureField17;
	}

	public void setFutureField17(String futureField17) {
		this.futureField17 = futureField17;
	}

	public String getFutureField18() {
		return this.futureField18;
	}

	public void setFutureField18(String futureField18) {
		this.futureField18 = futureField18;
	}

	public String getFutureField19() {
		return this.futureField19;
	}

	public void setFutureField19(String futureField19) {
		this.futureField19 = futureField19;
	}

	public String getFutureField20() {
		return this.futureField20;
	}

	public void setFutureField20(String futureField20) {
		this.futureField20 = futureField20;
	}

	public String getCarGradeOption() {
		return this.carGradeOption;
	}

	public void setCarGradeOption(String carGradeOption) {
		this.carGradeOption = carGradeOption;
	}

	public Long getClaLatepayDuration() {
		return this.claLatepayDuration;
	}

	public void setClaLatepayDuration(Long claLatepayDuration) {
		this.claLatepayDuration = claLatepayDuration;
	}

	public Long getCust1IncomeVerified() {
		return this.cust1IncomeVerified;
	}

	public void setCust1IncomeVerified(Long cust1IncomeVerified) {
		this.cust1IncomeVerified = cust1IncomeVerified;
	}

	public Long getCust2IncomeVerified() {
		return this.cust2IncomeVerified;
	}

	public void setCust2IncomeVerified(Long cust2IncomeVerified) {
		this.cust2IncomeVerified = cust2IncomeVerified;
	}

	public String getStoNumberCurrent() {
		return this.stoNumberCurrent;
	}

	public void setStoNumberCurrent(String stoNumberCurrent) {
		this.stoNumberCurrent = stoNumberCurrent;
	}

	public String getCarDdPaymentMode() {
		return this.carDdPaymentMode;
	}

	public void setCarDdPaymentMode(String carDdPaymentMode) {
		this.carDdPaymentMode = carDdPaymentMode;
	}

	public Long getCarSuppNum() {
		return this.carSuppNum;
	}

	public void setCarSuppNum(Long carSuppNum) {
		this.carSuppNum = carSuppNum;
	}

	public Long getDesiredCreditLimit() {
		return this.desiredCreditLimit;
	}

	public void setDesiredCreditLimit(Long desiredCreditLimit) {
		this.desiredCreditLimit = desiredCreditLimit;
	}

	public Date getLastClIncreaseDate() {
		return this.lastClIncreaseDate;
	}

	public void setLastClIncreaseDate(Date lastClIncreaseDate) {
		this.lastClIncreaseDate = lastClIncreaseDate;
	}

	public Long getLastClAmount() {
		return this.lastClAmount;
	}

	public void setLastClAmount(Long lastClAmount) {
		this.lastClAmount = lastClAmount;
	}

	public Date getLastPurchaseDate() {
		return this.lastPurchaseDate;
	}

	public void setLastPurchaseDate(Date lastPurchaseDate) {
		this.lastPurchaseDate = lastPurchaseDate;
	}

	public Long getHighestBalance() {
		return this.highestBalance;
	}

	public void setHighestBalance(Long highestBalance) {
		this.highestBalance = highestBalance;
	}

	public Long getTotalBalance() {
		return this.totalBalance;
	}

	public void setTotalBalance(Long totalBalance) {
		this.totalBalance = totalBalance;
	}

	public Long getCurrentCd() {
		return this.currentCd;
	}

	public void setCurrentCd(Long currentCd) {
		this.currentCd = currentCd;
	}

	public Date getCurrentCreditLimitDate() {
		return this.currentCreditLimitDate;
	}

	public void setCurrentCreditLimitDate(Date currentCreditLimitDate) {
		this.currentCreditLimitDate = currentCreditLimitDate;
	}

	public Date getLastDelinquentDate() {
		return this.lastDelinquentDate;
	}

	public void setLastDelinquentDate(Date lastDelinquentDate) {
		this.lastDelinquentDate = lastDelinquentDate;
	}

	public String getHistroy24Months() {
		return this.histroy24Months;
	}

	public void setHistroy24Months(String histroy24Months) {
		this.histroy24Months = histroy24Months;
	}

	public String getCust1Province() {
		return cust1Province;
	}

	public void setCust1Province(String cust1Province) {
		this.cust1Province = cust1Province;
	}

	public String getCust1District() {
		return cust1District;
	}

	public void setCust1District(String cust1District) {
		this.cust1District = cust1District;
	}

	public String getCust1CompanyProvince() {
		return cust1CompanyProvince;
	}

	public void setCust1CompanyProvince(String cust1CompanyProvince) {
		this.cust1CompanyProvince = cust1CompanyProvince;
	}

	public String getCust1CompanyDistrict() {
		return cust1CompanyDistrict;
	}

	public void setCust1CompanyDistrict(String cust1CompanyDistrict) {
		this.cust1CompanyDistrict = cust1CompanyDistrict;
	}

	public String getRefProvince() {
		return refProvince;
	}

	public void setRefProvince(String refProvince) {
		this.refProvince = refProvince;
	}

	public String getRefDistrict() {
		return refDistrict;
	}

	public void setRefDistrict(String refDistrict) {
		this.refDistrict = refDistrict;
	}

	public String getCust2CompanyProvince() {
		return cust2CompanyProvince;
	}

	public void setCust2CompanyProvince(String cust2CompanyProvince) {
		this.cust2CompanyProvince = cust2CompanyProvince;
	}

	public String getCust2CompanyDistrict() {
		return cust2CompanyDistrict;
	}

	public void setCust2CompanyDistrict(String cust2CompanyDistrict) {
		this.cust2CompanyDistrict = cust2CompanyDistrict;
	}

}