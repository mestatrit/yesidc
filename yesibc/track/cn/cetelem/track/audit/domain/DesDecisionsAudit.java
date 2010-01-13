package cn.cetelem.track.audit.domain;

import java.util.Date;

/**
 * DesDecisionsAudit entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class DesDecisionsAudit extends BaseAudit implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long logId;
	private String appId;
	private Long seq;
	private Date applicationDateTime;
	private Date esDateTimeLastCall;
	private Long esNbAcces;
	private Long esHighLevelSignRequ;
	private Long esHighLevelSignActual;
	private String esMemoAssessment;
	private String esPossDecision1;
	private String esPossDecision2;
	private String esPossDecision3;
	private String esPossDecision4;
	private String esPossDecision5;
	private String esManualDecision;
	private String esManDecisionJun;
	private String esManDecisionSen;
	private String esManDecisionSup;
	private String esManDecisionMan;
	private String esManDecisionDir;
	private String esFinalManDecision;
	private String esScoreNumber;
	private String esScoreVersion;
	private String esInitialDecisionComm;
	private String esDecision1;
	private String esDecision2;
	private String esDecisionColor;
	private String esDecisionOutEs;
	private String esCoteScore;
	private String esSignScore;
	private String esNoteScore;
	private String esApplicationTyp;
	private String esCardEtudTyp;
	private String esEtudTyp;
	private String esMotivDecision;
	private String esOrientationCod;
	private Long esAddProdAmt;
	private String esAddProdDecision;
	private String esAddProdCoteScore;
	private String esAddProdSignScore;
	private String esAddProdNoteScore;
	private String esAddProdTyp;
	private String esAddProdEtudTyp;
	private String esAccessCode;
	private String esInternalFlagComp;
	private String esAppformStatus;
	private String esTypEs;
	private String esTeam;
	private String esChangedFlag;
	private String esParallelSccaNote;
	private String esSmsCode;
	private String esAlert01;
	private String esAlert02;
	private String esAlert03;
	private String esAlert04;
	private String esAlert05;
	private String esAlert06;
	private String esAlert07;
	private String esAlert08;
	private String esAlert09;
	private String esAlert10;
	private String esAlert11;
	private String esAlert12;
	private String esAlert13;
	private String esAlert14;
	private String esAlert15;
	private String esAlert16;
	private String esAlert17;
	private String esAlert18;
	private String esAlert19;
	private String esAlert20;
	private String esAlert21;
	private String esAlert22;
	private String esAlert23;
	private String esAlert24;
	private String esAlert25;
	private String esHistoAlert01;
	private String esHistoAlert02;
	private String esHistoAlert03;
	private String esHistoAlert04;
	private String esHistoAlert05;
	private String esHistoAlert06;
	private String esHistoAlert07;
	private String esHistoAlert08;
	private String esHistoAlert09;
	private String esHistoAlert10;
	private String esHistoAlert11;
	private String esHistoAlert12;
	private String esHistoAlert13;
	private String esHistoAlert14;
	private String esHistoAlert15;
	private String esHistoAlert16;
	private String esHistoAlert17;
	private String esHistoAlert18;
	private String esHistoAlert19;
	private String esHistoAlert20;
	private String esHistoAlert21;
	private String esHistoAlert22;
	private String esHistoAlert23;
	private String esHistoAlert24;
	private String esHistoAlert25;
	private String esAlertFlag01;
	private String esAlertFlag02;
	private String esAlertFlag03;
	private String esAlertFlag04;
	private String esAlertFlag05;
	private String esAlertFlag06;
	private String esAlertFlag07;
	private String esAlertFlag08;
	private String esAlertFlag09;
	private String esAlertFlag10;
	private String esAlertFlag11;
	private String esAlertFlag12;
	private String esAlertFlag13;
	private String esAlertFlag14;
	private String esAlertFlag15;
	private String esAlertFlag16;
	private String esAlertFlag17;
	private String esAlertFlag18;
	private String esAlertFlag19;
	private String esAlertFlag20;
	private String esAlertFlag21;
	private String esAlertFlag22;
	private String esAlertFlag23;
	private String esAlertFlag24;
	private String esAlertFlag25;
	private String esHistoAlertFlag01;
	private String esHistoAlertFlag02;
	private String esHistoAlertFlag03;
	private String esHistoAlertFlag04;
	private String esHistoAlertFlag05;
	private String esHistoAlertFlag06;
	private String esHistoAlertFlag07;
	private String esHistoAlertFlag08;
	private String esHistoAlertFlag09;
	private String esHistoAlertFlag10;
	private String esHistoAlertFlag11;
	private String esHistoAlertFlag12;
	private String esHistoAlertFlag13;
	private String esHistoAlertFlag14;
	private String esHistoAlertFlag15;
	private String esHistoAlertFlag16;
	private String esHistoAlertFlag17;
	private String esHistoAlertFlag18;
	private String esHistoAlertFlag19;
	private String esHistoAlertFlag20;
	private String esHistoAlertFlag21;
	private String esHistoAlertFlag22;
	private String esHistoAlertFlag23;
	private String esHistoAlertFlag24;
	private String esHistoAlertFlag25;
	private String esCtrl01;
	private String esCtrl02;
	private String esCtrl03;
	private String esCtrl04;
	private String esCtrl05;
	private String esCtrl06;
	private String esCtrl07;
	private String esCtrl08;
	private String esCtrl09;
	private String esCtrl10;
	private String esCtrl11;
	private String esCtrl12;
	private String esCtrl13;
	private String esCtrl14;
	private String esCtrl15;
	private String esCtrl16;
	private String esCtrl17;
	private String esCtrl18;
	private String esCtrl19;
	private String esCtrl20;
	private String esCtrl21;
	private String esCtrl22;
	private String esCtrl23;
	private String esCtrl24;
	private String esCtrl25;
	private String esHistoCtrl01;
	private String esHistoCtrl02;
	private String esHistoCtrl03;
	private String esHistoCtrl04;
	private String esHistoCtrl05;
	private String esHistoCtrl06;
	private String esHistoCtrl07;
	private String esHistoCtrl08;
	private String esHistoCtrl09;
	private String esHistoCtrl10;
	private String esHistoCtrl11;
	private String esHistoCtrl12;
	private String esHistoCtrl13;
	private String esHistoCtrl14;
	private String esHistoCtrl15;
	private String esHistoCtrl16;
	private String esHistoCtrl17;
	private String esHistoCtrl18;
	private String esHistoCtrl19;
	private String esHistoCtrl20;
	private String esHistoCtrl21;
	private String esHistoCtrl22;
	private String esHistoCtrl23;
	private String esHistoCtrl24;
	private String esHistoCtrl25;
	private String esCtrlFlag01;
	private String esCtrlFlag02;
	private String esCtrlFlag03;
	private String esCtrlFlag04;
	private String esCtrlFlag05;
	private String esCtrlFlag06;
	private String esCtrlFlag07;
	private String esCtrlFlag08;
	private String esCtrlFlag09;
	private String esCtrlFlag10;
	private String esCtrlFlag11;
	private String esCtrlFlag12;
	private String esCtrlFlag13;
	private String esCtrlFlag14;
	private String esCtrlFlag15;
	private String esCtrlFlag16;
	private String esCtrlFlag17;
	private String esCtrlFlag18;
	private String esCtrlFlag19;
	private String esCtrlFlag20;
	private String esCtrlFlag21;
	private String esCtrlFlag22;
	private String esCtrlFlag23;
	private String esCtrlFlag24;
	private String esCtrlFlag25;
	private String esHistoCtrlFlag01;
	private String esHistoCtrlFlag02;
	private String esHistoCtrlFlag03;
	private String esHistoCtrlFlag04;
	private String esHistoCtrlFlag05;
	private String esHistoCtrlFlag06;
	private String esHistoCtrlFlag07;
	private String esHistoCtrlFlag08;
	private String esHistoCtrlFlag09;
	private String esHistoCtrlFlag10;
	private String esHistoCtrlFlag11;
	private String esHistoCtrlFlag12;
	private String esHistoCtrlFlag13;
	private String esHistoCtrlFlag14;
	private String esHistoCtrlFlag15;
	private String esHistoCtrlFlag16;
	private String esHistoCtrlFlag17;
	private String esHistoCtrlFlag18;
	private String esHistoCtrlFlag19;
	private String esHistoCtrlFlag20;
	private String esHistoCtrlFlag21;
	private String esHistoCtrlFlag22;
	private String esHistoCtrlFlag23;
	private String esHistoCtrlFlag24;
	private String esHistoCtrlFlag25;
	private String esAlertProof01;
	private String esAlertProof02;
	private String esAlertProof03;
	private String esAlertProof04;
	private String esAlertProof05;
	private String esAlertProof06;
	private String esAlertProof07;
	private String esAlertProof08;
	private String esAlertProof09;
	private String esAlertProof10;
	private String esAlertProof11;
	private String esAlertProof12;
	private String esAlertProof13;
	private String esAlertProof14;
	private String esAlertProof15;
	private String esAlertProof16;
	private String esAlertProof17;
	private String esAlertProof18;
	private String esAlertProof19;
	private String esAlertProof20;
	private String esAlertProof21;
	private String esAlertProof22;
	private String esAlertProof23;
	private String esAlertProof24;
	private String esAlertProof25;
	private Date logDateTime;
	private String esFraudFlag;
	private String esCardGradeDecision;
	
	private String esOrderFlag;
	private Long esCreditLimitPurch;
	private Long esCreditLoan;
	private Long esCustTotalIncome;
	private Long esCustTotalExpense;
	private Long esNewProductType;
	private String esAdvice01;
	private String esAdvice02;
	private String esAdvice03;
	private String esAdvice04;
	private String esAdvice05;
	private String esAdvice06;
	private String esAdvice07;
	private String esAdvice08;
	private String esAdvice09;
	private String esAdvice10;
	private String esFeedback01;
	private String esFeedback02;
	private String esFeedback03;
	private String esFeedback04;
	private String esFeedback05;
	private String esFeedback06;
	private String esFeedback07;
	private String esFeedback08;
	private String esFeedback09;
	private String esFeedback10;
	private String esEmbosser1Flag;
	private String esEmbosser2Flag;
	private String esCollectable;
	private String esCDMType;
	private String esAccountFlag;
	private String esLoanFlag;
	
	private String autoLoanFlag;
	
	private DesMainAudit desMain;

	// Constructors

	public DesMainAudit getDesMain() {
		return desMain;
	}

	public void setDesMain(DesMainAudit desMain) {
		this.desMain = desMain;
	}

	/** default constructor */
	public DesDecisionsAudit() {
	}

	/** minimal constructor */
	public DesDecisionsAudit(Long logId, String appId) {
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

	public Long getSeq() {
		return this.seq;
	}

	public void setSeq(Long seq) {
		this.seq = seq;
	}

	public Date getApplicationDateTime() {
		return this.applicationDateTime;
	}

	public void setApplicationDateTime(Date applicationDateTime) {
		this.applicationDateTime = applicationDateTime;
	}

	public Date getEsDateTimeLastCall() {
		return this.esDateTimeLastCall;
	}

	public void setEsDateTimeLastCall(Date esDateTimeLastCall) {
		this.esDateTimeLastCall = esDateTimeLastCall;
	}

	public Long getEsNbAcces() {
		return this.esNbAcces;
	}

	public void setEsNbAcces(Long esNbAcces) {
		this.esNbAcces = esNbAcces;
	}

	public Long getEsHighLevelSignRequ() {
		return this.esHighLevelSignRequ;
	}

	public void setEsHighLevelSignRequ(Long esHighLevelSignRequ) {
		this.esHighLevelSignRequ = esHighLevelSignRequ;
	}

	public Long getEsHighLevelSignActual() {
		return this.esHighLevelSignActual;
	}

	public void setEsHighLevelSignActual(Long esHighLevelSignActual) {
		this.esHighLevelSignActual = esHighLevelSignActual;
	}

	public String getEsMemoAssessment() {
		return this.esMemoAssessment;
	}

	public void setEsMemoAssessment(String esMemoAssessment) {
		this.esMemoAssessment = esMemoAssessment;
	}

	public String getEsPossDecision1() {
		return this.esPossDecision1;
	}

	public void setEsPossDecision1(String esPossDecision1) {
		this.esPossDecision1 = esPossDecision1;
	}

	public String getEsPossDecision2() {
		return this.esPossDecision2;
	}

	public void setEsPossDecision2(String esPossDecision2) {
		this.esPossDecision2 = esPossDecision2;
	}

	public String getEsPossDecision3() {
		return this.esPossDecision3;
	}

	public void setEsPossDecision3(String esPossDecision3) {
		this.esPossDecision3 = esPossDecision3;
	}

	public String getEsPossDecision4() {
		return this.esPossDecision4;
	}

	public void setEsPossDecision4(String esPossDecision4) {
		this.esPossDecision4 = esPossDecision4;
	}

	public String getEsPossDecision5() {
		return this.esPossDecision5;
	}

	public void setEsPossDecision5(String esPossDecision5) {
		this.esPossDecision5 = esPossDecision5;
	}

	public String getEsManualDecision() {
		return this.esManualDecision;
	}

	public void setEsManualDecision(String esManualDecision) {
		this.esManualDecision = esManualDecision;
	}

	public String getEsManDecisionJun() {
		return this.esManDecisionJun;
	}

	public void setEsManDecisionJun(String esManDecisionJun) {
		this.esManDecisionJun = esManDecisionJun;
	}

	public String getEsManDecisionSen() {
		return this.esManDecisionSen;
	}

	public void setEsManDecisionSen(String esManDecisionSen) {
		this.esManDecisionSen = esManDecisionSen;
	}

	public String getEsManDecisionSup() {
		return this.esManDecisionSup;
	}

	public void setEsManDecisionSup(String esManDecisionSup) {
		this.esManDecisionSup = esManDecisionSup;
	}

	public String getEsManDecisionMan() {
		return this.esManDecisionMan;
	}

	public void setEsManDecisionMan(String esManDecisionMan) {
		this.esManDecisionMan = esManDecisionMan;
	}

	public String getEsManDecisionDir() {
		return this.esManDecisionDir;
	}

	public void setEsManDecisionDir(String esManDecisionDir) {
		this.esManDecisionDir = esManDecisionDir;
	}

	public String getEsFinalManDecision() {
		return this.esFinalManDecision;
	}

	public void setEsFinalManDecision(String esFinalManDecision) {
		this.esFinalManDecision = esFinalManDecision;
	}

	public String getEsScoreNumber() {
		return this.esScoreNumber;
	}

	public void setEsScoreNumber(String esScoreNumber) {
		this.esScoreNumber = esScoreNumber;
	}

	public String getEsScoreVersion() {
		return this.esScoreVersion;
	}

	public void setEsScoreVersion(String esScoreVersion) {
		this.esScoreVersion = esScoreVersion;
	}

	public String getEsInitialDecisionComm() {
		return this.esInitialDecisionComm;
	}

	public void setEsInitialDecisionComm(String esInitialDecisionComm) {
		this.esInitialDecisionComm = esInitialDecisionComm;
	}

	public String getEsDecision1() {
		return this.esDecision1;
	}

	public void setEsDecision1(String esDecision1) {
		this.esDecision1 = esDecision1;
	}

	public String getEsDecision2() {
		return this.esDecision2;
	}

	public void setEsDecision2(String esDecision2) {
		this.esDecision2 = esDecision2;
	}

	public String getEsDecisionColor() {
		return this.esDecisionColor;
	}

	public void setEsDecisionColor(String esDecisionColor) {
		this.esDecisionColor = esDecisionColor;
	}

	public String getEsDecisionOutEs() {
		return this.esDecisionOutEs;
	}

	public void setEsDecisionOutEs(String esDecisionOutEs) {
		this.esDecisionOutEs = esDecisionOutEs;
	}

	public String getEsCoteScore() {
		return this.esCoteScore;
	}

	public void setEsCoteScore(String esCoteScore) {
		this.esCoteScore = esCoteScore;
	}

	public String getEsSignScore() {
		return this.esSignScore;
	}

	public void setEsSignScore(String esSignScore) {
		this.esSignScore = esSignScore;
	}

	public String getEsNoteScore() {
		return this.esNoteScore;
	}

	public void setEsNoteScore(String esNoteScore) {
		this.esNoteScore = esNoteScore;
	}

	public String getEsApplicationTyp() {
		return this.esApplicationTyp;
	}

	public void setEsApplicationTyp(String esApplicationTyp) {
		this.esApplicationTyp = esApplicationTyp;
	}

	public String getEsCardEtudTyp() {
		return this.esCardEtudTyp;
	}

	public void setEsCardEtudTyp(String esCardEtudTyp) {
		this.esCardEtudTyp = esCardEtudTyp;
	}

	public String getEsEtudTyp() {
		return this.esEtudTyp;
	}

	public void setEsEtudTyp(String esEtudTyp) {
		this.esEtudTyp = esEtudTyp;
	}

	public String getEsMotivDecision() {
		return this.esMotivDecision;
	}

	public void setEsMotivDecision(String esMotivDecision) {
		this.esMotivDecision = esMotivDecision;
	}

	public String getEsOrientationCod() {
		return this.esOrientationCod;
	}

	public void setEsOrientationCod(String esOrientationCod) {
		this.esOrientationCod = esOrientationCod;
	}

	public Long getEsAddProdAmt() {
		return this.esAddProdAmt;
	}

	public void setEsAddProdAmt(Long esAddProdAmt) {
		this.esAddProdAmt = esAddProdAmt;
	}

	public String getEsAddProdDecision() {
		return this.esAddProdDecision;
	}

	public void setEsAddProdDecision(String esAddProdDecision) {
		this.esAddProdDecision = esAddProdDecision;
	}

	public String getEsAddProdCoteScore() {
		return this.esAddProdCoteScore;
	}

	public void setEsAddProdCoteScore(String esAddProdCoteScore) {
		this.esAddProdCoteScore = esAddProdCoteScore;
	}

	public String getEsAddProdSignScore() {
		return this.esAddProdSignScore;
	}

	public void setEsAddProdSignScore(String esAddProdSignScore) {
		this.esAddProdSignScore = esAddProdSignScore;
	}

	public String getEsAddProdNoteScore() {
		return this.esAddProdNoteScore;
	}

	public void setEsAddProdNoteScore(String esAddProdNoteScore) {
		this.esAddProdNoteScore = esAddProdNoteScore;
	}

	public String getEsAddProdTyp() {
		return this.esAddProdTyp;
	}

	public void setEsAddProdTyp(String esAddProdTyp) {
		this.esAddProdTyp = esAddProdTyp;
	}

	public String getEsAddProdEtudTyp() {
		return this.esAddProdEtudTyp;
	}

	public void setEsAddProdEtudTyp(String esAddProdEtudTyp) {
		this.esAddProdEtudTyp = esAddProdEtudTyp;
	}

	public String getEsAccessCode() {
		return this.esAccessCode;
	}

	public void setEsAccessCode(String esAccessCode) {
		this.esAccessCode = esAccessCode;
	}

	public String getEsInternalFlagComp() {
		return this.esInternalFlagComp;
	}

	public void setEsInternalFlagComp(String esInternalFlagComp) {
		this.esInternalFlagComp = esInternalFlagComp;
	}

	public String getEsAppformStatus() {
		return this.esAppformStatus;
	}

	public void setEsAppformStatus(String esAppformStatus) {
		this.esAppformStatus = esAppformStatus;
	}

	public String getEsTypEs() {
		return this.esTypEs;
	}

	public void setEsTypEs(String esTypEs) {
		this.esTypEs = esTypEs;
	}

	public String getEsTeam() {
		return this.esTeam;
	}

	public void setEsTeam(String esTeam) {
		this.esTeam = esTeam;
	}

	public String getEsChangedFlag() {
		return this.esChangedFlag;
	}

	public void setEsChangedFlag(String esChangedFlag) {
		this.esChangedFlag = esChangedFlag;
	}

	public String getEsParallelSccaNote() {
		return this.esParallelSccaNote;
	}

	public void setEsParallelSccaNote(String esParallelSccaNote) {
		this.esParallelSccaNote = esParallelSccaNote;
	}

	public String getEsSmsCode() {
		return this.esSmsCode;
	}

	public void setEsSmsCode(String esSmsCode) {
		this.esSmsCode = esSmsCode;
	}

	public String getEsAlert01() {
		return this.esAlert01;
	}

	public void setEsAlert01(String esAlert01) {
		this.esAlert01 = esAlert01;
	}

	public String getEsAlert02() {
		return this.esAlert02;
	}

	public void setEsAlert02(String esAlert02) {
		this.esAlert02 = esAlert02;
	}

	public String getEsAlert03() {
		return this.esAlert03;
	}

	public void setEsAlert03(String esAlert03) {
		this.esAlert03 = esAlert03;
	}

	public String getEsAlert04() {
		return this.esAlert04;
	}

	public void setEsAlert04(String esAlert04) {
		this.esAlert04 = esAlert04;
	}

	public String getEsAlert05() {
		return this.esAlert05;
	}

	public void setEsAlert05(String esAlert05) {
		this.esAlert05 = esAlert05;
	}

	public String getEsAlert06() {
		return this.esAlert06;
	}

	public void setEsAlert06(String esAlert06) {
		this.esAlert06 = esAlert06;
	}

	public String getEsAlert07() {
		return this.esAlert07;
	}

	public void setEsAlert07(String esAlert07) {
		this.esAlert07 = esAlert07;
	}

	public String getEsAlert08() {
		return this.esAlert08;
	}

	public void setEsAlert08(String esAlert08) {
		this.esAlert08 = esAlert08;
	}

	public String getEsAlert09() {
		return this.esAlert09;
	}

	public void setEsAlert09(String esAlert09) {
		this.esAlert09 = esAlert09;
	}

	public String getEsAlert10() {
		return this.esAlert10;
	}

	public void setEsAlert10(String esAlert10) {
		this.esAlert10 = esAlert10;
	}

	public String getEsAlert11() {
		return this.esAlert11;
	}

	public void setEsAlert11(String esAlert11) {
		this.esAlert11 = esAlert11;
	}

	public String getEsAlert12() {
		return this.esAlert12;
	}

	public void setEsAlert12(String esAlert12) {
		this.esAlert12 = esAlert12;
	}

	public String getEsAlert13() {
		return this.esAlert13;
	}

	public void setEsAlert13(String esAlert13) {
		this.esAlert13 = esAlert13;
	}

	public String getEsAlert14() {
		return this.esAlert14;
	}

	public void setEsAlert14(String esAlert14) {
		this.esAlert14 = esAlert14;
	}

	public String getEsAlert15() {
		return this.esAlert15;
	}

	public void setEsAlert15(String esAlert15) {
		this.esAlert15 = esAlert15;
	}

	public String getEsAlert16() {
		return this.esAlert16;
	}

	public void setEsAlert16(String esAlert16) {
		this.esAlert16 = esAlert16;
	}

	public String getEsAlert17() {
		return this.esAlert17;
	}

	public void setEsAlert17(String esAlert17) {
		this.esAlert17 = esAlert17;
	}

	public String getEsAlert18() {
		return this.esAlert18;
	}

	public void setEsAlert18(String esAlert18) {
		this.esAlert18 = esAlert18;
	}

	public String getEsAlert19() {
		return this.esAlert19;
	}

	public void setEsAlert19(String esAlert19) {
		this.esAlert19 = esAlert19;
	}

	public String getEsAlert20() {
		return this.esAlert20;
	}

	public void setEsAlert20(String esAlert20) {
		this.esAlert20 = esAlert20;
	}

	public String getEsAlert21() {
		return this.esAlert21;
	}

	public void setEsAlert21(String esAlert21) {
		this.esAlert21 = esAlert21;
	}

	public String getEsAlert22() {
		return this.esAlert22;
	}

	public void setEsAlert22(String esAlert22) {
		this.esAlert22 = esAlert22;
	}

	public String getEsAlert23() {
		return this.esAlert23;
	}

	public void setEsAlert23(String esAlert23) {
		this.esAlert23 = esAlert23;
	}

	public String getEsAlert24() {
		return this.esAlert24;
	}

	public void setEsAlert24(String esAlert24) {
		this.esAlert24 = esAlert24;
	}

	public String getEsAlert25() {
		return this.esAlert25;
	}

	public void setEsAlert25(String esAlert25) {
		this.esAlert25 = esAlert25;
	}

	public String getEsHistoAlert01() {
		return this.esHistoAlert01;
	}

	public void setEsHistoAlert01(String esHistoAlert01) {
		this.esHistoAlert01 = esHistoAlert01;
	}

	public String getEsHistoAlert02() {
		return this.esHistoAlert02;
	}

	public void setEsHistoAlert02(String esHistoAlert02) {
		this.esHistoAlert02 = esHistoAlert02;
	}

	public String getEsHistoAlert03() {
		return this.esHistoAlert03;
	}

	public void setEsHistoAlert03(String esHistoAlert03) {
		this.esHistoAlert03 = esHistoAlert03;
	}

	public String getEsHistoAlert04() {
		return this.esHistoAlert04;
	}

	public void setEsHistoAlert04(String esHistoAlert04) {
		this.esHistoAlert04 = esHistoAlert04;
	}

	public String getEsHistoAlert05() {
		return this.esHistoAlert05;
	}

	public void setEsHistoAlert05(String esHistoAlert05) {
		this.esHistoAlert05 = esHistoAlert05;
	}

	public String getEsHistoAlert06() {
		return this.esHistoAlert06;
	}

	public void setEsHistoAlert06(String esHistoAlert06) {
		this.esHistoAlert06 = esHistoAlert06;
	}

	public String getEsHistoAlert07() {
		return this.esHistoAlert07;
	}

	public void setEsHistoAlert07(String esHistoAlert07) {
		this.esHistoAlert07 = esHistoAlert07;
	}

	public String getEsHistoAlert08() {
		return this.esHistoAlert08;
	}

	public void setEsHistoAlert08(String esHistoAlert08) {
		this.esHistoAlert08 = esHistoAlert08;
	}

	public String getEsHistoAlert09() {
		return this.esHistoAlert09;
	}

	public void setEsHistoAlert09(String esHistoAlert09) {
		this.esHistoAlert09 = esHistoAlert09;
	}

	public String getEsHistoAlert10() {
		return this.esHistoAlert10;
	}

	public void setEsHistoAlert10(String esHistoAlert10) {
		this.esHistoAlert10 = esHistoAlert10;
	}

	public String getEsHistoAlert11() {
		return this.esHistoAlert11;
	}

	public void setEsHistoAlert11(String esHistoAlert11) {
		this.esHistoAlert11 = esHistoAlert11;
	}

	public String getEsHistoAlert12() {
		return this.esHistoAlert12;
	}

	public void setEsHistoAlert12(String esHistoAlert12) {
		this.esHistoAlert12 = esHistoAlert12;
	}

	public String getEsHistoAlert13() {
		return this.esHistoAlert13;
	}

	public void setEsHistoAlert13(String esHistoAlert13) {
		this.esHistoAlert13 = esHistoAlert13;
	}

	public String getEsHistoAlert14() {
		return this.esHistoAlert14;
	}

	public void setEsHistoAlert14(String esHistoAlert14) {
		this.esHistoAlert14 = esHistoAlert14;
	}

	public String getEsHistoAlert15() {
		return this.esHistoAlert15;
	}

	public void setEsHistoAlert15(String esHistoAlert15) {
		this.esHistoAlert15 = esHistoAlert15;
	}

	public String getEsHistoAlert16() {
		return this.esHistoAlert16;
	}

	public void setEsHistoAlert16(String esHistoAlert16) {
		this.esHistoAlert16 = esHistoAlert16;
	}

	public String getEsHistoAlert17() {
		return this.esHistoAlert17;
	}

	public void setEsHistoAlert17(String esHistoAlert17) {
		this.esHistoAlert17 = esHistoAlert17;
	}

	public String getEsHistoAlert18() {
		return this.esHistoAlert18;
	}

	public void setEsHistoAlert18(String esHistoAlert18) {
		this.esHistoAlert18 = esHistoAlert18;
	}

	public String getEsHistoAlert19() {
		return this.esHistoAlert19;
	}

	public void setEsHistoAlert19(String esHistoAlert19) {
		this.esHistoAlert19 = esHistoAlert19;
	}

	public String getEsHistoAlert20() {
		return this.esHistoAlert20;
	}

	public void setEsHistoAlert20(String esHistoAlert20) {
		this.esHistoAlert20 = esHistoAlert20;
	}

	public String getEsHistoAlert21() {
		return this.esHistoAlert21;
	}

	public void setEsHistoAlert21(String esHistoAlert21) {
		this.esHistoAlert21 = esHistoAlert21;
	}

	public String getEsHistoAlert22() {
		return this.esHistoAlert22;
	}

	public void setEsHistoAlert22(String esHistoAlert22) {
		this.esHistoAlert22 = esHistoAlert22;
	}

	public String getEsHistoAlert23() {
		return this.esHistoAlert23;
	}

	public void setEsHistoAlert23(String esHistoAlert23) {
		this.esHistoAlert23 = esHistoAlert23;
	}

	public String getEsHistoAlert24() {
		return this.esHistoAlert24;
	}

	public void setEsHistoAlert24(String esHistoAlert24) {
		this.esHistoAlert24 = esHistoAlert24;
	}

	public String getEsHistoAlert25() {
		return this.esHistoAlert25;
	}

	public void setEsHistoAlert25(String esHistoAlert25) {
		this.esHistoAlert25 = esHistoAlert25;
	}

	public String getEsAlertFlag01() {
		return this.esAlertFlag01;
	}

	public void setEsAlertFlag01(String esAlertFlag01) {
		this.esAlertFlag01 = esAlertFlag01;
	}

	public String getEsAlertFlag02() {
		return this.esAlertFlag02;
	}

	public void setEsAlertFlag02(String esAlertFlag02) {
		this.esAlertFlag02 = esAlertFlag02;
	}

	public String getEsAlertFlag03() {
		return this.esAlertFlag03;
	}

	public void setEsAlertFlag03(String esAlertFlag03) {
		this.esAlertFlag03 = esAlertFlag03;
	}

	public String getEsAlertFlag04() {
		return this.esAlertFlag04;
	}

	public void setEsAlertFlag04(String esAlertFlag04) {
		this.esAlertFlag04 = esAlertFlag04;
	}

	public String getEsAlertFlag05() {
		return this.esAlertFlag05;
	}

	public void setEsAlertFlag05(String esAlertFlag05) {
		this.esAlertFlag05 = esAlertFlag05;
	}

	public String getEsAlertFlag06() {
		return this.esAlertFlag06;
	}

	public void setEsAlertFlag06(String esAlertFlag06) {
		this.esAlertFlag06 = esAlertFlag06;
	}

	public String getEsAlertFlag07() {
		return this.esAlertFlag07;
	}

	public void setEsAlertFlag07(String esAlertFlag07) {
		this.esAlertFlag07 = esAlertFlag07;
	}

	public String getEsAlertFlag08() {
		return this.esAlertFlag08;
	}

	public void setEsAlertFlag08(String esAlertFlag08) {
		this.esAlertFlag08 = esAlertFlag08;
	}

	public String getEsAlertFlag09() {
		return this.esAlertFlag09;
	}

	public void setEsAlertFlag09(String esAlertFlag09) {
		this.esAlertFlag09 = esAlertFlag09;
	}

	public String getEsAlertFlag10() {
		return this.esAlertFlag10;
	}

	public void setEsAlertFlag10(String esAlertFlag10) {
		this.esAlertFlag10 = esAlertFlag10;
	}

	public String getEsAlertFlag11() {
		return this.esAlertFlag11;
	}

	public void setEsAlertFlag11(String esAlertFlag11) {
		this.esAlertFlag11 = esAlertFlag11;
	}

	public String getEsAlertFlag12() {
		return this.esAlertFlag12;
	}

	public void setEsAlertFlag12(String esAlertFlag12) {
		this.esAlertFlag12 = esAlertFlag12;
	}

	public String getEsAlertFlag13() {
		return this.esAlertFlag13;
	}

	public void setEsAlertFlag13(String esAlertFlag13) {
		this.esAlertFlag13 = esAlertFlag13;
	}

	public String getEsAlertFlag14() {
		return this.esAlertFlag14;
	}

	public void setEsAlertFlag14(String esAlertFlag14) {
		this.esAlertFlag14 = esAlertFlag14;
	}

	public String getEsAlertFlag15() {
		return this.esAlertFlag15;
	}

	public void setEsAlertFlag15(String esAlertFlag15) {
		this.esAlertFlag15 = esAlertFlag15;
	}

	public String getEsAlertFlag16() {
		return this.esAlertFlag16;
	}

	public void setEsAlertFlag16(String esAlertFlag16) {
		this.esAlertFlag16 = esAlertFlag16;
	}

	public String getEsAlertFlag17() {
		return this.esAlertFlag17;
	}

	public void setEsAlertFlag17(String esAlertFlag17) {
		this.esAlertFlag17 = esAlertFlag17;
	}

	public String getEsAlertFlag18() {
		return this.esAlertFlag18;
	}

	public void setEsAlertFlag18(String esAlertFlag18) {
		this.esAlertFlag18 = esAlertFlag18;
	}

	public String getEsAlertFlag19() {
		return this.esAlertFlag19;
	}

	public void setEsAlertFlag19(String esAlertFlag19) {
		this.esAlertFlag19 = esAlertFlag19;
	}

	public String getEsAlertFlag20() {
		return this.esAlertFlag20;
	}

	public void setEsAlertFlag20(String esAlertFlag20) {
		this.esAlertFlag20 = esAlertFlag20;
	}

	public String getEsAlertFlag21() {
		return this.esAlertFlag21;
	}

	public void setEsAlertFlag21(String esAlertFlag21) {
		this.esAlertFlag21 = esAlertFlag21;
	}

	public String getEsAlertFlag22() {
		return this.esAlertFlag22;
	}

	public void setEsAlertFlag22(String esAlertFlag22) {
		this.esAlertFlag22 = esAlertFlag22;
	}

	public String getEsAlertFlag23() {
		return this.esAlertFlag23;
	}

	public void setEsAlertFlag23(String esAlertFlag23) {
		this.esAlertFlag23 = esAlertFlag23;
	}

	public String getEsAlertFlag24() {
		return this.esAlertFlag24;
	}

	public void setEsAlertFlag24(String esAlertFlag24) {
		this.esAlertFlag24 = esAlertFlag24;
	}

	public String getEsAlertFlag25() {
		return this.esAlertFlag25;
	}

	public void setEsAlertFlag25(String esAlertFlag25) {
		this.esAlertFlag25 = esAlertFlag25;
	}

	public String getEsHistoAlertFlag01() {
		return this.esHistoAlertFlag01;
	}

	public void setEsHistoAlertFlag01(String esHistoAlertFlag01) {
		this.esHistoAlertFlag01 = esHistoAlertFlag01;
	}

	public String getEsHistoAlertFlag02() {
		return this.esHistoAlertFlag02;
	}

	public void setEsHistoAlertFlag02(String esHistoAlertFlag02) {
		this.esHistoAlertFlag02 = esHistoAlertFlag02;
	}

	public String getEsHistoAlertFlag03() {
		return this.esHistoAlertFlag03;
	}

	public void setEsHistoAlertFlag03(String esHistoAlertFlag03) {
		this.esHistoAlertFlag03 = esHistoAlertFlag03;
	}

	public String getEsHistoAlertFlag04() {
		return this.esHistoAlertFlag04;
	}

	public void setEsHistoAlertFlag04(String esHistoAlertFlag04) {
		this.esHistoAlertFlag04 = esHistoAlertFlag04;
	}

	public String getEsHistoAlertFlag05() {
		return this.esHistoAlertFlag05;
	}

	public void setEsHistoAlertFlag05(String esHistoAlertFlag05) {
		this.esHistoAlertFlag05 = esHistoAlertFlag05;
	}

	public String getEsHistoAlertFlag06() {
		return this.esHistoAlertFlag06;
	}

	public void setEsHistoAlertFlag06(String esHistoAlertFlag06) {
		this.esHistoAlertFlag06 = esHistoAlertFlag06;
	}

	public String getEsHistoAlertFlag07() {
		return this.esHistoAlertFlag07;
	}

	public void setEsHistoAlertFlag07(String esHistoAlertFlag07) {
		this.esHistoAlertFlag07 = esHistoAlertFlag07;
	}

	public String getEsHistoAlertFlag08() {
		return this.esHistoAlertFlag08;
	}

	public void setEsHistoAlertFlag08(String esHistoAlertFlag08) {
		this.esHistoAlertFlag08 = esHistoAlertFlag08;
	}

	public String getEsHistoAlertFlag09() {
		return this.esHistoAlertFlag09;
	}

	public void setEsHistoAlertFlag09(String esHistoAlertFlag09) {
		this.esHistoAlertFlag09 = esHistoAlertFlag09;
	}

	public String getEsHistoAlertFlag10() {
		return this.esHistoAlertFlag10;
	}

	public void setEsHistoAlertFlag10(String esHistoAlertFlag10) {
		this.esHistoAlertFlag10 = esHistoAlertFlag10;
	}

	public String getEsHistoAlertFlag11() {
		return this.esHistoAlertFlag11;
	}

	public void setEsHistoAlertFlag11(String esHistoAlertFlag11) {
		this.esHistoAlertFlag11 = esHistoAlertFlag11;
	}

	public String getEsHistoAlertFlag12() {
		return this.esHistoAlertFlag12;
	}

	public void setEsHistoAlertFlag12(String esHistoAlertFlag12) {
		this.esHistoAlertFlag12 = esHistoAlertFlag12;
	}

	public String getEsHistoAlertFlag13() {
		return this.esHistoAlertFlag13;
	}

	public void setEsHistoAlertFlag13(String esHistoAlertFlag13) {
		this.esHistoAlertFlag13 = esHistoAlertFlag13;
	}

	public String getEsHistoAlertFlag14() {
		return this.esHistoAlertFlag14;
	}

	public void setEsHistoAlertFlag14(String esHistoAlertFlag14) {
		this.esHistoAlertFlag14 = esHistoAlertFlag14;
	}

	public String getEsHistoAlertFlag15() {
		return this.esHistoAlertFlag15;
	}

	public void setEsHistoAlertFlag15(String esHistoAlertFlag15) {
		this.esHistoAlertFlag15 = esHistoAlertFlag15;
	}

	public String getEsHistoAlertFlag16() {
		return this.esHistoAlertFlag16;
	}

	public void setEsHistoAlertFlag16(String esHistoAlertFlag16) {
		this.esHistoAlertFlag16 = esHistoAlertFlag16;
	}

	public String getEsHistoAlertFlag17() {
		return this.esHistoAlertFlag17;
	}

	public void setEsHistoAlertFlag17(String esHistoAlertFlag17) {
		this.esHistoAlertFlag17 = esHistoAlertFlag17;
	}

	public String getEsHistoAlertFlag18() {
		return this.esHistoAlertFlag18;
	}

	public void setEsHistoAlertFlag18(String esHistoAlertFlag18) {
		this.esHistoAlertFlag18 = esHistoAlertFlag18;
	}

	public String getEsHistoAlertFlag19() {
		return this.esHistoAlertFlag19;
	}

	public void setEsHistoAlertFlag19(String esHistoAlertFlag19) {
		this.esHistoAlertFlag19 = esHistoAlertFlag19;
	}

	public String getEsHistoAlertFlag20() {
		return this.esHistoAlertFlag20;
	}

	public void setEsHistoAlertFlag20(String esHistoAlertFlag20) {
		this.esHistoAlertFlag20 = esHistoAlertFlag20;
	}

	public String getEsHistoAlertFlag21() {
		return this.esHistoAlertFlag21;
	}

	public void setEsHistoAlertFlag21(String esHistoAlertFlag21) {
		this.esHistoAlertFlag21 = esHistoAlertFlag21;
	}

	public String getEsHistoAlertFlag22() {
		return this.esHistoAlertFlag22;
	}

	public void setEsHistoAlertFlag22(String esHistoAlertFlag22) {
		this.esHistoAlertFlag22 = esHistoAlertFlag22;
	}

	public String getEsHistoAlertFlag23() {
		return this.esHistoAlertFlag23;
	}

	public void setEsHistoAlertFlag23(String esHistoAlertFlag23) {
		this.esHistoAlertFlag23 = esHistoAlertFlag23;
	}

	public String getEsHistoAlertFlag24() {
		return this.esHistoAlertFlag24;
	}

	public void setEsHistoAlertFlag24(String esHistoAlertFlag24) {
		this.esHistoAlertFlag24 = esHistoAlertFlag24;
	}

	public String getEsHistoAlertFlag25() {
		return this.esHistoAlertFlag25;
	}

	public void setEsHistoAlertFlag25(String esHistoAlertFlag25) {
		this.esHistoAlertFlag25 = esHistoAlertFlag25;
	}

	public String getEsCtrl01() {
		return this.esCtrl01;
	}

	public void setEsCtrl01(String esCtrl01) {
		this.esCtrl01 = esCtrl01;
	}

	public String getEsCtrl02() {
		return this.esCtrl02;
	}

	public void setEsCtrl02(String esCtrl02) {
		this.esCtrl02 = esCtrl02;
	}

	public String getEsCtrl03() {
		return this.esCtrl03;
	}

	public void setEsCtrl03(String esCtrl03) {
		this.esCtrl03 = esCtrl03;
	}

	public String getEsCtrl04() {
		return this.esCtrl04;
	}

	public void setEsCtrl04(String esCtrl04) {
		this.esCtrl04 = esCtrl04;
	}

	public String getEsCtrl05() {
		return this.esCtrl05;
	}

	public void setEsCtrl05(String esCtrl05) {
		this.esCtrl05 = esCtrl05;
	}

	public String getEsCtrl06() {
		return this.esCtrl06;
	}

	public void setEsCtrl06(String esCtrl06) {
		this.esCtrl06 = esCtrl06;
	}

	public String getEsCtrl07() {
		return this.esCtrl07;
	}

	public void setEsCtrl07(String esCtrl07) {
		this.esCtrl07 = esCtrl07;
	}

	public String getEsCtrl08() {
		return this.esCtrl08;
	}

	public void setEsCtrl08(String esCtrl08) {
		this.esCtrl08 = esCtrl08;
	}

	public String getEsCtrl09() {
		return this.esCtrl09;
	}

	public void setEsCtrl09(String esCtrl09) {
		this.esCtrl09 = esCtrl09;
	}

	public String getEsCtrl10() {
		return this.esCtrl10;
	}

	public void setEsCtrl10(String esCtrl10) {
		this.esCtrl10 = esCtrl10;
	}

	public String getEsCtrl11() {
		return this.esCtrl11;
	}

	public void setEsCtrl11(String esCtrl11) {
		this.esCtrl11 = esCtrl11;
	}

	public String getEsCtrl12() {
		return this.esCtrl12;
	}

	public void setEsCtrl12(String esCtrl12) {
		this.esCtrl12 = esCtrl12;
	}

	public String getEsCtrl13() {
		return this.esCtrl13;
	}

	public void setEsCtrl13(String esCtrl13) {
		this.esCtrl13 = esCtrl13;
	}

	public String getEsCtrl14() {
		return this.esCtrl14;
	}

	public void setEsCtrl14(String esCtrl14) {
		this.esCtrl14 = esCtrl14;
	}

	public String getEsCtrl15() {
		return this.esCtrl15;
	}

	public void setEsCtrl15(String esCtrl15) {
		this.esCtrl15 = esCtrl15;
	}

	public String getEsCtrl16() {
		return this.esCtrl16;
	}

	public void setEsCtrl16(String esCtrl16) {
		this.esCtrl16 = esCtrl16;
	}

	public String getEsCtrl17() {
		return this.esCtrl17;
	}

	public void setEsCtrl17(String esCtrl17) {
		this.esCtrl17 = esCtrl17;
	}

	public String getEsCtrl18() {
		return this.esCtrl18;
	}

	public void setEsCtrl18(String esCtrl18) {
		this.esCtrl18 = esCtrl18;
	}

	public String getEsCtrl19() {
		return this.esCtrl19;
	}

	public void setEsCtrl19(String esCtrl19) {
		this.esCtrl19 = esCtrl19;
	}

	public String getEsCtrl20() {
		return this.esCtrl20;
	}

	public void setEsCtrl20(String esCtrl20) {
		this.esCtrl20 = esCtrl20;
	}

	public String getEsCtrl21() {
		return this.esCtrl21;
	}

	public void setEsCtrl21(String esCtrl21) {
		this.esCtrl21 = esCtrl21;
	}

	public String getEsCtrl22() {
		return this.esCtrl22;
	}

	public void setEsCtrl22(String esCtrl22) {
		this.esCtrl22 = esCtrl22;
	}

	public String getEsCtrl23() {
		return this.esCtrl23;
	}

	public void setEsCtrl23(String esCtrl23) {
		this.esCtrl23 = esCtrl23;
	}

	public String getEsCtrl24() {
		return this.esCtrl24;
	}

	public void setEsCtrl24(String esCtrl24) {
		this.esCtrl24 = esCtrl24;
	}

	public String getEsCtrl25() {
		return this.esCtrl25;
	}

	public void setEsCtrl25(String esCtrl25) {
		this.esCtrl25 = esCtrl25;
	}

	public String getEsHistoCtrl01() {
		return this.esHistoCtrl01;
	}

	public void setEsHistoCtrl01(String esHistoCtrl01) {
		this.esHistoCtrl01 = esHistoCtrl01;
	}

	public String getEsHistoCtrl02() {
		return this.esHistoCtrl02;
	}

	public void setEsHistoCtrl02(String esHistoCtrl02) {
		this.esHistoCtrl02 = esHistoCtrl02;
	}

	public String getEsHistoCtrl03() {
		return this.esHistoCtrl03;
	}

	public void setEsHistoCtrl03(String esHistoCtrl03) {
		this.esHistoCtrl03 = esHistoCtrl03;
	}

	public String getEsHistoCtrl04() {
		return this.esHistoCtrl04;
	}

	public void setEsHistoCtrl04(String esHistoCtrl04) {
		this.esHistoCtrl04 = esHistoCtrl04;
	}

	public String getEsHistoCtrl05() {
		return this.esHistoCtrl05;
	}

	public void setEsHistoCtrl05(String esHistoCtrl05) {
		this.esHistoCtrl05 = esHistoCtrl05;
	}

	public String getEsHistoCtrl06() {
		return this.esHistoCtrl06;
	}

	public void setEsHistoCtrl06(String esHistoCtrl06) {
		this.esHistoCtrl06 = esHistoCtrl06;
	}

	public String getEsHistoCtrl07() {
		return this.esHistoCtrl07;
	}

	public void setEsHistoCtrl07(String esHistoCtrl07) {
		this.esHistoCtrl07 = esHistoCtrl07;
	}

	public String getEsHistoCtrl08() {
		return this.esHistoCtrl08;
	}

	public void setEsHistoCtrl08(String esHistoCtrl08) {
		this.esHistoCtrl08 = esHistoCtrl08;
	}

	public String getEsHistoCtrl09() {
		return this.esHistoCtrl09;
	}

	public void setEsHistoCtrl09(String esHistoCtrl09) {
		this.esHistoCtrl09 = esHistoCtrl09;
	}

	public String getEsHistoCtrl10() {
		return this.esHistoCtrl10;
	}

	public void setEsHistoCtrl10(String esHistoCtrl10) {
		this.esHistoCtrl10 = esHistoCtrl10;
	}

	public String getEsHistoCtrl11() {
		return this.esHistoCtrl11;
	}

	public void setEsHistoCtrl11(String esHistoCtrl11) {
		this.esHistoCtrl11 = esHistoCtrl11;
	}

	public String getEsHistoCtrl12() {
		return this.esHistoCtrl12;
	}

	public void setEsHistoCtrl12(String esHistoCtrl12) {
		this.esHistoCtrl12 = esHistoCtrl12;
	}

	public String getEsHistoCtrl13() {
		return this.esHistoCtrl13;
	}

	public void setEsHistoCtrl13(String esHistoCtrl13) {
		this.esHistoCtrl13 = esHistoCtrl13;
	}

	public String getEsHistoCtrl14() {
		return this.esHistoCtrl14;
	}

	public void setEsHistoCtrl14(String esHistoCtrl14) {
		this.esHistoCtrl14 = esHistoCtrl14;
	}

	public String getEsHistoCtrl15() {
		return this.esHistoCtrl15;
	}

	public void setEsHistoCtrl15(String esHistoCtrl15) {
		this.esHistoCtrl15 = esHistoCtrl15;
	}

	public String getEsHistoCtrl16() {
		return this.esHistoCtrl16;
	}

	public void setEsHistoCtrl16(String esHistoCtrl16) {
		this.esHistoCtrl16 = esHistoCtrl16;
	}

	public String getEsHistoCtrl17() {
		return this.esHistoCtrl17;
	}

	public void setEsHistoCtrl17(String esHistoCtrl17) {
		this.esHistoCtrl17 = esHistoCtrl17;
	}

	public String getEsHistoCtrl18() {
		return this.esHistoCtrl18;
	}

	public void setEsHistoCtrl18(String esHistoCtrl18) {
		this.esHistoCtrl18 = esHistoCtrl18;
	}

	public String getEsHistoCtrl19() {
		return this.esHistoCtrl19;
	}

	public void setEsHistoCtrl19(String esHistoCtrl19) {
		this.esHistoCtrl19 = esHistoCtrl19;
	}

	public String getEsHistoCtrl20() {
		return this.esHistoCtrl20;
	}

	public void setEsHistoCtrl20(String esHistoCtrl20) {
		this.esHistoCtrl20 = esHistoCtrl20;
	}

	public String getEsHistoCtrl21() {
		return this.esHistoCtrl21;
	}

	public void setEsHistoCtrl21(String esHistoCtrl21) {
		this.esHistoCtrl21 = esHistoCtrl21;
	}

	public String getEsHistoCtrl22() {
		return this.esHistoCtrl22;
	}

	public void setEsHistoCtrl22(String esHistoCtrl22) {
		this.esHistoCtrl22 = esHistoCtrl22;
	}

	public String getEsHistoCtrl23() {
		return this.esHistoCtrl23;
	}

	public void setEsHistoCtrl23(String esHistoCtrl23) {
		this.esHistoCtrl23 = esHistoCtrl23;
	}

	public String getEsHistoCtrl24() {
		return this.esHistoCtrl24;
	}

	public void setEsHistoCtrl24(String esHistoCtrl24) {
		this.esHistoCtrl24 = esHistoCtrl24;
	}

	public String getEsHistoCtrl25() {
		return this.esHistoCtrl25;
	}

	public void setEsHistoCtrl25(String esHistoCtrl25) {
		this.esHistoCtrl25 = esHistoCtrl25;
	}

	public String getEsCtrlFlag01() {
		return this.esCtrlFlag01;
	}

	public void setEsCtrlFlag01(String esCtrlFlag01) {
		this.esCtrlFlag01 = esCtrlFlag01;
	}

	public String getEsCtrlFlag02() {
		return this.esCtrlFlag02;
	}

	public void setEsCtrlFlag02(String esCtrlFlag02) {
		this.esCtrlFlag02 = esCtrlFlag02;
	}

	public String getEsCtrlFlag03() {
		return this.esCtrlFlag03;
	}

	public void setEsCtrlFlag03(String esCtrlFlag03) {
		this.esCtrlFlag03 = esCtrlFlag03;
	}

	public String getEsCtrlFlag04() {
		return this.esCtrlFlag04;
	}

	public void setEsCtrlFlag04(String esCtrlFlag04) {
		this.esCtrlFlag04 = esCtrlFlag04;
	}

	public String getEsCtrlFlag05() {
		return this.esCtrlFlag05;
	}

	public void setEsCtrlFlag05(String esCtrlFlag05) {
		this.esCtrlFlag05 = esCtrlFlag05;
	}

	public String getEsCtrlFlag06() {
		return this.esCtrlFlag06;
	}

	public void setEsCtrlFlag06(String esCtrlFlag06) {
		this.esCtrlFlag06 = esCtrlFlag06;
	}

	public String getEsCtrlFlag07() {
		return this.esCtrlFlag07;
	}

	public void setEsCtrlFlag07(String esCtrlFlag07) {
		this.esCtrlFlag07 = esCtrlFlag07;
	}

	public String getEsCtrlFlag08() {
		return this.esCtrlFlag08;
	}

	public void setEsCtrlFlag08(String esCtrlFlag08) {
		this.esCtrlFlag08 = esCtrlFlag08;
	}

	public String getEsCtrlFlag09() {
		return this.esCtrlFlag09;
	}

	public void setEsCtrlFlag09(String esCtrlFlag09) {
		this.esCtrlFlag09 = esCtrlFlag09;
	}

	public String getEsCtrlFlag10() {
		return this.esCtrlFlag10;
	}

	public void setEsCtrlFlag10(String esCtrlFlag10) {
		this.esCtrlFlag10 = esCtrlFlag10;
	}

	public String getEsCtrlFlag11() {
		return this.esCtrlFlag11;
	}

	public void setEsCtrlFlag11(String esCtrlFlag11) {
		this.esCtrlFlag11 = esCtrlFlag11;
	}

	public String getEsCtrlFlag12() {
		return this.esCtrlFlag12;
	}

	public void setEsCtrlFlag12(String esCtrlFlag12) {
		this.esCtrlFlag12 = esCtrlFlag12;
	}

	public String getEsCtrlFlag13() {
		return this.esCtrlFlag13;
	}

	public void setEsCtrlFlag13(String esCtrlFlag13) {
		this.esCtrlFlag13 = esCtrlFlag13;
	}

	public String getEsCtrlFlag14() {
		return this.esCtrlFlag14;
	}

	public void setEsCtrlFlag14(String esCtrlFlag14) {
		this.esCtrlFlag14 = esCtrlFlag14;
	}

	public String getEsCtrlFlag15() {
		return this.esCtrlFlag15;
	}

	public void setEsCtrlFlag15(String esCtrlFlag15) {
		this.esCtrlFlag15 = esCtrlFlag15;
	}

	public String getEsCtrlFlag16() {
		return this.esCtrlFlag16;
	}

	public void setEsCtrlFlag16(String esCtrlFlag16) {
		this.esCtrlFlag16 = esCtrlFlag16;
	}

	public String getEsCtrlFlag17() {
		return this.esCtrlFlag17;
	}

	public void setEsCtrlFlag17(String esCtrlFlag17) {
		this.esCtrlFlag17 = esCtrlFlag17;
	}

	public String getEsCtrlFlag18() {
		return this.esCtrlFlag18;
	}

	public void setEsCtrlFlag18(String esCtrlFlag18) {
		this.esCtrlFlag18 = esCtrlFlag18;
	}

	public String getEsCtrlFlag19() {
		return this.esCtrlFlag19;
	}

	public void setEsCtrlFlag19(String esCtrlFlag19) {
		this.esCtrlFlag19 = esCtrlFlag19;
	}

	public String getEsCtrlFlag20() {
		return this.esCtrlFlag20;
	}

	public void setEsCtrlFlag20(String esCtrlFlag20) {
		this.esCtrlFlag20 = esCtrlFlag20;
	}

	public String getEsCtrlFlag21() {
		return this.esCtrlFlag21;
	}

	public void setEsCtrlFlag21(String esCtrlFlag21) {
		this.esCtrlFlag21 = esCtrlFlag21;
	}

	public String getEsCtrlFlag22() {
		return this.esCtrlFlag22;
	}

	public void setEsCtrlFlag22(String esCtrlFlag22) {
		this.esCtrlFlag22 = esCtrlFlag22;
	}

	public String getEsCtrlFlag23() {
		return this.esCtrlFlag23;
	}

	public void setEsCtrlFlag23(String esCtrlFlag23) {
		this.esCtrlFlag23 = esCtrlFlag23;
	}

	public String getEsCtrlFlag24() {
		return this.esCtrlFlag24;
	}

	public void setEsCtrlFlag24(String esCtrlFlag24) {
		this.esCtrlFlag24 = esCtrlFlag24;
	}

	public String getEsCtrlFlag25() {
		return this.esCtrlFlag25;
	}

	public void setEsCtrlFlag25(String esCtrlFlag25) {
		this.esCtrlFlag25 = esCtrlFlag25;
	}

	public String getEsHistoCtrlFlag01() {
		return this.esHistoCtrlFlag01;
	}

	public void setEsHistoCtrlFlag01(String esHistoCtrlFlag01) {
		this.esHistoCtrlFlag01 = esHistoCtrlFlag01;
	}

	public String getEsHistoCtrlFlag02() {
		return this.esHistoCtrlFlag02;
	}

	public void setEsHistoCtrlFlag02(String esHistoCtrlFlag02) {
		this.esHistoCtrlFlag02 = esHistoCtrlFlag02;
	}

	public String getEsHistoCtrlFlag03() {
		return this.esHistoCtrlFlag03;
	}

	public void setEsHistoCtrlFlag03(String esHistoCtrlFlag03) {
		this.esHistoCtrlFlag03 = esHistoCtrlFlag03;
	}

	public String getEsHistoCtrlFlag04() {
		return this.esHistoCtrlFlag04;
	}

	public void setEsHistoCtrlFlag04(String esHistoCtrlFlag04) {
		this.esHistoCtrlFlag04 = esHistoCtrlFlag04;
	}

	public String getEsHistoCtrlFlag05() {
		return this.esHistoCtrlFlag05;
	}

	public void setEsHistoCtrlFlag05(String esHistoCtrlFlag05) {
		this.esHistoCtrlFlag05 = esHistoCtrlFlag05;
	}

	public String getEsHistoCtrlFlag06() {
		return this.esHistoCtrlFlag06;
	}

	public void setEsHistoCtrlFlag06(String esHistoCtrlFlag06) {
		this.esHistoCtrlFlag06 = esHistoCtrlFlag06;
	}

	public String getEsHistoCtrlFlag07() {
		return this.esHistoCtrlFlag07;
	}

	public void setEsHistoCtrlFlag07(String esHistoCtrlFlag07) {
		this.esHistoCtrlFlag07 = esHistoCtrlFlag07;
	}

	public String getEsHistoCtrlFlag08() {
		return this.esHistoCtrlFlag08;
	}

	public void setEsHistoCtrlFlag08(String esHistoCtrlFlag08) {
		this.esHistoCtrlFlag08 = esHistoCtrlFlag08;
	}

	public String getEsHistoCtrlFlag09() {
		return this.esHistoCtrlFlag09;
	}

	public void setEsHistoCtrlFlag09(String esHistoCtrlFlag09) {
		this.esHistoCtrlFlag09 = esHistoCtrlFlag09;
	}

	public String getEsHistoCtrlFlag10() {
		return this.esHistoCtrlFlag10;
	}

	public void setEsHistoCtrlFlag10(String esHistoCtrlFlag10) {
		this.esHistoCtrlFlag10 = esHistoCtrlFlag10;
	}

	public String getEsHistoCtrlFlag11() {
		return this.esHistoCtrlFlag11;
	}

	public void setEsHistoCtrlFlag11(String esHistoCtrlFlag11) {
		this.esHistoCtrlFlag11 = esHistoCtrlFlag11;
	}

	public String getEsHistoCtrlFlag12() {
		return this.esHistoCtrlFlag12;
	}

	public void setEsHistoCtrlFlag12(String esHistoCtrlFlag12) {
		this.esHistoCtrlFlag12 = esHistoCtrlFlag12;
	}

	public String getEsHistoCtrlFlag13() {
		return this.esHistoCtrlFlag13;
	}

	public void setEsHistoCtrlFlag13(String esHistoCtrlFlag13) {
		this.esHistoCtrlFlag13 = esHistoCtrlFlag13;
	}

	public String getEsHistoCtrlFlag14() {
		return this.esHistoCtrlFlag14;
	}

	public void setEsHistoCtrlFlag14(String esHistoCtrlFlag14) {
		this.esHistoCtrlFlag14 = esHistoCtrlFlag14;
	}

	public String getEsHistoCtrlFlag15() {
		return this.esHistoCtrlFlag15;
	}

	public void setEsHistoCtrlFlag15(String esHistoCtrlFlag15) {
		this.esHistoCtrlFlag15 = esHistoCtrlFlag15;
	}

	public String getEsHistoCtrlFlag16() {
		return this.esHistoCtrlFlag16;
	}

	public void setEsHistoCtrlFlag16(String esHistoCtrlFlag16) {
		this.esHistoCtrlFlag16 = esHistoCtrlFlag16;
	}

	public String getEsHistoCtrlFlag17() {
		return this.esHistoCtrlFlag17;
	}

	public void setEsHistoCtrlFlag17(String esHistoCtrlFlag17) {
		this.esHistoCtrlFlag17 = esHistoCtrlFlag17;
	}

	public String getEsHistoCtrlFlag18() {
		return this.esHistoCtrlFlag18;
	}

	public void setEsHistoCtrlFlag18(String esHistoCtrlFlag18) {
		this.esHistoCtrlFlag18 = esHistoCtrlFlag18;
	}

	public String getEsHistoCtrlFlag19() {
		return this.esHistoCtrlFlag19;
	}

	public void setEsHistoCtrlFlag19(String esHistoCtrlFlag19) {
		this.esHistoCtrlFlag19 = esHistoCtrlFlag19;
	}

	public String getEsHistoCtrlFlag20() {
		return this.esHistoCtrlFlag20;
	}

	public void setEsHistoCtrlFlag20(String esHistoCtrlFlag20) {
		this.esHistoCtrlFlag20 = esHistoCtrlFlag20;
	}

	public String getEsHistoCtrlFlag21() {
		return this.esHistoCtrlFlag21;
	}

	public void setEsHistoCtrlFlag21(String esHistoCtrlFlag21) {
		this.esHistoCtrlFlag21 = esHistoCtrlFlag21;
	}

	public String getEsHistoCtrlFlag22() {
		return this.esHistoCtrlFlag22;
	}

	public void setEsHistoCtrlFlag22(String esHistoCtrlFlag22) {
		this.esHistoCtrlFlag22 = esHistoCtrlFlag22;
	}

	public String getEsHistoCtrlFlag23() {
		return this.esHistoCtrlFlag23;
	}

	public void setEsHistoCtrlFlag23(String esHistoCtrlFlag23) {
		this.esHistoCtrlFlag23 = esHistoCtrlFlag23;
	}

	public String getEsHistoCtrlFlag24() {
		return this.esHistoCtrlFlag24;
	}

	public void setEsHistoCtrlFlag24(String esHistoCtrlFlag24) {
		this.esHistoCtrlFlag24 = esHistoCtrlFlag24;
	}

	public String getEsHistoCtrlFlag25() {
		return this.esHistoCtrlFlag25;
	}

	public void setEsHistoCtrlFlag25(String esHistoCtrlFlag25) {
		this.esHistoCtrlFlag25 = esHistoCtrlFlag25;
	}

	public String getEsAlertProof01() {
		return this.esAlertProof01;
	}

	public void setEsAlertProof01(String esAlertProof01) {
		this.esAlertProof01 = esAlertProof01;
	}

	public String getEsAlertProof02() {
		return this.esAlertProof02;
	}

	public void setEsAlertProof02(String esAlertProof02) {
		this.esAlertProof02 = esAlertProof02;
	}

	public String getEsAlertProof03() {
		return this.esAlertProof03;
	}

	public void setEsAlertProof03(String esAlertProof03) {
		this.esAlertProof03 = esAlertProof03;
	}

	public String getEsAlertProof04() {
		return this.esAlertProof04;
	}

	public void setEsAlertProof04(String esAlertProof04) {
		this.esAlertProof04 = esAlertProof04;
	}

	public String getEsAlertProof05() {
		return this.esAlertProof05;
	}

	public void setEsAlertProof05(String esAlertProof05) {
		this.esAlertProof05 = esAlertProof05;
	}

	public String getEsAlertProof06() {
		return this.esAlertProof06;
	}

	public void setEsAlertProof06(String esAlertProof06) {
		this.esAlertProof06 = esAlertProof06;
	}

	public String getEsAlertProof07() {
		return this.esAlertProof07;
	}

	public void setEsAlertProof07(String esAlertProof07) {
		this.esAlertProof07 = esAlertProof07;
	}

	public String getEsAlertProof08() {
		return this.esAlertProof08;
	}

	public void setEsAlertProof08(String esAlertProof08) {
		this.esAlertProof08 = esAlertProof08;
	}

	public String getEsAlertProof09() {
		return this.esAlertProof09;
	}

	public void setEsAlertProof09(String esAlertProof09) {
		this.esAlertProof09 = esAlertProof09;
	}

	public String getEsAlertProof10() {
		return this.esAlertProof10;
	}

	public void setEsAlertProof10(String esAlertProof10) {
		this.esAlertProof10 = esAlertProof10;
	}

	public String getEsAlertProof11() {
		return this.esAlertProof11;
	}

	public void setEsAlertProof11(String esAlertProof11) {
		this.esAlertProof11 = esAlertProof11;
	}

	public String getEsAlertProof12() {
		return this.esAlertProof12;
	}

	public void setEsAlertProof12(String esAlertProof12) {
		this.esAlertProof12 = esAlertProof12;
	}

	public String getEsAlertProof13() {
		return this.esAlertProof13;
	}

	public void setEsAlertProof13(String esAlertProof13) {
		this.esAlertProof13 = esAlertProof13;
	}

	public String getEsAlertProof14() {
		return this.esAlertProof14;
	}

	public void setEsAlertProof14(String esAlertProof14) {
		this.esAlertProof14 = esAlertProof14;
	}

	public String getEsAlertProof15() {
		return this.esAlertProof15;
	}

	public void setEsAlertProof15(String esAlertProof15) {
		this.esAlertProof15 = esAlertProof15;
	}

	public String getEsAlertProof16() {
		return this.esAlertProof16;
	}

	public void setEsAlertProof16(String esAlertProof16) {
		this.esAlertProof16 = esAlertProof16;
	}

	public String getEsAlertProof17() {
		return this.esAlertProof17;
	}

	public void setEsAlertProof17(String esAlertProof17) {
		this.esAlertProof17 = esAlertProof17;
	}

	public String getEsAlertProof18() {
		return this.esAlertProof18;
	}

	public void setEsAlertProof18(String esAlertProof18) {
		this.esAlertProof18 = esAlertProof18;
	}

	public String getEsAlertProof19() {
		return this.esAlertProof19;
	}

	public void setEsAlertProof19(String esAlertProof19) {
		this.esAlertProof19 = esAlertProof19;
	}

	public String getEsAlertProof20() {
		return this.esAlertProof20;
	}

	public void setEsAlertProof20(String esAlertProof20) {
		this.esAlertProof20 = esAlertProof20;
	}

	public String getEsAlertProof21() {
		return this.esAlertProof21;
	}

	public void setEsAlertProof21(String esAlertProof21) {
		this.esAlertProof21 = esAlertProof21;
	}

	public String getEsAlertProof22() {
		return this.esAlertProof22;
	}

	public void setEsAlertProof22(String esAlertProof22) {
		this.esAlertProof22 = esAlertProof22;
	}

	public String getEsAlertProof23() {
		return this.esAlertProof23;
	}

	public void setEsAlertProof23(String esAlertProof23) {
		this.esAlertProof23 = esAlertProof23;
	}

	public String getEsAlertProof24() {
		return this.esAlertProof24;
	}

	public void setEsAlertProof24(String esAlertProof24) {
		this.esAlertProof24 = esAlertProof24;
	}

	public String getEsAlertProof25() {
		return this.esAlertProof25;
	}

	public void setEsAlertProof25(String esAlertProof25) {
		this.esAlertProof25 = esAlertProof25;
	}

	public Date getLogDateTime() {
		return this.logDateTime;
	}

	public void setLogDateTime(Date logDateTime) {
		this.logDateTime = logDateTime;
	}

	public String getEsFraudFlag() {
		return this.esFraudFlag;
	}

	public void setEsFraudFlag(String esFraudFlag) {
		this.esFraudFlag = esFraudFlag;
	}

	public String getEsCardGradeDecision() {
		return this.esCardGradeDecision;
	}

	public void setEsCardGradeDecision(String esCardGradeDecision) {
		this.esCardGradeDecision = esCardGradeDecision;
	}

	public String getEsOrderFlag() {
		return esOrderFlag;
	}

	public void setEsOrderFlag(String esOrderFlag) {
		this.esOrderFlag = esOrderFlag;
	}

	public Long getEsCreditLimitPurch() {
		return esCreditLimitPurch;
	}

	public void setEsCreditLimitPurch(Long esCreditLimitPurch) {
		this.esCreditLimitPurch = esCreditLimitPurch;
	}

	public Long getEsCreditLoan() {
		return esCreditLoan;
	}

	public void setEsCreditLoan(Long esCreditLoan) {
		this.esCreditLoan = esCreditLoan;
	}

	public Long getEsCustTotalIncome() {
		return esCustTotalIncome;
	}

	public void setEsCustTotalIncome(Long esCustTotalIncome) {
		this.esCustTotalIncome = esCustTotalIncome;
	}

	public Long getEsCustTotalExpense() {
		return esCustTotalExpense;
	}

	public void setEsCustTotalExpense(Long esCustTotalExpense) {
		this.esCustTotalExpense = esCustTotalExpense;
	}

	public Long getEsNewProductType() {
		return esNewProductType;
	}

	public void setEsNewProductType(Long esNewProductType) {
		this.esNewProductType = esNewProductType;
	}

	public String getEsAdvice01() {
		return esAdvice01;
	}

	public void setEsAdvice01(String esAdvice01) {
		this.esAdvice01 = esAdvice01;
	}

	public String getEsAdvice02() {
		return esAdvice02;
	}

	public void setEsAdvice02(String esAdvice02) {
		this.esAdvice02 = esAdvice02;
	}

	public String getEsAdvice03() {
		return esAdvice03;
	}

	public void setEsAdvice03(String esAdvice03) {
		this.esAdvice03 = esAdvice03;
	}

	public String getEsAdvice04() {
		return esAdvice04;
	}

	public void setEsAdvice04(String esAdvice04) {
		this.esAdvice04 = esAdvice04;
	}

	public String getEsAdvice05() {
		return esAdvice05;
	}

	public void setEsAdvice05(String esAdvice05) {
		this.esAdvice05 = esAdvice05;
	}

	public String getEsAdvice06() {
		return esAdvice06;
	}

	public void setEsAdvice06(String esAdvice06) {
		this.esAdvice06 = esAdvice06;
	}

	public String getEsAdvice07() {
		return esAdvice07;
	}

	public void setEsAdvice07(String esAdvice07) {
		this.esAdvice07 = esAdvice07;
	}

	public String getEsAdvice08() {
		return esAdvice08;
	}

	public void setEsAdvice08(String esAdvice08) {
		this.esAdvice08 = esAdvice08;
	}

	public String getEsAdvice09() {
		return esAdvice09;
	}

	public void setEsAdvice09(String esAdvice09) {
		this.esAdvice09 = esAdvice09;
	}

	public String getEsAdvice10() {
		return esAdvice10;
	}

	public void setEsAdvice10(String esAdvice10) {
		this.esAdvice10 = esAdvice10;
	}

	public String getEsFeedback01() {
		return esFeedback01;
	}

	public void setEsFeedback01(String esFeedback01) {
		this.esFeedback01 = esFeedback01;
	}

	public String getEsFeedback02() {
		return esFeedback02;
	}

	public void setEsFeedback02(String esFeedback02) {
		this.esFeedback02 = esFeedback02;
	}

	public String getEsFeedback03() {
		return esFeedback03;
	}

	public void setEsFeedback03(String esFeedback03) {
		this.esFeedback03 = esFeedback03;
	}

	public String getEsFeedback04() {
		return esFeedback04;
	}

	public void setEsFeedback04(String esFeedback04) {
		this.esFeedback04 = esFeedback04;
	}

	public String getEsFeedback05() {
		return esFeedback05;
	}

	public void setEsFeedback05(String esFeedback05) {
		this.esFeedback05 = esFeedback05;
	}

	public String getEsFeedback06() {
		return esFeedback06;
	}

	public void setEsFeedback06(String esFeedback06) {
		this.esFeedback06 = esFeedback06;
	}

	public String getEsFeedback07() {
		return esFeedback07;
	}

	public void setEsFeedback07(String esFeedback07) {
		this.esFeedback07 = esFeedback07;
	}

	public String getEsFeedback08() {
		return esFeedback08;
	}

	public void setEsFeedback08(String esFeedback08) {
		this.esFeedback08 = esFeedback08;
	}

	public String getEsFeedback09() {
		return esFeedback09;
	}

	public void setEsFeedback09(String esFeedback09) {
		this.esFeedback09 = esFeedback09;
	}

	public String getEsFeedback10() {
		return esFeedback10;
	}

	public void setEsFeedback10(String esFeedback10) {
		this.esFeedback10 = esFeedback10;
	}

	public String getEsEmbosser1Flag() {
		return esEmbosser1Flag;
	}

	public void setEsEmbosser1Flag(String esEmbosser1Flag) {
		this.esEmbosser1Flag = esEmbosser1Flag;
	}

	public String getEsEmbosser2Flag() {
		return esEmbosser2Flag;
	}

	public void setEsEmbosser2Flag(String esEmbosser2Flag) {
		this.esEmbosser2Flag = esEmbosser2Flag;
	}

	public String getEsCollectable() {
		return esCollectable;
	}

	public void setEsCollectable(String esCollectable) {
		this.esCollectable = esCollectable;
	}

	public String getEsCDMType() {
		return esCDMType;
	}

	public void setEsCDMType(String esCDMType) {
		this.esCDMType = esCDMType;
	}

	public String getEsAccountFlag() {
		return esAccountFlag;
	}

	public void setEsAccountFlag(String esAccountFlag) {
		this.esAccountFlag = esAccountFlag;
	}

	public String getEsLoanFlag() {
		return esLoanFlag;
	}

	public void setEsLoanFlag(String esLoanFlag) {
		this.esLoanFlag = esLoanFlag;
	}

	public String getAutoLoanFlag() {
		return autoLoanFlag;
	}

	public void setAutoLoanFlag(String autoLoanFlag) {
		this.autoLoanFlag = autoLoanFlag;
	}

}