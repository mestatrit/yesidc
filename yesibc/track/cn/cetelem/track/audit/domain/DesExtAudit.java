package cn.cetelem.track.audit.domain;

import java.util.Date;

/**
 * DesExtAudit entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class DesExtAudit extends BaseAudit implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long logId;
	private String appId;
	private Date applicationDateTime;
	private String extFlagCallOrgan1;
	private String extFlagCallOrgan2;
	private String extFlagCallOrgan3;
	private String extFlagCallOrgan4;
	private Date extLatestInquiry;
	private Long extNbCardOrg;
	private Long extNbCardAcc;
	private Long extSumCardCl;
	private Long extTotOutstgCbal;
	private Long extNbLoanAcc;
	private Long extTotLoanCl;
	private Long extTotOutstgLbal;
	private Long extLoverdueAmt;
	private String extCardAccStatus;
	private Long extCardSchedMpAmt;
	private String extCardCurDelCyDue;
	private Long extCardAmtPdue;
	private String extCardUnp30days;
	private String extLoanAccStatus;
	private Long extLoanPaymCurMont;
	private Long extCurLoanDelTerm;
	private String extTotlDelTerm;
	private String extHlDelTerm;
	private String extOvdLp3160days;
	private String extOvdLp6190days;
	private String extOvdLp91180days;
	private String extOvdLp180days;
	private String extOvdLp30days;
	private Date extInquiryDate;
	private Long extNbInquiries;
	private String extCardUnp6190d;
	private String extCardUnp91180d;
	private String extCardUnp3160d;
	private String extCardUnp612m;
	private String extWstLoan12y;
	private Date extLatestReportUpdat;
	private Long extNbLoanOrg;
	private Long extNbQuaCardOrg;
	private Long extNbQuaCardAcc;
	private Long extSumQuaCardCl;
	private Long extTotQuaOutstgCbal;
	private Long extTotQuaOverdue180days;
	private String extNciicResult2;
	private Date extNciicDate2;
	private String extNciicResult;
	private Date extNciicDate;
	private Date logDateTime;
	private Long extCardTotalTimesDel;
	private String extWstQuaLoan01y;
	private Date extCarLastUpdateDate;
	private Date extClaLastUpdateDate;
	private Date extQuaCarLastUpdateDate;
	
	private DesMainAudit desMain;

	// Constructors

	public DesMainAudit getDesMain() {
		return desMain;
	}

	public void setDesMain(DesMainAudit desMain) {
		this.desMain = desMain;
	}

	/** default constructor */
	public DesExtAudit() {
	}

	/** minimal constructor */
	public DesExtAudit(Long logId) {
		this.logId = logId;
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

	public String getExtFlagCallOrgan1() {
		return this.extFlagCallOrgan1;
	}

	public void setExtFlagCallOrgan1(String extFlagCallOrgan1) {
		this.extFlagCallOrgan1 = extFlagCallOrgan1;
	}

	public String getExtFlagCallOrgan2() {
		return this.extFlagCallOrgan2;
	}

	public void setExtFlagCallOrgan2(String extFlagCallOrgan2) {
		this.extFlagCallOrgan2 = extFlagCallOrgan2;
	}

	public String getExtFlagCallOrgan3() {
		return this.extFlagCallOrgan3;
	}

	public void setExtFlagCallOrgan3(String extFlagCallOrgan3) {
		this.extFlagCallOrgan3 = extFlagCallOrgan3;
	}

	public String getExtFlagCallOrgan4() {
		return this.extFlagCallOrgan4;
	}

	public void setExtFlagCallOrgan4(String extFlagCallOrgan4) {
		this.extFlagCallOrgan4 = extFlagCallOrgan4;
	}

	public Date getExtLatestInquiry() {
		return this.extLatestInquiry;
	}

	public void setExtLatestInquiry(Date extLatestInquiry) {
		this.extLatestInquiry = extLatestInquiry;
	}

	public Long getExtNbCardOrg() {
		return this.extNbCardOrg;
	}

	public void setExtNbCardOrg(Long extNbCardOrg) {
		this.extNbCardOrg = extNbCardOrg;
	}

	public Long getExtNbCardAcc() {
		return this.extNbCardAcc;
	}

	public void setExtNbCardAcc(Long extNbCardAcc) {
		this.extNbCardAcc = extNbCardAcc;
	}

	public Long getExtSumCardCl() {
		return this.extSumCardCl;
	}

	public void setExtSumCardCl(Long extSumCardCl) {
		this.extSumCardCl = extSumCardCl;
	}

	public Long getExtTotOutstgCbal() {
		return this.extTotOutstgCbal;
	}

	public void setExtTotOutstgCbal(Long extTotOutstgCbal) {
		this.extTotOutstgCbal = extTotOutstgCbal;
	}

	public Long getExtNbLoanAcc() {
		return this.extNbLoanAcc;
	}

	public void setExtNbLoanAcc(Long extNbLoanAcc) {
		this.extNbLoanAcc = extNbLoanAcc;
	}

	public Long getExtTotLoanCl() {
		return this.extTotLoanCl;
	}

	public void setExtTotLoanCl(Long extTotLoanCl) {
		this.extTotLoanCl = extTotLoanCl;
	}

	public Long getExtTotOutstgLbal() {
		return this.extTotOutstgLbal;
	}

	public void setExtTotOutstgLbal(Long extTotOutstgLbal) {
		this.extTotOutstgLbal = extTotOutstgLbal;
	}

	public Long getExtLoverdueAmt() {
		return this.extLoverdueAmt;
	}

	public void setExtLoverdueAmt(Long extLoverdueAmt) {
		this.extLoverdueAmt = extLoverdueAmt;
	}

	public String getExtCardAccStatus() {
		return this.extCardAccStatus;
	}

	public void setExtCardAccStatus(String extCardAccStatus) {
		this.extCardAccStatus = extCardAccStatus;
	}

	public Long getExtCardSchedMpAmt() {
		return this.extCardSchedMpAmt;
	}

	public void setExtCardSchedMpAmt(Long extCardSchedMpAmt) {
		this.extCardSchedMpAmt = extCardSchedMpAmt;
	}

	public String getExtCardCurDelCyDue() {
		return this.extCardCurDelCyDue;
	}

	public void setExtCardCurDelCyDue(String extCardCurDelCyDue) {
		this.extCardCurDelCyDue = extCardCurDelCyDue;
	}

	public Long getExtCardAmtPdue() {
		return this.extCardAmtPdue;
	}

	public void setExtCardAmtPdue(Long extCardAmtPdue) {
		this.extCardAmtPdue = extCardAmtPdue;
	}

	public String getExtCardUnp30days() {
		return this.extCardUnp30days;
	}

	public void setExtCardUnp30days(String extCardUnp30days) {
		this.extCardUnp30days = extCardUnp30days;
	}

	public String getExtLoanAccStatus() {
		return this.extLoanAccStatus;
	}

	public void setExtLoanAccStatus(String extLoanAccStatus) {
		this.extLoanAccStatus = extLoanAccStatus;
	}

	public Long getExtLoanPaymCurMont() {
		return this.extLoanPaymCurMont;
	}

	public void setExtLoanPaymCurMont(Long extLoanPaymCurMont) {
		this.extLoanPaymCurMont = extLoanPaymCurMont;
	}

	public Long getExtCurLoanDelTerm() {
		return this.extCurLoanDelTerm;
	}

	public void setExtCurLoanDelTerm(Long extCurLoanDelTerm) {
		this.extCurLoanDelTerm = extCurLoanDelTerm;
	}

	public String getExtTotlDelTerm() {
		return this.extTotlDelTerm;
	}

	public void setExtTotlDelTerm(String extTotlDelTerm) {
		this.extTotlDelTerm = extTotlDelTerm;
	}

	public String getExtHlDelTerm() {
		return this.extHlDelTerm;
	}

	public void setExtHlDelTerm(String extHlDelTerm) {
		this.extHlDelTerm = extHlDelTerm;
	}

	public String getExtOvdLp3160days() {
		return this.extOvdLp3160days;
	}

	public void setExtOvdLp3160days(String extOvdLp3160days) {
		this.extOvdLp3160days = extOvdLp3160days;
	}

	public String getExtOvdLp6190days() {
		return this.extOvdLp6190days;
	}

	public void setExtOvdLp6190days(String extOvdLp6190days) {
		this.extOvdLp6190days = extOvdLp6190days;
	}

	public String getExtOvdLp91180days() {
		return this.extOvdLp91180days;
	}

	public void setExtOvdLp91180days(String extOvdLp91180days) {
		this.extOvdLp91180days = extOvdLp91180days;
	}

	public String getExtOvdLp180days() {
		return this.extOvdLp180days;
	}

	public void setExtOvdLp180days(String extOvdLp180days) {
		this.extOvdLp180days = extOvdLp180days;
	}

	public String getExtOvdLp30days() {
		return this.extOvdLp30days;
	}

	public void setExtOvdLp30days(String extOvdLp30days) {
		this.extOvdLp30days = extOvdLp30days;
	}

	public Date getExtInquiryDate() {
		return this.extInquiryDate;
	}

	public void setExtInquiryDate(Date extInquiryDate) {
		this.extInquiryDate = extInquiryDate;
	}

	public Long getExtNbInquiries() {
		return this.extNbInquiries;
	}

	public void setExtNbInquiries(Long extNbInquiries) {
		this.extNbInquiries = extNbInquiries;
	}

	public String getExtCardUnp6190d() {
		return this.extCardUnp6190d;
	}

	public void setExtCardUnp6190d(String extCardUnp6190d) {
		this.extCardUnp6190d = extCardUnp6190d;
	}

	public String getExtCardUnp91180d() {
		return this.extCardUnp91180d;
	}

	public void setExtCardUnp91180d(String extCardUnp91180d) {
		this.extCardUnp91180d = extCardUnp91180d;
	}

	public String getExtCardUnp3160d() {
		return this.extCardUnp3160d;
	}

	public void setExtCardUnp3160d(String extCardUnp3160d) {
		this.extCardUnp3160d = extCardUnp3160d;
	}

	public String getExtCardUnp612m() {
		return this.extCardUnp612m;
	}

	public void setExtCardUnp612m(String extCardUnp612m) {
		this.extCardUnp612m = extCardUnp612m;
	}

	public String getExtWstLoan12y() {
		return this.extWstLoan12y;
	}

	public void setExtWstLoan12y(String extWstLoan12y) {
		this.extWstLoan12y = extWstLoan12y;
	}

	public Date getExtLatestReportUpdat() {
		return this.extLatestReportUpdat;
	}

	public void setExtLatestReportUpdat(Date extLatestReportUpdat) {
		this.extLatestReportUpdat = extLatestReportUpdat;
	}

	public Long getExtNbLoanOrg() {
		return this.extNbLoanOrg;
	}

	public void setExtNbLoanOrg(Long extNbLoanOrg) {
		this.extNbLoanOrg = extNbLoanOrg;
	}

	public Long getExtNbQuaCardOrg() {
		return this.extNbQuaCardOrg;
	}

	public void setExtNbQuaCardOrg(Long extNbQuaCardOrg) {
		this.extNbQuaCardOrg = extNbQuaCardOrg;
	}

	public Long getExtNbQuaCardAcc() {
		return this.extNbQuaCardAcc;
	}

	public void setExtNbQuaCardAcc(Long extNbQuaCardAcc) {
		this.extNbQuaCardAcc = extNbQuaCardAcc;
	}

	public Long getExtSumQuaCardCl() {
		return this.extSumQuaCardCl;
	}

	public void setExtSumQuaCardCl(Long extSumQuaCardCl) {
		this.extSumQuaCardCl = extSumQuaCardCl;
	}

	public Long getExtTotQuaOutstgCbal() {
		return this.extTotQuaOutstgCbal;
	}

	public void setExtTotQuaOutstgCbal(Long extTotQuaOutstgCbal) {
		this.extTotQuaOutstgCbal = extTotQuaOutstgCbal;
	}

	public Long getExtTotQuaOverdue180days() {
		return this.extTotQuaOverdue180days;
	}

	public void setExtTotQuaOverdue180days(Long extTotQuaOverdue180days) {
		this.extTotQuaOverdue180days = extTotQuaOverdue180days;
	}

	public String getExtNciicResult2() {
		return this.extNciicResult2;
	}

	public void setExtNciicResult2(String extNciicResult2) {
		this.extNciicResult2 = extNciicResult2;
	}

	public Date getExtNciicDate2() {
		return this.extNciicDate2;
	}

	public void setExtNciicDate2(Date extNciicDate2) {
		this.extNciicDate2 = extNciicDate2;
	}

	public String getExtNciicResult() {
		return this.extNciicResult;
	}

	public void setExtNciicResult(String extNciicResult) {
		this.extNciicResult = extNciicResult;
	}

	public Date getExtNciicDate() {
		return this.extNciicDate;
	}

	public void setExtNciicDate(Date extNciicDate) {
		this.extNciicDate = extNciicDate;
	}

	public Date getLogDateTime() {
		return this.logDateTime;
	}

	public void setLogDateTime(Date logDateTime) {
		this.logDateTime = logDateTime;
	}

	public Long getExtCardTotalTimesDel() {
		return this.extCardTotalTimesDel;
	}

	public void setExtCardTotalTimesDel(Long extCardTotalTimesDel) {
		this.extCardTotalTimesDel = extCardTotalTimesDel;
	}

	public String getExtWstQuaLoan01y() {
		return this.extWstQuaLoan01y;
	}

	public void setExtWstQuaLoan01y(String extWstQuaLoan01y) {
		this.extWstQuaLoan01y = extWstQuaLoan01y;
	}

	public Date getExtCarLastUpdateDate() {
		return this.extCarLastUpdateDate;
	}

	public void setExtCarLastUpdateDate(Date extCarLastUpdateDate) {
		this.extCarLastUpdateDate = extCarLastUpdateDate;
	}

	public Date getExtClaLastUpdateDate() {
		return this.extClaLastUpdateDate;
	}

	public void setExtClaLastUpdateDate(Date extClaLastUpdateDate) {
		this.extClaLastUpdateDate = extClaLastUpdateDate;
	}

	public Date getExtQuaCarLastUpdateDate() {
		return this.extQuaCarLastUpdateDate;
	}

	public void setExtQuaCarLastUpdateDate(Date extQuaCarLastUpdateDate) {
		this.extQuaCarLastUpdateDate = extQuaCarLastUpdateDate;
	}

}