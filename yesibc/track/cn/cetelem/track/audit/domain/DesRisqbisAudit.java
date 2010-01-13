package cn.cetelem.track.audit.domain;

import java.util.Date;

/**
 * DesRisqbisAudit entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class DesRisqbisAudit extends BaseAudit implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long logId;
	private String appId;
	private Date applicationDateTime;
	private String rb1Acces;
	private String rb2Acces;
	private Long rbNbApplication;
	private Long rbSumLoanAmount;
	private Long rbNbLoansUnderCard;
	private Long rbNbCards;
	private Long rbNbDeclinedLoans;
	private Long rbNbLoansClass;
	private Long rbSumClassAmount;
	private Long rbNbDeclinedCards;
	private Long rbNbSameStore;
	private Long rbNbCardsSameStore;
	private Long rbNbLoansSameStore;
	private String rb1DomainStore1;
	private String rb1DomainStore2;
	private String rb1DomainStore3;
	private String rb1DomainStore4;
	private String rb1DomainStore5;
	private String rb1OrgStore1;
	private String rb1OrgStore2;
	private String rb1OrgStore3;
	private String rb1OrgStore4;
	private String rb1OrgStore5;
	private String rb1ChainStore1;
	private String rb1ChainStore2;
	private String rb1ChainStore3;
	private String rb1ChainStore4;
	private String rb1ChainStore5;
	private String rb1StoreNumber1;
	private String rb1StoreNumber2;
	private String rb1StoreNumber3;
	private String rb1StoreNumber4;
	private String rb1StoreNumber5;
	private String rb1TypeProduct1;
	private String rb1TypeProduct2;
	private String rb1TypeProduct3;
	private String rb1TypeProduct4;
	private String rb1TypeProduct5;
	private String rb1CodeProduct1;
	private String rb1CodeProduct2;
	private String rb1CodeProduct3;
	private String rb1CodeProduct4;
	private String rb1CodeProduct5;
	private String rb1SysDecision1;
	private String rb1SysDecision2;
	private String rb1SysDecision3;
	private String rb1SysDecision4;
	private String rb1SysDecision5;
	private String rb1ManDecision1;
	private String rb1ManDecision2;
	private String rb1ManDecision3;
	private String rb1ManDecision4;
	private String rb1ManDecision5;
	private String rb1MaterialCode1;
	private String rb1MaterialCode2;
	private String rb1MaterialCode3;
	private String rb1MaterialCode4;
	private String rb1MaterialCode5;
	private Long rb1LoanAmount1;
	private Long rb1LoanAmount2;
	private Long rb1LoanAmount3;
	private Long rb1LoanAmount4;
	private Long rb1LoanAmount5;
	private Long rb1MonthlyPayment1;
	private Long rb1MonthlyPayment2;
	private Long rb1MonthlyPayment3;
	private Long rb1MonthlyPayment4;
	private Long rb1MonthlyPayment5;
	private Long rb1NbTerms1;
	private Long rb1NbTerms2;
	private Long rb1NbTerms3;
	private Long rb1NbTerms4;
	private Long rb1NbTerms5;
	private Date rb1Date1stPayment1;
	private Date rb1Date1stPayment2;
	private Date rb1Date1stPayment3;
	private Date rb1Date1stPayment4;
	private Date rb1Date1stPayment5;
	private String rb1CardType1;
	private String rb1CardType2;
	private String rb1CardType3;
	private String rb1CardType4;
	private String rb1CardType5;
	private Date rb1DateApplication1;
	private Date rb1DateApplication2;
	private Date rb1DateApplication3;
	private Date rb1DateApplication4;
	private Date rb1DateApplication5;
	private String rb1Scorefeu1;
	private String rb1Scorefeu2;
	private String rb1Scorefeu3;
	private String rb1Scorefeu4;
	private String rb1Scorefeu5;
	private String rb2DomainStore1;
	private String rb2DomainStore2;
	private String rb2DomainStore3;
	private String rb2DomainStore4;
	private String rb2DomainStore5;
	private String rb2OrgStore1;
	private String rb2OrgStore2;
	private String rb2OrgStore3;
	private String rb2OrgStore4;
	private String rb2OrgStore5;
	private String rb2ChainStore1;
	private String rb2ChainStore2;
	private String rb2ChainStore3;
	private String rb2ChainStore4;
	private String rb2ChainStore5;
	private String rb2StoreNumber1;
	private String rb2StoreNumber2;
	private String rb2StoreNumber3;
	private String rb2StoreNumber4;
	private String rb2StoreNumber5;
	private String rb2TypeProduct1;
	private String rb2TypeProduct2;
	private String rb2TypeProduct3;
	private String rb2TypeProduct4;
	private String rb2TypeProduct5;
	private String rb2CodeProduct1;
	private String rb2CodeProduct2;
	private String rb2CodeProduct3;
	private String rb2CodeProduct4;
	private String rb2CodeProduct5;
	private String rb2SysDecision1;
	private String rb2SysDecision2;
	private String rb2SysDecision3;
	private String rb2SysDecision4;
	private String rb2SysDecision5;
	private String rb2ManDecision1;
	private String rb2ManDecision2;
	private String rb2ManDecision3;
	private String rb2ManDecision4;
	private String rb2ManDecision5;
	private String rb2MaterialCode1;
	private String rb2MaterialCode2;
	private String rb2MaterialCode3;
	private String rb2MaterialCode4;
	private String rb2MaterialCode5;
	private Long rb2LoanAmount1;
	private Long rb2LoanAmount2;
	private Long rb2LoanAmount3;
	private Long rb2LoanAmount4;
	private Long rb2LoanAmount5;
	private Long rb2MonthlyPayment1;
	private Long rb2MonthlyPayment2;
	private Long rb2MonthlyPayment3;
	private Long rb2MonthlyPayment4;
	private Long rb2MonthlyPayment5;
	private Long rb2NbTerms1;
	private Long rb2NbTerms2;
	private Long rb2NbTerms3;
	private Long rb2NbTerms4;
	private Long rb2NbTerms5;
	private Date rb2Date1stPayment1;
	private Date rb2Date1stPayment2;
	private Date rb2Date1stPayment3;
	private Date rb2Date1stPayment4;
	private Date rb2Date1stPayment5;
	private String rb2CardType1;
	private String rb2CardType2;
	private String rb2CardType3;
	private String rb2CardType4;
	private String rb2CardType5;
	private Date rb2DateApplication1;
	private Date rb2DateApplication2;
	private Date rb2DateApplication3;
	private Date rb2DateApplication4;
	private Date rb2DateApplication5;
	private String rb2Scorefeu1;
	private String rb2Scorefeu2;
	private String rb2Scorefeu3;
	private String rb2Scorefeu4;
	private String rb2Scorefeu5;
	private Date dbLastUpdateDate;
	private Date logDateTime;
	
	private DesMainAudit desMain;

	// Constructors

	public DesMainAudit getDesMain() {
		return desMain;
	}

	public void setDesMain(DesMainAudit desMain) {
		this.desMain = desMain;
	}

	/** default constructor */
	public DesRisqbisAudit() {
	}

	/** minimal constructor */
	public DesRisqbisAudit(Long logId, String appId) {
		this.logId = logId;
		this.appId = appId;
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

	public Date getApplicationDateTime() {
		return this.applicationDateTime;
	}

	public void setApplicationDateTime(Date applicationDateTime) {
		this.applicationDateTime = applicationDateTime;
	}

	public String getRb1Acces() {
		return this.rb1Acces;
	}

	public void setRb1Acces(String rb1Acces) {
		this.rb1Acces = rb1Acces;
	}

	public String getRb2Acces() {
		return this.rb2Acces;
	}

	public void setRb2Acces(String rb2Acces) {
		this.rb2Acces = rb2Acces;
	}

	public Long getRbNbApplication() {
		return this.rbNbApplication;
	}

	public void setRbNbApplication(Long rbNbApplication) {
		this.rbNbApplication = rbNbApplication;
	}

	public Long getRbSumLoanAmount() {
		return this.rbSumLoanAmount;
	}

	public void setRbSumLoanAmount(Long rbSumLoanAmount) {
		this.rbSumLoanAmount = rbSumLoanAmount;
	}

	public Long getRbNbLoansUnderCard() {
		return this.rbNbLoansUnderCard;
	}

	public void setRbNbLoansUnderCard(Long rbNbLoansUnderCard) {
		this.rbNbLoansUnderCard = rbNbLoansUnderCard;
	}

	public Long getRbNbCards() {
		return this.rbNbCards;
	}

	public void setRbNbCards(Long rbNbCards) {
		this.rbNbCards = rbNbCards;
	}

	public Long getRbNbDeclinedLoans() {
		return this.rbNbDeclinedLoans;
	}

	public void setRbNbDeclinedLoans(Long rbNbDeclinedLoans) {
		this.rbNbDeclinedLoans = rbNbDeclinedLoans;
	}

	public Long getRbNbLoansClass() {
		return this.rbNbLoansClass;
	}

	public void setRbNbLoansClass(Long rbNbLoansClass) {
		this.rbNbLoansClass = rbNbLoansClass;
	}

	public Long getRbSumClassAmount() {
		return this.rbSumClassAmount;
	}

	public void setRbSumClassAmount(Long rbSumClassAmount) {
		this.rbSumClassAmount = rbSumClassAmount;
	}

	public Long getRbNbDeclinedCards() {
		return this.rbNbDeclinedCards;
	}

	public void setRbNbDeclinedCards(Long rbNbDeclinedCards) {
		this.rbNbDeclinedCards = rbNbDeclinedCards;
	}

	public Long getRbNbSameStore() {
		return this.rbNbSameStore;
	}

	public void setRbNbSameStore(Long rbNbSameStore) {
		this.rbNbSameStore = rbNbSameStore;
	}

	public Long getRbNbCardsSameStore() {
		return this.rbNbCardsSameStore;
	}

	public void setRbNbCardsSameStore(Long rbNbCardsSameStore) {
		this.rbNbCardsSameStore = rbNbCardsSameStore;
	}

	public Long getRbNbLoansSameStore() {
		return this.rbNbLoansSameStore;
	}

	public void setRbNbLoansSameStore(Long rbNbLoansSameStore) {
		this.rbNbLoansSameStore = rbNbLoansSameStore;
	}

	public String getRb1DomainStore1() {
		return this.rb1DomainStore1;
	}

	public void setRb1DomainStore1(String rb1DomainStore1) {
		this.rb1DomainStore1 = rb1DomainStore1;
	}

	public String getRb1DomainStore2() {
		return this.rb1DomainStore2;
	}

	public void setRb1DomainStore2(String rb1DomainStore2) {
		this.rb1DomainStore2 = rb1DomainStore2;
	}

	public String getRb1DomainStore3() {
		return this.rb1DomainStore3;
	}

	public void setRb1DomainStore3(String rb1DomainStore3) {
		this.rb1DomainStore3 = rb1DomainStore3;
	}

	public String getRb1DomainStore4() {
		return this.rb1DomainStore4;
	}

	public void setRb1DomainStore4(String rb1DomainStore4) {
		this.rb1DomainStore4 = rb1DomainStore4;
	}

	public String getRb1DomainStore5() {
		return this.rb1DomainStore5;
	}

	public void setRb1DomainStore5(String rb1DomainStore5) {
		this.rb1DomainStore5 = rb1DomainStore5;
	}

	public String getRb1OrgStore1() {
		return this.rb1OrgStore1;
	}

	public void setRb1OrgStore1(String rb1OrgStore1) {
		this.rb1OrgStore1 = rb1OrgStore1;
	}

	public String getRb1OrgStore2() {
		return this.rb1OrgStore2;
	}

	public void setRb1OrgStore2(String rb1OrgStore2) {
		this.rb1OrgStore2 = rb1OrgStore2;
	}

	public String getRb1OrgStore3() {
		return this.rb1OrgStore3;
	}

	public void setRb1OrgStore3(String rb1OrgStore3) {
		this.rb1OrgStore3 = rb1OrgStore3;
	}

	public String getRb1OrgStore4() {
		return this.rb1OrgStore4;
	}

	public void setRb1OrgStore4(String rb1OrgStore4) {
		this.rb1OrgStore4 = rb1OrgStore4;
	}

	public String getRb1OrgStore5() {
		return this.rb1OrgStore5;
	}

	public void setRb1OrgStore5(String rb1OrgStore5) {
		this.rb1OrgStore5 = rb1OrgStore5;
	}

	public String getRb1ChainStore1() {
		return this.rb1ChainStore1;
	}

	public void setRb1ChainStore1(String rb1ChainStore1) {
		this.rb1ChainStore1 = rb1ChainStore1;
	}

	public String getRb1ChainStore2() {
		return this.rb1ChainStore2;
	}

	public void setRb1ChainStore2(String rb1ChainStore2) {
		this.rb1ChainStore2 = rb1ChainStore2;
	}

	public String getRb1ChainStore3() {
		return this.rb1ChainStore3;
	}

	public void setRb1ChainStore3(String rb1ChainStore3) {
		this.rb1ChainStore3 = rb1ChainStore3;
	}

	public String getRb1ChainStore4() {
		return this.rb1ChainStore4;
	}

	public void setRb1ChainStore4(String rb1ChainStore4) {
		this.rb1ChainStore4 = rb1ChainStore4;
	}

	public String getRb1ChainStore5() {
		return this.rb1ChainStore5;
	}

	public void setRb1ChainStore5(String rb1ChainStore5) {
		this.rb1ChainStore5 = rb1ChainStore5;
	}

	public String getRb1StoreNumber1() {
		return this.rb1StoreNumber1;
	}

	public void setRb1StoreNumber1(String rb1StoreNumber1) {
		this.rb1StoreNumber1 = rb1StoreNumber1;
	}

	public String getRb1StoreNumber2() {
		return this.rb1StoreNumber2;
	}

	public void setRb1StoreNumber2(String rb1StoreNumber2) {
		this.rb1StoreNumber2 = rb1StoreNumber2;
	}

	public String getRb1StoreNumber3() {
		return this.rb1StoreNumber3;
	}

	public void setRb1StoreNumber3(String rb1StoreNumber3) {
		this.rb1StoreNumber3 = rb1StoreNumber3;
	}

	public String getRb1StoreNumber4() {
		return this.rb1StoreNumber4;
	}

	public void setRb1StoreNumber4(String rb1StoreNumber4) {
		this.rb1StoreNumber4 = rb1StoreNumber4;
	}

	public String getRb1StoreNumber5() {
		return this.rb1StoreNumber5;
	}

	public void setRb1StoreNumber5(String rb1StoreNumber5) {
		this.rb1StoreNumber5 = rb1StoreNumber5;
	}

	public String getRb1TypeProduct1() {
		return this.rb1TypeProduct1;
	}

	public void setRb1TypeProduct1(String rb1TypeProduct1) {
		this.rb1TypeProduct1 = rb1TypeProduct1;
	}

	public String getRb1TypeProduct2() {
		return this.rb1TypeProduct2;
	}

	public void setRb1TypeProduct2(String rb1TypeProduct2) {
		this.rb1TypeProduct2 = rb1TypeProduct2;
	}

	public String getRb1TypeProduct3() {
		return this.rb1TypeProduct3;
	}

	public void setRb1TypeProduct3(String rb1TypeProduct3) {
		this.rb1TypeProduct3 = rb1TypeProduct3;
	}

	public String getRb1TypeProduct4() {
		return this.rb1TypeProduct4;
	}

	public void setRb1TypeProduct4(String rb1TypeProduct4) {
		this.rb1TypeProduct4 = rb1TypeProduct4;
	}

	public String getRb1TypeProduct5() {
		return this.rb1TypeProduct5;
	}

	public void setRb1TypeProduct5(String rb1TypeProduct5) {
		this.rb1TypeProduct5 = rb1TypeProduct5;
	}

	public String getRb1CodeProduct1() {
		return this.rb1CodeProduct1;
	}

	public void setRb1CodeProduct1(String rb1CodeProduct1) {
		this.rb1CodeProduct1 = rb1CodeProduct1;
	}

	public String getRb1CodeProduct2() {
		return this.rb1CodeProduct2;
	}

	public void setRb1CodeProduct2(String rb1CodeProduct2) {
		this.rb1CodeProduct2 = rb1CodeProduct2;
	}

	public String getRb1CodeProduct3() {
		return this.rb1CodeProduct3;
	}

	public void setRb1CodeProduct3(String rb1CodeProduct3) {
		this.rb1CodeProduct3 = rb1CodeProduct3;
	}

	public String getRb1CodeProduct4() {
		return this.rb1CodeProduct4;
	}

	public void setRb1CodeProduct4(String rb1CodeProduct4) {
		this.rb1CodeProduct4 = rb1CodeProduct4;
	}

	public String getRb1CodeProduct5() {
		return this.rb1CodeProduct5;
	}

	public void setRb1CodeProduct5(String rb1CodeProduct5) {
		this.rb1CodeProduct5 = rb1CodeProduct5;
	}

	public String getRb1SysDecision1() {
		return this.rb1SysDecision1;
	}

	public void setRb1SysDecision1(String rb1SysDecision1) {
		this.rb1SysDecision1 = rb1SysDecision1;
	}

	public String getRb1SysDecision2() {
		return this.rb1SysDecision2;
	}

	public void setRb1SysDecision2(String rb1SysDecision2) {
		this.rb1SysDecision2 = rb1SysDecision2;
	}

	public String getRb1SysDecision3() {
		return this.rb1SysDecision3;
	}

	public void setRb1SysDecision3(String rb1SysDecision3) {
		this.rb1SysDecision3 = rb1SysDecision3;
	}

	public String getRb1SysDecision4() {
		return this.rb1SysDecision4;
	}

	public void setRb1SysDecision4(String rb1SysDecision4) {
		this.rb1SysDecision4 = rb1SysDecision4;
	}

	public String getRb1SysDecision5() {
		return this.rb1SysDecision5;
	}

	public void setRb1SysDecision5(String rb1SysDecision5) {
		this.rb1SysDecision5 = rb1SysDecision5;
	}

	public String getRb1ManDecision1() {
		return this.rb1ManDecision1;
	}

	public void setRb1ManDecision1(String rb1ManDecision1) {
		this.rb1ManDecision1 = rb1ManDecision1;
	}

	public String getRb1ManDecision2() {
		return this.rb1ManDecision2;
	}

	public void setRb1ManDecision2(String rb1ManDecision2) {
		this.rb1ManDecision2 = rb1ManDecision2;
	}

	public String getRb1ManDecision3() {
		return this.rb1ManDecision3;
	}

	public void setRb1ManDecision3(String rb1ManDecision3) {
		this.rb1ManDecision3 = rb1ManDecision3;
	}

	public String getRb1ManDecision4() {
		return this.rb1ManDecision4;
	}

	public void setRb1ManDecision4(String rb1ManDecision4) {
		this.rb1ManDecision4 = rb1ManDecision4;
	}

	public String getRb1ManDecision5() {
		return this.rb1ManDecision5;
	}

	public void setRb1ManDecision5(String rb1ManDecision5) {
		this.rb1ManDecision5 = rb1ManDecision5;
	}

	public String getRb1MaterialCode1() {
		return this.rb1MaterialCode1;
	}

	public void setRb1MaterialCode1(String rb1MaterialCode1) {
		this.rb1MaterialCode1 = rb1MaterialCode1;
	}

	public String getRb1MaterialCode2() {
		return this.rb1MaterialCode2;
	}

	public void setRb1MaterialCode2(String rb1MaterialCode2) {
		this.rb1MaterialCode2 = rb1MaterialCode2;
	}

	public String getRb1MaterialCode3() {
		return this.rb1MaterialCode3;
	}

	public void setRb1MaterialCode3(String rb1MaterialCode3) {
		this.rb1MaterialCode3 = rb1MaterialCode3;
	}

	public String getRb1MaterialCode4() {
		return this.rb1MaterialCode4;
	}

	public void setRb1MaterialCode4(String rb1MaterialCode4) {
		this.rb1MaterialCode4 = rb1MaterialCode4;
	}

	public String getRb1MaterialCode5() {
		return this.rb1MaterialCode5;
	}

	public void setRb1MaterialCode5(String rb1MaterialCode5) {
		this.rb1MaterialCode5 = rb1MaterialCode5;
	}

	public Long getRb1LoanAmount1() {
		return this.rb1LoanAmount1;
	}

	public void setRb1LoanAmount1(Long rb1LoanAmount1) {
		this.rb1LoanAmount1 = rb1LoanAmount1;
	}

	public Long getRb1LoanAmount2() {
		return this.rb1LoanAmount2;
	}

	public void setRb1LoanAmount2(Long rb1LoanAmount2) {
		this.rb1LoanAmount2 = rb1LoanAmount2;
	}

	public Long getRb1LoanAmount3() {
		return this.rb1LoanAmount3;
	}

	public void setRb1LoanAmount3(Long rb1LoanAmount3) {
		this.rb1LoanAmount3 = rb1LoanAmount3;
	}

	public Long getRb1LoanAmount4() {
		return this.rb1LoanAmount4;
	}

	public void setRb1LoanAmount4(Long rb1LoanAmount4) {
		this.rb1LoanAmount4 = rb1LoanAmount4;
	}

	public Long getRb1LoanAmount5() {
		return this.rb1LoanAmount5;
	}

	public void setRb1LoanAmount5(Long rb1LoanAmount5) {
		this.rb1LoanAmount5 = rb1LoanAmount5;
	}

	public Long getRb1MonthlyPayment1() {
		return this.rb1MonthlyPayment1;
	}

	public void setRb1MonthlyPayment1(Long rb1MonthlyPayment1) {
		this.rb1MonthlyPayment1 = rb1MonthlyPayment1;
	}

	public Long getRb1MonthlyPayment2() {
		return this.rb1MonthlyPayment2;
	}

	public void setRb1MonthlyPayment2(Long rb1MonthlyPayment2) {
		this.rb1MonthlyPayment2 = rb1MonthlyPayment2;
	}

	public Long getRb1MonthlyPayment3() {
		return this.rb1MonthlyPayment3;
	}

	public void setRb1MonthlyPayment3(Long rb1MonthlyPayment3) {
		this.rb1MonthlyPayment3 = rb1MonthlyPayment3;
	}

	public Long getRb1MonthlyPayment4() {
		return this.rb1MonthlyPayment4;
	}

	public void setRb1MonthlyPayment4(Long rb1MonthlyPayment4) {
		this.rb1MonthlyPayment4 = rb1MonthlyPayment4;
	}

	public Long getRb1MonthlyPayment5() {
		return this.rb1MonthlyPayment5;
	}

	public void setRb1MonthlyPayment5(Long rb1MonthlyPayment5) {
		this.rb1MonthlyPayment5 = rb1MonthlyPayment5;
	}

	public Long getRb1NbTerms1() {
		return this.rb1NbTerms1;
	}

	public void setRb1NbTerms1(Long rb1NbTerms1) {
		this.rb1NbTerms1 = rb1NbTerms1;
	}

	public Long getRb1NbTerms2() {
		return this.rb1NbTerms2;
	}

	public void setRb1NbTerms2(Long rb1NbTerms2) {
		this.rb1NbTerms2 = rb1NbTerms2;
	}

	public Long getRb1NbTerms3() {
		return this.rb1NbTerms3;
	}

	public void setRb1NbTerms3(Long rb1NbTerms3) {
		this.rb1NbTerms3 = rb1NbTerms3;
	}

	public Long getRb1NbTerms4() {
		return this.rb1NbTerms4;
	}

	public void setRb1NbTerms4(Long rb1NbTerms4) {
		this.rb1NbTerms4 = rb1NbTerms4;
	}

	public Long getRb1NbTerms5() {
		return this.rb1NbTerms5;
	}

	public void setRb1NbTerms5(Long rb1NbTerms5) {
		this.rb1NbTerms5 = rb1NbTerms5;
	}

	public Date getRb1Date1stPayment1() {
		return this.rb1Date1stPayment1;
	}

	public void setRb1Date1stPayment1(Date rb1Date1stPayment1) {
		this.rb1Date1stPayment1 = rb1Date1stPayment1;
	}

	public Date getRb1Date1stPayment2() {
		return this.rb1Date1stPayment2;
	}

	public void setRb1Date1stPayment2(Date rb1Date1stPayment2) {
		this.rb1Date1stPayment2 = rb1Date1stPayment2;
	}

	public Date getRb1Date1stPayment3() {
		return this.rb1Date1stPayment3;
	}

	public void setRb1Date1stPayment3(Date rb1Date1stPayment3) {
		this.rb1Date1stPayment3 = rb1Date1stPayment3;
	}

	public Date getRb1Date1stPayment4() {
		return this.rb1Date1stPayment4;
	}

	public void setRb1Date1stPayment4(Date rb1Date1stPayment4) {
		this.rb1Date1stPayment4 = rb1Date1stPayment4;
	}

	public Date getRb1Date1stPayment5() {
		return this.rb1Date1stPayment5;
	}

	public void setRb1Date1stPayment5(Date rb1Date1stPayment5) {
		this.rb1Date1stPayment5 = rb1Date1stPayment5;
	}

	public String getRb1CardType1() {
		return this.rb1CardType1;
	}

	public void setRb1CardType1(String rb1CardType1) {
		this.rb1CardType1 = rb1CardType1;
	}

	public String getRb1CardType2() {
		return this.rb1CardType2;
	}

	public void setRb1CardType2(String rb1CardType2) {
		this.rb1CardType2 = rb1CardType2;
	}

	public String getRb1CardType3() {
		return this.rb1CardType3;
	}

	public void setRb1CardType3(String rb1CardType3) {
		this.rb1CardType3 = rb1CardType3;
	}

	public String getRb1CardType4() {
		return this.rb1CardType4;
	}

	public void setRb1CardType4(String rb1CardType4) {
		this.rb1CardType4 = rb1CardType4;
	}

	public String getRb1CardType5() {
		return this.rb1CardType5;
	}

	public void setRb1CardType5(String rb1CardType5) {
		this.rb1CardType5 = rb1CardType5;
	}

	public Date getRb1DateApplication1() {
		return this.rb1DateApplication1;
	}

	public void setRb1DateApplication1(Date rb1DateApplication1) {
		this.rb1DateApplication1 = rb1DateApplication1;
	}

	public Date getRb1DateApplication2() {
		return this.rb1DateApplication2;
	}

	public void setRb1DateApplication2(Date rb1DateApplication2) {
		this.rb1DateApplication2 = rb1DateApplication2;
	}

	public Date getRb1DateApplication3() {
		return this.rb1DateApplication3;
	}

	public void setRb1DateApplication3(Date rb1DateApplication3) {
		this.rb1DateApplication3 = rb1DateApplication3;
	}

	public Date getRb1DateApplication4() {
		return this.rb1DateApplication4;
	}

	public void setRb1DateApplication4(Date rb1DateApplication4) {
		this.rb1DateApplication4 = rb1DateApplication4;
	}

	public Date getRb1DateApplication5() {
		return this.rb1DateApplication5;
	}

	public void setRb1DateApplication5(Date rb1DateApplication5) {
		this.rb1DateApplication5 = rb1DateApplication5;
	}

	public String getRb1Scorefeu1() {
		return this.rb1Scorefeu1;
	}

	public void setRb1Scorefeu1(String rb1Scorefeu1) {
		this.rb1Scorefeu1 = rb1Scorefeu1;
	}

	public String getRb1Scorefeu2() {
		return this.rb1Scorefeu2;
	}

	public void setRb1Scorefeu2(String rb1Scorefeu2) {
		this.rb1Scorefeu2 = rb1Scorefeu2;
	}

	public String getRb1Scorefeu3() {
		return this.rb1Scorefeu3;
	}

	public void setRb1Scorefeu3(String rb1Scorefeu3) {
		this.rb1Scorefeu3 = rb1Scorefeu3;
	}

	public String getRb1Scorefeu4() {
		return this.rb1Scorefeu4;
	}

	public void setRb1Scorefeu4(String rb1Scorefeu4) {
		this.rb1Scorefeu4 = rb1Scorefeu4;
	}

	public String getRb1Scorefeu5() {
		return this.rb1Scorefeu5;
	}

	public void setRb1Scorefeu5(String rb1Scorefeu5) {
		this.rb1Scorefeu5 = rb1Scorefeu5;
	}

	public String getRb2DomainStore1() {
		return this.rb2DomainStore1;
	}

	public void setRb2DomainStore1(String rb2DomainStore1) {
		this.rb2DomainStore1 = rb2DomainStore1;
	}

	public String getRb2DomainStore2() {
		return this.rb2DomainStore2;
	}

	public void setRb2DomainStore2(String rb2DomainStore2) {
		this.rb2DomainStore2 = rb2DomainStore2;
	}

	public String getRb2DomainStore3() {
		return this.rb2DomainStore3;
	}

	public void setRb2DomainStore3(String rb2DomainStore3) {
		this.rb2DomainStore3 = rb2DomainStore3;
	}

	public String getRb2DomainStore4() {
		return this.rb2DomainStore4;
	}

	public void setRb2DomainStore4(String rb2DomainStore4) {
		this.rb2DomainStore4 = rb2DomainStore4;
	}

	public String getRb2DomainStore5() {
		return this.rb2DomainStore5;
	}

	public void setRb2DomainStore5(String rb2DomainStore5) {
		this.rb2DomainStore5 = rb2DomainStore5;
	}

	public String getRb2OrgStore1() {
		return this.rb2OrgStore1;
	}

	public void setRb2OrgStore1(String rb2OrgStore1) {
		this.rb2OrgStore1 = rb2OrgStore1;
	}

	public String getRb2OrgStore2() {
		return this.rb2OrgStore2;
	}

	public void setRb2OrgStore2(String rb2OrgStore2) {
		this.rb2OrgStore2 = rb2OrgStore2;
	}

	public String getRb2OrgStore3() {
		return this.rb2OrgStore3;
	}

	public void setRb2OrgStore3(String rb2OrgStore3) {
		this.rb2OrgStore3 = rb2OrgStore3;
	}

	public String getRb2OrgStore4() {
		return this.rb2OrgStore4;
	}

	public void setRb2OrgStore4(String rb2OrgStore4) {
		this.rb2OrgStore4 = rb2OrgStore4;
	}

	public String getRb2OrgStore5() {
		return this.rb2OrgStore5;
	}

	public void setRb2OrgStore5(String rb2OrgStore5) {
		this.rb2OrgStore5 = rb2OrgStore5;
	}

	public String getRb2ChainStore1() {
		return this.rb2ChainStore1;
	}

	public void setRb2ChainStore1(String rb2ChainStore1) {
		this.rb2ChainStore1 = rb2ChainStore1;
	}

	public String getRb2ChainStore2() {
		return this.rb2ChainStore2;
	}

	public void setRb2ChainStore2(String rb2ChainStore2) {
		this.rb2ChainStore2 = rb2ChainStore2;
	}

	public String getRb2ChainStore3() {
		return this.rb2ChainStore3;
	}

	public void setRb2ChainStore3(String rb2ChainStore3) {
		this.rb2ChainStore3 = rb2ChainStore3;
	}

	public String getRb2ChainStore4() {
		return this.rb2ChainStore4;
	}

	public void setRb2ChainStore4(String rb2ChainStore4) {
		this.rb2ChainStore4 = rb2ChainStore4;
	}

	public String getRb2ChainStore5() {
		return this.rb2ChainStore5;
	}

	public void setRb2ChainStore5(String rb2ChainStore5) {
		this.rb2ChainStore5 = rb2ChainStore5;
	}

	public String getRb2StoreNumber1() {
		return this.rb2StoreNumber1;
	}

	public void setRb2StoreNumber1(String rb2StoreNumber1) {
		this.rb2StoreNumber1 = rb2StoreNumber1;
	}

	public String getRb2StoreNumber2() {
		return this.rb2StoreNumber2;
	}

	public void setRb2StoreNumber2(String rb2StoreNumber2) {
		this.rb2StoreNumber2 = rb2StoreNumber2;
	}

	public String getRb2StoreNumber3() {
		return this.rb2StoreNumber3;
	}

	public void setRb2StoreNumber3(String rb2StoreNumber3) {
		this.rb2StoreNumber3 = rb2StoreNumber3;
	}

	public String getRb2StoreNumber4() {
		return this.rb2StoreNumber4;
	}

	public void setRb2StoreNumber4(String rb2StoreNumber4) {
		this.rb2StoreNumber4 = rb2StoreNumber4;
	}

	public String getRb2StoreNumber5() {
		return this.rb2StoreNumber5;
	}

	public void setRb2StoreNumber5(String rb2StoreNumber5) {
		this.rb2StoreNumber5 = rb2StoreNumber5;
	}

	public String getRb2TypeProduct1() {
		return this.rb2TypeProduct1;
	}

	public void setRb2TypeProduct1(String rb2TypeProduct1) {
		this.rb2TypeProduct1 = rb2TypeProduct1;
	}

	public String getRb2TypeProduct2() {
		return this.rb2TypeProduct2;
	}

	public void setRb2TypeProduct2(String rb2TypeProduct2) {
		this.rb2TypeProduct2 = rb2TypeProduct2;
	}

	public String getRb2TypeProduct3() {
		return this.rb2TypeProduct3;
	}

	public void setRb2TypeProduct3(String rb2TypeProduct3) {
		this.rb2TypeProduct3 = rb2TypeProduct3;
	}

	public String getRb2TypeProduct4() {
		return this.rb2TypeProduct4;
	}

	public void setRb2TypeProduct4(String rb2TypeProduct4) {
		this.rb2TypeProduct4 = rb2TypeProduct4;
	}

	public String getRb2TypeProduct5() {
		return this.rb2TypeProduct5;
	}

	public void setRb2TypeProduct5(String rb2TypeProduct5) {
		this.rb2TypeProduct5 = rb2TypeProduct5;
	}

	public String getRb2CodeProduct1() {
		return this.rb2CodeProduct1;
	}

	public void setRb2CodeProduct1(String rb2CodeProduct1) {
		this.rb2CodeProduct1 = rb2CodeProduct1;
	}

	public String getRb2CodeProduct2() {
		return this.rb2CodeProduct2;
	}

	public void setRb2CodeProduct2(String rb2CodeProduct2) {
		this.rb2CodeProduct2 = rb2CodeProduct2;
	}

	public String getRb2CodeProduct3() {
		return this.rb2CodeProduct3;
	}

	public void setRb2CodeProduct3(String rb2CodeProduct3) {
		this.rb2CodeProduct3 = rb2CodeProduct3;
	}

	public String getRb2CodeProduct4() {
		return this.rb2CodeProduct4;
	}

	public void setRb2CodeProduct4(String rb2CodeProduct4) {
		this.rb2CodeProduct4 = rb2CodeProduct4;
	}

	public String getRb2CodeProduct5() {
		return this.rb2CodeProduct5;
	}

	public void setRb2CodeProduct5(String rb2CodeProduct5) {
		this.rb2CodeProduct5 = rb2CodeProduct5;
	}

	public String getRb2SysDecision1() {
		return this.rb2SysDecision1;
	}

	public void setRb2SysDecision1(String rb2SysDecision1) {
		this.rb2SysDecision1 = rb2SysDecision1;
	}

	public String getRb2SysDecision2() {
		return this.rb2SysDecision2;
	}

	public void setRb2SysDecision2(String rb2SysDecision2) {
		this.rb2SysDecision2 = rb2SysDecision2;
	}

	public String getRb2SysDecision3() {
		return this.rb2SysDecision3;
	}

	public void setRb2SysDecision3(String rb2SysDecision3) {
		this.rb2SysDecision3 = rb2SysDecision3;
	}

	public String getRb2SysDecision4() {
		return this.rb2SysDecision4;
	}

	public void setRb2SysDecision4(String rb2SysDecision4) {
		this.rb2SysDecision4 = rb2SysDecision4;
	}

	public String getRb2SysDecision5() {
		return this.rb2SysDecision5;
	}

	public void setRb2SysDecision5(String rb2SysDecision5) {
		this.rb2SysDecision5 = rb2SysDecision5;
	}

	public String getRb2ManDecision1() {
		return this.rb2ManDecision1;
	}

	public void setRb2ManDecision1(String rb2ManDecision1) {
		this.rb2ManDecision1 = rb2ManDecision1;
	}

	public String getRb2ManDecision2() {
		return this.rb2ManDecision2;
	}

	public void setRb2ManDecision2(String rb2ManDecision2) {
		this.rb2ManDecision2 = rb2ManDecision2;
	}

	public String getRb2ManDecision3() {
		return this.rb2ManDecision3;
	}

	public void setRb2ManDecision3(String rb2ManDecision3) {
		this.rb2ManDecision3 = rb2ManDecision3;
	}

	public String getRb2ManDecision4() {
		return this.rb2ManDecision4;
	}

	public void setRb2ManDecision4(String rb2ManDecision4) {
		this.rb2ManDecision4 = rb2ManDecision4;
	}

	public String getRb2ManDecision5() {
		return this.rb2ManDecision5;
	}

	public void setRb2ManDecision5(String rb2ManDecision5) {
		this.rb2ManDecision5 = rb2ManDecision5;
	}

	public String getRb2MaterialCode1() {
		return this.rb2MaterialCode1;
	}

	public void setRb2MaterialCode1(String rb2MaterialCode1) {
		this.rb2MaterialCode1 = rb2MaterialCode1;
	}

	public String getRb2MaterialCode2() {
		return this.rb2MaterialCode2;
	}

	public void setRb2MaterialCode2(String rb2MaterialCode2) {
		this.rb2MaterialCode2 = rb2MaterialCode2;
	}

	public String getRb2MaterialCode3() {
		return this.rb2MaterialCode3;
	}

	public void setRb2MaterialCode3(String rb2MaterialCode3) {
		this.rb2MaterialCode3 = rb2MaterialCode3;
	}

	public String getRb2MaterialCode4() {
		return this.rb2MaterialCode4;
	}

	public void setRb2MaterialCode4(String rb2MaterialCode4) {
		this.rb2MaterialCode4 = rb2MaterialCode4;
	}

	public String getRb2MaterialCode5() {
		return this.rb2MaterialCode5;
	}

	public void setRb2MaterialCode5(String rb2MaterialCode5) {
		this.rb2MaterialCode5 = rb2MaterialCode5;
	}

	public Long getRb2LoanAmount1() {
		return this.rb2LoanAmount1;
	}

	public void setRb2LoanAmount1(Long rb2LoanAmount1) {
		this.rb2LoanAmount1 = rb2LoanAmount1;
	}

	public Long getRb2LoanAmount2() {
		return this.rb2LoanAmount2;
	}

	public void setRb2LoanAmount2(Long rb2LoanAmount2) {
		this.rb2LoanAmount2 = rb2LoanAmount2;
	}

	public Long getRb2LoanAmount3() {
		return this.rb2LoanAmount3;
	}

	public void setRb2LoanAmount3(Long rb2LoanAmount3) {
		this.rb2LoanAmount3 = rb2LoanAmount3;
	}

	public Long getRb2LoanAmount4() {
		return this.rb2LoanAmount4;
	}

	public void setRb2LoanAmount4(Long rb2LoanAmount4) {
		this.rb2LoanAmount4 = rb2LoanAmount4;
	}

	public Long getRb2LoanAmount5() {
		return this.rb2LoanAmount5;
	}

	public void setRb2LoanAmount5(Long rb2LoanAmount5) {
		this.rb2LoanAmount5 = rb2LoanAmount5;
	}

	public Long getRb2MonthlyPayment1() {
		return this.rb2MonthlyPayment1;
	}

	public void setRb2MonthlyPayment1(Long rb2MonthlyPayment1) {
		this.rb2MonthlyPayment1 = rb2MonthlyPayment1;
	}

	public Long getRb2MonthlyPayment2() {
		return this.rb2MonthlyPayment2;
	}

	public void setRb2MonthlyPayment2(Long rb2MonthlyPayment2) {
		this.rb2MonthlyPayment2 = rb2MonthlyPayment2;
	}

	public Long getRb2MonthlyPayment3() {
		return this.rb2MonthlyPayment3;
	}

	public void setRb2MonthlyPayment3(Long rb2MonthlyPayment3) {
		this.rb2MonthlyPayment3 = rb2MonthlyPayment3;
	}

	public Long getRb2MonthlyPayment4() {
		return this.rb2MonthlyPayment4;
	}

	public void setRb2MonthlyPayment4(Long rb2MonthlyPayment4) {
		this.rb2MonthlyPayment4 = rb2MonthlyPayment4;
	}

	public Long getRb2MonthlyPayment5() {
		return this.rb2MonthlyPayment5;
	}

	public void setRb2MonthlyPayment5(Long rb2MonthlyPayment5) {
		this.rb2MonthlyPayment5 = rb2MonthlyPayment5;
	}

	public Long getRb2NbTerms1() {
		return this.rb2NbTerms1;
	}

	public void setRb2NbTerms1(Long rb2NbTerms1) {
		this.rb2NbTerms1 = rb2NbTerms1;
	}

	public Long getRb2NbTerms2() {
		return this.rb2NbTerms2;
	}

	public void setRb2NbTerms2(Long rb2NbTerms2) {
		this.rb2NbTerms2 = rb2NbTerms2;
	}

	public Long getRb2NbTerms3() {
		return this.rb2NbTerms3;
	}

	public void setRb2NbTerms3(Long rb2NbTerms3) {
		this.rb2NbTerms3 = rb2NbTerms3;
	}

	public Long getRb2NbTerms4() {
		return this.rb2NbTerms4;
	}

	public void setRb2NbTerms4(Long rb2NbTerms4) {
		this.rb2NbTerms4 = rb2NbTerms4;
	}

	public Long getRb2NbTerms5() {
		return this.rb2NbTerms5;
	}

	public void setRb2NbTerms5(Long rb2NbTerms5) {
		this.rb2NbTerms5 = rb2NbTerms5;
	}

	public Date getRb2Date1stPayment1() {
		return this.rb2Date1stPayment1;
	}

	public void setRb2Date1stPayment1(Date rb2Date1stPayment1) {
		this.rb2Date1stPayment1 = rb2Date1stPayment1;
	}

	public Date getRb2Date1stPayment2() {
		return this.rb2Date1stPayment2;
	}

	public void setRb2Date1stPayment2(Date rb2Date1stPayment2) {
		this.rb2Date1stPayment2 = rb2Date1stPayment2;
	}

	public Date getRb2Date1stPayment3() {
		return this.rb2Date1stPayment3;
	}

	public void setRb2Date1stPayment3(Date rb2Date1stPayment3) {
		this.rb2Date1stPayment3 = rb2Date1stPayment3;
	}

	public Date getRb2Date1stPayment4() {
		return this.rb2Date1stPayment4;
	}

	public void setRb2Date1stPayment4(Date rb2Date1stPayment4) {
		this.rb2Date1stPayment4 = rb2Date1stPayment4;
	}

	public Date getRb2Date1stPayment5() {
		return this.rb2Date1stPayment5;
	}

	public void setRb2Date1stPayment5(Date rb2Date1stPayment5) {
		this.rb2Date1stPayment5 = rb2Date1stPayment5;
	}

	public String getRb2CardType1() {
		return this.rb2CardType1;
	}

	public void setRb2CardType1(String rb2CardType1) {
		this.rb2CardType1 = rb2CardType1;
	}

	public String getRb2CardType2() {
		return this.rb2CardType2;
	}

	public void setRb2CardType2(String rb2CardType2) {
		this.rb2CardType2 = rb2CardType2;
	}

	public String getRb2CardType3() {
		return this.rb2CardType3;
	}

	public void setRb2CardType3(String rb2CardType3) {
		this.rb2CardType3 = rb2CardType3;
	}

	public String getRb2CardType4() {
		return this.rb2CardType4;
	}

	public void setRb2CardType4(String rb2CardType4) {
		this.rb2CardType4 = rb2CardType4;
	}

	public String getRb2CardType5() {
		return this.rb2CardType5;
	}

	public void setRb2CardType5(String rb2CardType5) {
		this.rb2CardType5 = rb2CardType5;
	}

	public Date getRb2DateApplication1() {
		return this.rb2DateApplication1;
	}

	public void setRb2DateApplication1(Date rb2DateApplication1) {
		this.rb2DateApplication1 = rb2DateApplication1;
	}

	public Date getRb2DateApplication2() {
		return this.rb2DateApplication2;
	}

	public void setRb2DateApplication2(Date rb2DateApplication2) {
		this.rb2DateApplication2 = rb2DateApplication2;
	}

	public Date getRb2DateApplication3() {
		return this.rb2DateApplication3;
	}

	public void setRb2DateApplication3(Date rb2DateApplication3) {
		this.rb2DateApplication3 = rb2DateApplication3;
	}

	public Date getRb2DateApplication4() {
		return this.rb2DateApplication4;
	}

	public void setRb2DateApplication4(Date rb2DateApplication4) {
		this.rb2DateApplication4 = rb2DateApplication4;
	}

	public Date getRb2DateApplication5() {
		return this.rb2DateApplication5;
	}

	public void setRb2DateApplication5(Date rb2DateApplication5) {
		this.rb2DateApplication5 = rb2DateApplication5;
	}

	public String getRb2Scorefeu1() {
		return this.rb2Scorefeu1;
	}

	public void setRb2Scorefeu1(String rb2Scorefeu1) {
		this.rb2Scorefeu1 = rb2Scorefeu1;
	}

	public String getRb2Scorefeu2() {
		return this.rb2Scorefeu2;
	}

	public void setRb2Scorefeu2(String rb2Scorefeu2) {
		this.rb2Scorefeu2 = rb2Scorefeu2;
	}

	public String getRb2Scorefeu3() {
		return this.rb2Scorefeu3;
	}

	public void setRb2Scorefeu3(String rb2Scorefeu3) {
		this.rb2Scorefeu3 = rb2Scorefeu3;
	}

	public String getRb2Scorefeu4() {
		return this.rb2Scorefeu4;
	}

	public void setRb2Scorefeu4(String rb2Scorefeu4) {
		this.rb2Scorefeu4 = rb2Scorefeu4;
	}

	public String getRb2Scorefeu5() {
		return this.rb2Scorefeu5;
	}

	public void setRb2Scorefeu5(String rb2Scorefeu5) {
		this.rb2Scorefeu5 = rb2Scorefeu5;
	}

	public Date getDbLastUpdateDate() {
		return this.dbLastUpdateDate;
	}

	public void setDbLastUpdateDate(Date dbLastUpdateDate) {
		this.dbLastUpdateDate = dbLastUpdateDate;
	}

	public Date getLogDateTime() {
		return this.logDateTime;
	}

	public void setLogDateTime(Date logDateTime) {
		this.logDateTime = logDateTime;
	}

}