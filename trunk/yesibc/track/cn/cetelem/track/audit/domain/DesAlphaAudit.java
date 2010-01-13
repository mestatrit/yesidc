package cn.cetelem.track.audit.domain;

import java.util.Date;

/**
 * DesAlphaAudit entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class DesAlphaAudit extends BaseAudit implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long logId;
	private String appId;
	private Date applicationDateTime;
	private String alph1CoAcces;
	private String alph2CoAcces;
	private String alph1AoAcces;
	private String alph2AoAcces;
	private String alph1CoFext;
	private String alph1CoCposc;
	private String alph1CoCposd;
	private String alph1CoPlinc;
	private String alph1CoPlnotqual;
	private String alph1CoSinotntz;
	private String alph1CoPlnotntz;
	private String alph1CoSinotcli;
	private String alph1CoPlnotcli;
	private String alph1CoPlnotassdm;
	private String alph1CoPlnotassch;
	private String alph1CoPlrisassdm;
	private String alph1CoPlrisassch;
	private String alph1CoCreact;
	private Long alph1CoMenspotpd;
	private Long alph1CoEncpotd;
	private Long alph1CoEncpotpd;
	private Long alph1CoEncpotp;
	private String alph1CoSiencauto;
	private Long alph1CoEncauto;
	private String alph1CoSiencautod;
	private Long alph1CoEncautod;
	private String alph1CoSiencreel;
	private Long alph1CoEncreel;
	private String alph1CoSiencreelmlt;
	private Long alph1CoEncreelmlt;
	private Long alph1CoSommensmin;
	private Long alph1CoSommensact;
	private Long alph1CoSommensmlt;
	private Long alph1CoNbmoisdpreac;
	private Long alph1CoMtdpreac;
	private Long alph1CoNbmoisdetuds;
	private Long alph1CoMtdetuds;
	private Long alph1CoNbmoisdetudc;
	private Long alph1CoMtdetudc;
	private Long alph1CoNbdoscedi;
	private Long alph1CoNbdoscepa;
	private Long alph1CoNbdoscof;
	private Long alph1CoNbclacef7;
	private Long alph1CoNbclacenf7;
	private Long alph1CoNbclacof7;
	private Long alph1CoNbclaconf7;
	private Long alph1CoNbcaf7;
	private Long alph1CoNbcanf7;
	private Long alph1CoNbcpf7;
	private Long alph1CoNbcpnf7;
	private Long alph1CoNbcontf7;
	private Long alph1CoNbbail;
	private Long alph1CoNbca;
	private Long alph1CoNbcb;
	private Long alph1CoNbref3;
	private Long alph1CoNbdts;
	private String alph1CoSitodudts;
	private Long alph1CoMttodudts;
	private Date alph1CoDvalqualenc;
	private Long alph1CoMensdtsactf7;
	private Long alph1CoMensdtsactmltf7;
	private String alph1CoCptt;
	private Long alph1CoEcvtc;
	private Long alph1CoEcox3;
	private Long alph1CoEcrev;
	private Long alph1CoNbvtc;
	private String alph1CoRecidive;
	private String alph2CoFext;
	private String alph2CoCposc;
	private String alph2CoCposd;
	private String alph2CoPlinc;
	private String alph2CoPlnotqual;
	private String alph2CoSinotntz;
	private String alph2CoPlnotntz;
	private String alph2CoSinotcli;
	private String alph2CoPlnotcli;
	private String alph2CoPlnotassdm;
	private String alph2CoPlnotassch;
	private String alph2CoPlrisassdm;
	private String alph2CoPlrisassch;
	private String alph2CoCreact;
	private Long alph2CoMenspotpd;
	private Long alph2CoEncpotd;
	private Long alph2CoEncpotpd;
	private Long alph2CoEncpotp;
	private String alph2CoSiencauto;
	private Long alph2CoEncauto;
	private String alph2CoSiencautod;
	private Long alph2CoEncautod;
	private String alph2CoSiencreel;
	private Long alph2CoEncreel;
	private String alph2CoSiencreelmlt;
	private Long alph2CoEncreelmlt;
	private Long alph2CoSommensmin;
	private Long alph2CoSommensact;
	private Long alph2CoSommensmlt;
	private Long alph2CoNbmoisdpreac;
	private Long alph2CoMtdpreac;
	private Long alph2CoNbmoisdetuds;
	private Long alph2CoMtdetuds;
	private Long alph2CoNbmoisdetudc;
	private Long alph2CoMtdetudc;
	private Long alph2CoNbdoscedi;
	private Long alph2CoNbdoscepa;
	private Long alph2CoNbdoscof;
	private Long alph2CoNbclacef7;
	private Long alph2CoNbclacenf7;
	private Long alph2CoNbclacof7;
	private Long alph2CoNbclaconf7;
	private Long alph2CoNbcaf7;
	private Long alph2CoNbcanf7;
	private Long alph2CoNbcpf7;
	private Long alph2CoNbcpnf7;
	private Long alph2CoNbcontf7;
	private Long alph2CoNbbail;
	private Long alph2CoNbca;
	private Long alph2CoNbcb;
	private Long alph2CoNbref3;
	private Long alph2CoNbdts;
	private String alph2CoSitodudts;
	private Long alph2CoMttodudts;
	private Date alph2CoDvalqualenc;
	private Long alph2CoMensdtsactf7;
	private Long alph2CoMensdtsactmltf7;
	private String alph2CoCptt;
	private Long alph2CoEcvtc;
	private Long alph2CoEcox3;
	private Long alph2CoEcrev;
	private Long alph2CoNbvtc;
	private String alph2CoRecidive;
	private String alph1AoFext;
	private String alph1AoCposc;
	private String alph1AoCposd;
	private String alph1AoPlinc;
	private String alph1AoPlnotqual;
	private String alph1AoSinotntz;
	private String alph1AoPlnotntz;
	private String alph1AoSinotcli;
	private String alph1AoPlnotcli;
	private String alph1AoPlnotassdm;
	private String alph1AoPlnotassch;
	private String alph1AoPlrisassdm;
	private String alph1AoPlrisassch;
	private String alph1AoCreact;
	private Long alph1AoMenspotpd;
	private Long alph1AoEncpotd;
	private Long alph1AoEncpotpd;
	private Long alph1AoEncpotp;
	private String alph1AoSiencauto;
	private Long alph1AoEncauto;
	private String alph1AoSiencautod;
	private Long alph1AoEncautod;
	private String alph1AoSiencreel;
	private Long alph1AoEncreel;
	private String alph1AoSiencreelmlt;
	private Long alph1AoEncreelmlt;
	private Long alph1AoSommensmin;
	private Long alph1AoSommensact;
	private Long alph1AoSommensmlt;
	private Long alph1AoNbmoisdpreac;
	private Long alph1AoMtdpreac;
	private Long alph1AoNbmoisdetuds;
	private Long alph1AoMtdetuds;
	private Long alph1AoNbmoisdetudc;
	private Long alph1AoMtdetudc;
	private Long alph1AoNbdoscedi;
	private Long alph1AoNbdoscepa;
	private Long alph1AoNbdoscof;
	private Long alph1AoNbclacef7;
	private Long alph1AoNbclacenf7;
	private Long alph1AoNbclacof7;
	private Long alph1AoNbclaconf7;
	private Long alph1AoNbcaf7;
	private Long alph1AoNbcanf7;
	private Long alph1AoNbcpf7;
	private Long alph1AoNbcpnf7;
	private Long alph1AoNbcontf7;
	private Long alph1AoNbbail;
	private Long alph1AoNbca;
	private Long alph1AoNbcb;
	private Long alph1AoNbref3;
	private Long alph1AoNbdts;
	private String alph1AoSitodudts;
	private Long alph1AoMttodudts;
	private Date alph1AoDvalqualenc;
	private Long alph1AoMensdtsactf7;
	private Long alph1AoMensdtsactmltf7;
	private String alph1AoCptt;
	private Long alph1AoEcvtc;
	private Long alph1AoEcox3;
	private Long alph1AoEcrev;
	private Long alph1AoNbvtc;
	private String alph1AoRecidive;
	private String alph2AoFext;
	private String alph2AoCposc;
	private String alph2AoCposd;
	private String alph2AoPlinc;
	private String alph2AoPlnotqual;
	private String alph2AoSinotntz;
	private String alph2AoPlnotntz;
	private String alph2AoSinotcli;
	private String alph2AoPlnotcli;
	private String alph2AoPlnotassdm;
	private String alph2AoPlnotassch;
	private String alph2AoPlrisassdm;
	private String alph2AoPlrisassch;
	private String alph2AoCreact;
	private Long alph2AoMenspotpd;
	private Long alph2AoEncpotd;
	private Long alph2AoEncpotpd;
	private Long alph2AoEncpotp;
	private String alph2AoSiencauto;
	private Long alph2AoEncauto;
	private String alph2AoSiencautod;
	private Long alph2AoEncautod;
	private String alph2AoSiencreel;
	private Long alph2AoEncreel;
	private String alph2AoSiencreelmlt;
	private Long alph2AoEncreelmlt;
	private Long alph2AoSommensmin;
	private Long alph2AoSommensact;
	private Long alph2AoSommensmlt;
	private Long alph2AoNbmoisdpreac;
	private Long alph2AoMtdpreac;
	private Long alph2AoNbmoisdetuds;
	private Long alph2AoMtdetuds;
	private Long alph2AoNbmoisdetudc;
	private Long alph2AoMtdetudc;
	private Long alph2AoNbdoscedi;
	private Long alph2AoNbdoscepa;
	private Long alph2AoNbdoscof;
	private Long alph2AoNbclacef7;
	private Long alph2AoNbclacenf7;
	private Long alph2AoNbclacof7;
	private Long alph2AoNbclaconf7;
	private Long alph2AoNbcaf7;
	private Long alph2AoNbcanf7;
	private Long alph2AoNbcpf7;
	private Long alph2AoNbcpnf7;
	private Long alph2AoNbcontf7;
	private Long alph2AoNbbail;
	private Long alph2AoNbca;
	private Long alph2AoNbcb;
	private Long alph2AoNbref3;
	private Long alph2AoNbdts;
	private String alph2AoSitodudts;
	private Long alph2AoMttodudts;
	private Date alph2AoDvalqualenc;
	private Long alph2AoMensdtsactf7;
	private Long alph2AoMensdtsactmltf7;
	private String alph2AoCptt;
	private Long alph2AoEcvtc;
	private Long alph2AoEcox3;
	private Long alph2AoEcrev;
	private Long alph2AoNbvtc;
	private String alph2AoRecidive;
	private Date dbLastUpdateDate;
	private Date logDateTime;
	private Date dateLastPbocInquiry;
	
	private DesMainAudit desMain;

	// Constructors

	public DesMainAudit getDesMain() {
		return desMain;
	}

	public void setDesMain(DesMainAudit desMain) {
		this.desMain = desMain;
	}

	/** default constructor */
	public DesAlphaAudit() {
	}

	/** minimal constructor */
	public DesAlphaAudit(Long logId, String appId) {
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

	public String getAlph1CoAcces() {
		return this.alph1CoAcces;
	}

	public void setAlph1CoAcces(String alph1CoAcces) {
		this.alph1CoAcces = alph1CoAcces;
	}

	public String getAlph2CoAcces() {
		return this.alph2CoAcces;
	}

	public void setAlph2CoAcces(String alph2CoAcces) {
		this.alph2CoAcces = alph2CoAcces;
	}

	public String getAlph1AoAcces() {
		return this.alph1AoAcces;
	}

	public void setAlph1AoAcces(String alph1AoAcces) {
		this.alph1AoAcces = alph1AoAcces;
	}

	public String getAlph2AoAcces() {
		return this.alph2AoAcces;
	}

	public void setAlph2AoAcces(String alph2AoAcces) {
		this.alph2AoAcces = alph2AoAcces;
	}

	public String getAlph1CoFext() {
		return this.alph1CoFext;
	}

	public void setAlph1CoFext(String alph1CoFext) {
		this.alph1CoFext = alph1CoFext;
	}

	public String getAlph1CoCposc() {
		return this.alph1CoCposc;
	}

	public void setAlph1CoCposc(String alph1CoCposc) {
		this.alph1CoCposc = alph1CoCposc;
	}

	public String getAlph1CoCposd() {
		return this.alph1CoCposd;
	}

	public void setAlph1CoCposd(String alph1CoCposd) {
		this.alph1CoCposd = alph1CoCposd;
	}

	public String getAlph1CoPlinc() {
		return this.alph1CoPlinc;
	}

	public void setAlph1CoPlinc(String alph1CoPlinc) {
		this.alph1CoPlinc = alph1CoPlinc;
	}

	public String getAlph1CoPlnotqual() {
		return this.alph1CoPlnotqual;
	}

	public void setAlph1CoPlnotqual(String alph1CoPlnotqual) {
		this.alph1CoPlnotqual = alph1CoPlnotqual;
	}

	public String getAlph1CoSinotntz() {
		return this.alph1CoSinotntz;
	}

	public void setAlph1CoSinotntz(String alph1CoSinotntz) {
		this.alph1CoSinotntz = alph1CoSinotntz;
	}

	public String getAlph1CoPlnotntz() {
		return this.alph1CoPlnotntz;
	}

	public void setAlph1CoPlnotntz(String alph1CoPlnotntz) {
		this.alph1CoPlnotntz = alph1CoPlnotntz;
	}

	public String getAlph1CoSinotcli() {
		return this.alph1CoSinotcli;
	}

	public void setAlph1CoSinotcli(String alph1CoSinotcli) {
		this.alph1CoSinotcli = alph1CoSinotcli;
	}

	public String getAlph1CoPlnotcli() {
		return this.alph1CoPlnotcli;
	}

	public void setAlph1CoPlnotcli(String alph1CoPlnotcli) {
		this.alph1CoPlnotcli = alph1CoPlnotcli;
	}

	public String getAlph1CoPlnotassdm() {
		return this.alph1CoPlnotassdm;
	}

	public void setAlph1CoPlnotassdm(String alph1CoPlnotassdm) {
		this.alph1CoPlnotassdm = alph1CoPlnotassdm;
	}

	public String getAlph1CoPlnotassch() {
		return this.alph1CoPlnotassch;
	}

	public void setAlph1CoPlnotassch(String alph1CoPlnotassch) {
		this.alph1CoPlnotassch = alph1CoPlnotassch;
	}

	public String getAlph1CoPlrisassdm() {
		return this.alph1CoPlrisassdm;
	}

	public void setAlph1CoPlrisassdm(String alph1CoPlrisassdm) {
		this.alph1CoPlrisassdm = alph1CoPlrisassdm;
	}

	public String getAlph1CoPlrisassch() {
		return this.alph1CoPlrisassch;
	}

	public void setAlph1CoPlrisassch(String alph1CoPlrisassch) {
		this.alph1CoPlrisassch = alph1CoPlrisassch;
	}

	public String getAlph1CoCreact() {
		return this.alph1CoCreact;
	}

	public void setAlph1CoCreact(String alph1CoCreact) {
		this.alph1CoCreact = alph1CoCreact;
	}

	public Long getAlph1CoMenspotpd() {
		return this.alph1CoMenspotpd;
	}

	public void setAlph1CoMenspotpd(Long alph1CoMenspotpd) {
		this.alph1CoMenspotpd = alph1CoMenspotpd;
	}

	public Long getAlph1CoEncpotd() {
		return this.alph1CoEncpotd;
	}

	public void setAlph1CoEncpotd(Long alph1CoEncpotd) {
		this.alph1CoEncpotd = alph1CoEncpotd;
	}

	public Long getAlph1CoEncpotpd() {
		return this.alph1CoEncpotpd;
	}

	public void setAlph1CoEncpotpd(Long alph1CoEncpotpd) {
		this.alph1CoEncpotpd = alph1CoEncpotpd;
	}

	public Long getAlph1CoEncpotp() {
		return this.alph1CoEncpotp;
	}

	public void setAlph1CoEncpotp(Long alph1CoEncpotp) {
		this.alph1CoEncpotp = alph1CoEncpotp;
	}

	public String getAlph1CoSiencauto() {
		return this.alph1CoSiencauto;
	}

	public void setAlph1CoSiencauto(String alph1CoSiencauto) {
		this.alph1CoSiencauto = alph1CoSiencauto;
	}

	public Long getAlph1CoEncauto() {
		return this.alph1CoEncauto;
	}

	public void setAlph1CoEncauto(Long alph1CoEncauto) {
		this.alph1CoEncauto = alph1CoEncauto;
	}

	public String getAlph1CoSiencautod() {
		return this.alph1CoSiencautod;
	}

	public void setAlph1CoSiencautod(String alph1CoSiencautod) {
		this.alph1CoSiencautod = alph1CoSiencautod;
	}

	public Long getAlph1CoEncautod() {
		return this.alph1CoEncautod;
	}

	public void setAlph1CoEncautod(Long alph1CoEncautod) {
		this.alph1CoEncautod = alph1CoEncautod;
	}

	public String getAlph1CoSiencreel() {
		return this.alph1CoSiencreel;
	}

	public void setAlph1CoSiencreel(String alph1CoSiencreel) {
		this.alph1CoSiencreel = alph1CoSiencreel;
	}

	public Long getAlph1CoEncreel() {
		return this.alph1CoEncreel;
	}

	public void setAlph1CoEncreel(Long alph1CoEncreel) {
		this.alph1CoEncreel = alph1CoEncreel;
	}

	public String getAlph1CoSiencreelmlt() {
		return this.alph1CoSiencreelmlt;
	}

	public void setAlph1CoSiencreelmlt(String alph1CoSiencreelmlt) {
		this.alph1CoSiencreelmlt = alph1CoSiencreelmlt;
	}

	public Long getAlph1CoEncreelmlt() {
		return this.alph1CoEncreelmlt;
	}

	public void setAlph1CoEncreelmlt(Long alph1CoEncreelmlt) {
		this.alph1CoEncreelmlt = alph1CoEncreelmlt;
	}

	public Long getAlph1CoSommensmin() {
		return this.alph1CoSommensmin;
	}

	public void setAlph1CoSommensmin(Long alph1CoSommensmin) {
		this.alph1CoSommensmin = alph1CoSommensmin;
	}

	public Long getAlph1CoSommensact() {
		return this.alph1CoSommensact;
	}

	public void setAlph1CoSommensact(Long alph1CoSommensact) {
		this.alph1CoSommensact = alph1CoSommensact;
	}

	public Long getAlph1CoSommensmlt() {
		return this.alph1CoSommensmlt;
	}

	public void setAlph1CoSommensmlt(Long alph1CoSommensmlt) {
		this.alph1CoSommensmlt = alph1CoSommensmlt;
	}

	public Long getAlph1CoNbmoisdpreac() {
		return this.alph1CoNbmoisdpreac;
	}

	public void setAlph1CoNbmoisdpreac(Long alph1CoNbmoisdpreac) {
		this.alph1CoNbmoisdpreac = alph1CoNbmoisdpreac;
	}

	public Long getAlph1CoMtdpreac() {
		return this.alph1CoMtdpreac;
	}

	public void setAlph1CoMtdpreac(Long alph1CoMtdpreac) {
		this.alph1CoMtdpreac = alph1CoMtdpreac;
	}

	public Long getAlph1CoNbmoisdetuds() {
		return this.alph1CoNbmoisdetuds;
	}

	public void setAlph1CoNbmoisdetuds(Long alph1CoNbmoisdetuds) {
		this.alph1CoNbmoisdetuds = alph1CoNbmoisdetuds;
	}

	public Long getAlph1CoMtdetuds() {
		return this.alph1CoMtdetuds;
	}

	public void setAlph1CoMtdetuds(Long alph1CoMtdetuds) {
		this.alph1CoMtdetuds = alph1CoMtdetuds;
	}

	public Long getAlph1CoNbmoisdetudc() {
		return this.alph1CoNbmoisdetudc;
	}

	public void setAlph1CoNbmoisdetudc(Long alph1CoNbmoisdetudc) {
		this.alph1CoNbmoisdetudc = alph1CoNbmoisdetudc;
	}

	public Long getAlph1CoMtdetudc() {
		return this.alph1CoMtdetudc;
	}

	public void setAlph1CoMtdetudc(Long alph1CoMtdetudc) {
		this.alph1CoMtdetudc = alph1CoMtdetudc;
	}

	public Long getAlph1CoNbdoscedi() {
		return this.alph1CoNbdoscedi;
	}

	public void setAlph1CoNbdoscedi(Long alph1CoNbdoscedi) {
		this.alph1CoNbdoscedi = alph1CoNbdoscedi;
	}

	public Long getAlph1CoNbdoscepa() {
		return this.alph1CoNbdoscepa;
	}

	public void setAlph1CoNbdoscepa(Long alph1CoNbdoscepa) {
		this.alph1CoNbdoscepa = alph1CoNbdoscepa;
	}

	public Long getAlph1CoNbdoscof() {
		return this.alph1CoNbdoscof;
	}

	public void setAlph1CoNbdoscof(Long alph1CoNbdoscof) {
		this.alph1CoNbdoscof = alph1CoNbdoscof;
	}

	public Long getAlph1CoNbclacef7() {
		return this.alph1CoNbclacef7;
	}

	public void setAlph1CoNbclacef7(Long alph1CoNbclacef7) {
		this.alph1CoNbclacef7 = alph1CoNbclacef7;
	}

	public Long getAlph1CoNbclacenf7() {
		return this.alph1CoNbclacenf7;
	}

	public void setAlph1CoNbclacenf7(Long alph1CoNbclacenf7) {
		this.alph1CoNbclacenf7 = alph1CoNbclacenf7;
	}

	public Long getAlph1CoNbclacof7() {
		return this.alph1CoNbclacof7;
	}

	public void setAlph1CoNbclacof7(Long alph1CoNbclacof7) {
		this.alph1CoNbclacof7 = alph1CoNbclacof7;
	}

	public Long getAlph1CoNbclaconf7() {
		return this.alph1CoNbclaconf7;
	}

	public void setAlph1CoNbclaconf7(Long alph1CoNbclaconf7) {
		this.alph1CoNbclaconf7 = alph1CoNbclaconf7;
	}

	public Long getAlph1CoNbcaf7() {
		return this.alph1CoNbcaf7;
	}

	public void setAlph1CoNbcaf7(Long alph1CoNbcaf7) {
		this.alph1CoNbcaf7 = alph1CoNbcaf7;
	}

	public Long getAlph1CoNbcanf7() {
		return this.alph1CoNbcanf7;
	}

	public void setAlph1CoNbcanf7(Long alph1CoNbcanf7) {
		this.alph1CoNbcanf7 = alph1CoNbcanf7;
	}

	public Long getAlph1CoNbcpf7() {
		return this.alph1CoNbcpf7;
	}

	public void setAlph1CoNbcpf7(Long alph1CoNbcpf7) {
		this.alph1CoNbcpf7 = alph1CoNbcpf7;
	}

	public Long getAlph1CoNbcpnf7() {
		return this.alph1CoNbcpnf7;
	}

	public void setAlph1CoNbcpnf7(Long alph1CoNbcpnf7) {
		this.alph1CoNbcpnf7 = alph1CoNbcpnf7;
	}

	public Long getAlph1CoNbcontf7() {
		return this.alph1CoNbcontf7;
	}

	public void setAlph1CoNbcontf7(Long alph1CoNbcontf7) {
		this.alph1CoNbcontf7 = alph1CoNbcontf7;
	}

	public Long getAlph1CoNbbail() {
		return this.alph1CoNbbail;
	}

	public void setAlph1CoNbbail(Long alph1CoNbbail) {
		this.alph1CoNbbail = alph1CoNbbail;
	}

	public Long getAlph1CoNbca() {
		return this.alph1CoNbca;
	}

	public void setAlph1CoNbca(Long alph1CoNbca) {
		this.alph1CoNbca = alph1CoNbca;
	}

	public Long getAlph1CoNbcb() {
		return this.alph1CoNbcb;
	}

	public void setAlph1CoNbcb(Long alph1CoNbcb) {
		this.alph1CoNbcb = alph1CoNbcb;
	}

	public Long getAlph1CoNbref3() {
		return this.alph1CoNbref3;
	}

	public void setAlph1CoNbref3(Long alph1CoNbref3) {
		this.alph1CoNbref3 = alph1CoNbref3;
	}

	public Long getAlph1CoNbdts() {
		return this.alph1CoNbdts;
	}

	public void setAlph1CoNbdts(Long alph1CoNbdts) {
		this.alph1CoNbdts = alph1CoNbdts;
	}

	public String getAlph1CoSitodudts() {
		return this.alph1CoSitodudts;
	}

	public void setAlph1CoSitodudts(String alph1CoSitodudts) {
		this.alph1CoSitodudts = alph1CoSitodudts;
	}

	public Long getAlph1CoMttodudts() {
		return this.alph1CoMttodudts;
	}

	public void setAlph1CoMttodudts(Long alph1CoMttodudts) {
		this.alph1CoMttodudts = alph1CoMttodudts;
	}

	public Date getAlph1CoDvalqualenc() {
		return this.alph1CoDvalqualenc;
	}

	public void setAlph1CoDvalqualenc(Date alph1CoDvalqualenc) {
		this.alph1CoDvalqualenc = alph1CoDvalqualenc;
	}

	public Long getAlph1CoMensdtsactf7() {
		return this.alph1CoMensdtsactf7;
	}

	public void setAlph1CoMensdtsactf7(Long alph1CoMensdtsactf7) {
		this.alph1CoMensdtsactf7 = alph1CoMensdtsactf7;
	}

	public Long getAlph1CoMensdtsactmltf7() {
		return this.alph1CoMensdtsactmltf7;
	}

	public void setAlph1CoMensdtsactmltf7(Long alph1CoMensdtsactmltf7) {
		this.alph1CoMensdtsactmltf7 = alph1CoMensdtsactmltf7;
	}

	public String getAlph1CoCptt() {
		return this.alph1CoCptt;
	}

	public void setAlph1CoCptt(String alph1CoCptt) {
		this.alph1CoCptt = alph1CoCptt;
	}

	public Long getAlph1CoEcvtc() {
		return this.alph1CoEcvtc;
	}

	public void setAlph1CoEcvtc(Long alph1CoEcvtc) {
		this.alph1CoEcvtc = alph1CoEcvtc;
	}

	public Long getAlph1CoEcox3() {
		return this.alph1CoEcox3;
	}

	public void setAlph1CoEcox3(Long alph1CoEcox3) {
		this.alph1CoEcox3 = alph1CoEcox3;
	}

	public Long getAlph1CoEcrev() {
		return this.alph1CoEcrev;
	}

	public void setAlph1CoEcrev(Long alph1CoEcrev) {
		this.alph1CoEcrev = alph1CoEcrev;
	}

	public Long getAlph1CoNbvtc() {
		return this.alph1CoNbvtc;
	}

	public void setAlph1CoNbvtc(Long alph1CoNbvtc) {
		this.alph1CoNbvtc = alph1CoNbvtc;
	}

	public String getAlph1CoRecidive() {
		return this.alph1CoRecidive;
	}

	public void setAlph1CoRecidive(String alph1CoRecidive) {
		this.alph1CoRecidive = alph1CoRecidive;
	}

	public String getAlph2CoFext() {
		return this.alph2CoFext;
	}

	public void setAlph2CoFext(String alph2CoFext) {
		this.alph2CoFext = alph2CoFext;
	}

	public String getAlph2CoCposc() {
		return this.alph2CoCposc;
	}

	public void setAlph2CoCposc(String alph2CoCposc) {
		this.alph2CoCposc = alph2CoCposc;
	}

	public String getAlph2CoCposd() {
		return this.alph2CoCposd;
	}

	public void setAlph2CoCposd(String alph2CoCposd) {
		this.alph2CoCposd = alph2CoCposd;
	}

	public String getAlph2CoPlinc() {
		return this.alph2CoPlinc;
	}

	public void setAlph2CoPlinc(String alph2CoPlinc) {
		this.alph2CoPlinc = alph2CoPlinc;
	}

	public String getAlph2CoPlnotqual() {
		return this.alph2CoPlnotqual;
	}

	public void setAlph2CoPlnotqual(String alph2CoPlnotqual) {
		this.alph2CoPlnotqual = alph2CoPlnotqual;
	}

	public String getAlph2CoSinotntz() {
		return this.alph2CoSinotntz;
	}

	public void setAlph2CoSinotntz(String alph2CoSinotntz) {
		this.alph2CoSinotntz = alph2CoSinotntz;
	}

	public String getAlph2CoPlnotntz() {
		return this.alph2CoPlnotntz;
	}

	public void setAlph2CoPlnotntz(String alph2CoPlnotntz) {
		this.alph2CoPlnotntz = alph2CoPlnotntz;
	}

	public String getAlph2CoSinotcli() {
		return this.alph2CoSinotcli;
	}

	public void setAlph2CoSinotcli(String alph2CoSinotcli) {
		this.alph2CoSinotcli = alph2CoSinotcli;
	}

	public String getAlph2CoPlnotcli() {
		return this.alph2CoPlnotcli;
	}

	public void setAlph2CoPlnotcli(String alph2CoPlnotcli) {
		this.alph2CoPlnotcli = alph2CoPlnotcli;
	}

	public String getAlph2CoPlnotassdm() {
		return this.alph2CoPlnotassdm;
	}

	public void setAlph2CoPlnotassdm(String alph2CoPlnotassdm) {
		this.alph2CoPlnotassdm = alph2CoPlnotassdm;
	}

	public String getAlph2CoPlnotassch() {
		return this.alph2CoPlnotassch;
	}

	public void setAlph2CoPlnotassch(String alph2CoPlnotassch) {
		this.alph2CoPlnotassch = alph2CoPlnotassch;
	}

	public String getAlph2CoPlrisassdm() {
		return this.alph2CoPlrisassdm;
	}

	public void setAlph2CoPlrisassdm(String alph2CoPlrisassdm) {
		this.alph2CoPlrisassdm = alph2CoPlrisassdm;
	}

	public String getAlph2CoPlrisassch() {
		return this.alph2CoPlrisassch;
	}

	public void setAlph2CoPlrisassch(String alph2CoPlrisassch) {
		this.alph2CoPlrisassch = alph2CoPlrisassch;
	}

	public String getAlph2CoCreact() {
		return this.alph2CoCreact;
	}

	public void setAlph2CoCreact(String alph2CoCreact) {
		this.alph2CoCreact = alph2CoCreact;
	}

	public Long getAlph2CoMenspotpd() {
		return this.alph2CoMenspotpd;
	}

	public void setAlph2CoMenspotpd(Long alph2CoMenspotpd) {
		this.alph2CoMenspotpd = alph2CoMenspotpd;
	}

	public Long getAlph2CoEncpotd() {
		return this.alph2CoEncpotd;
	}

	public void setAlph2CoEncpotd(Long alph2CoEncpotd) {
		this.alph2CoEncpotd = alph2CoEncpotd;
	}

	public Long getAlph2CoEncpotpd() {
		return this.alph2CoEncpotpd;
	}

	public void setAlph2CoEncpotpd(Long alph2CoEncpotpd) {
		this.alph2CoEncpotpd = alph2CoEncpotpd;
	}

	public Long getAlph2CoEncpotp() {
		return this.alph2CoEncpotp;
	}

	public void setAlph2CoEncpotp(Long alph2CoEncpotp) {
		this.alph2CoEncpotp = alph2CoEncpotp;
	}

	public String getAlph2CoSiencauto() {
		return this.alph2CoSiencauto;
	}

	public void setAlph2CoSiencauto(String alph2CoSiencauto) {
		this.alph2CoSiencauto = alph2CoSiencauto;
	}

	public Long getAlph2CoEncauto() {
		return this.alph2CoEncauto;
	}

	public void setAlph2CoEncauto(Long alph2CoEncauto) {
		this.alph2CoEncauto = alph2CoEncauto;
	}

	public String getAlph2CoSiencautod() {
		return this.alph2CoSiencautod;
	}

	public void setAlph2CoSiencautod(String alph2CoSiencautod) {
		this.alph2CoSiencautod = alph2CoSiencautod;
	}

	public Long getAlph2CoEncautod() {
		return this.alph2CoEncautod;
	}

	public void setAlph2CoEncautod(Long alph2CoEncautod) {
		this.alph2CoEncautod = alph2CoEncautod;
	}

	public String getAlph2CoSiencreel() {
		return this.alph2CoSiencreel;
	}

	public void setAlph2CoSiencreel(String alph2CoSiencreel) {
		this.alph2CoSiencreel = alph2CoSiencreel;
	}

	public Long getAlph2CoEncreel() {
		return this.alph2CoEncreel;
	}

	public void setAlph2CoEncreel(Long alph2CoEncreel) {
		this.alph2CoEncreel = alph2CoEncreel;
	}

	public String getAlph2CoSiencreelmlt() {
		return this.alph2CoSiencreelmlt;
	}

	public void setAlph2CoSiencreelmlt(String alph2CoSiencreelmlt) {
		this.alph2CoSiencreelmlt = alph2CoSiencreelmlt;
	}

	public Long getAlph2CoEncreelmlt() {
		return this.alph2CoEncreelmlt;
	}

	public void setAlph2CoEncreelmlt(Long alph2CoEncreelmlt) {
		this.alph2CoEncreelmlt = alph2CoEncreelmlt;
	}

	public Long getAlph2CoSommensmin() {
		return this.alph2CoSommensmin;
	}

	public void setAlph2CoSommensmin(Long alph2CoSommensmin) {
		this.alph2CoSommensmin = alph2CoSommensmin;
	}

	public Long getAlph2CoSommensact() {
		return this.alph2CoSommensact;
	}

	public void setAlph2CoSommensact(Long alph2CoSommensact) {
		this.alph2CoSommensact = alph2CoSommensact;
	}

	public Long getAlph2CoSommensmlt() {
		return this.alph2CoSommensmlt;
	}

	public void setAlph2CoSommensmlt(Long alph2CoSommensmlt) {
		this.alph2CoSommensmlt = alph2CoSommensmlt;
	}

	public Long getAlph2CoNbmoisdpreac() {
		return this.alph2CoNbmoisdpreac;
	}

	public void setAlph2CoNbmoisdpreac(Long alph2CoNbmoisdpreac) {
		this.alph2CoNbmoisdpreac = alph2CoNbmoisdpreac;
	}

	public Long getAlph2CoMtdpreac() {
		return this.alph2CoMtdpreac;
	}

	public void setAlph2CoMtdpreac(Long alph2CoMtdpreac) {
		this.alph2CoMtdpreac = alph2CoMtdpreac;
	}

	public Long getAlph2CoNbmoisdetuds() {
		return this.alph2CoNbmoisdetuds;
	}

	public void setAlph2CoNbmoisdetuds(Long alph2CoNbmoisdetuds) {
		this.alph2CoNbmoisdetuds = alph2CoNbmoisdetuds;
	}

	public Long getAlph2CoMtdetuds() {
		return this.alph2CoMtdetuds;
	}

	public void setAlph2CoMtdetuds(Long alph2CoMtdetuds) {
		this.alph2CoMtdetuds = alph2CoMtdetuds;
	}

	public Long getAlph2CoNbmoisdetudc() {
		return this.alph2CoNbmoisdetudc;
	}

	public void setAlph2CoNbmoisdetudc(Long alph2CoNbmoisdetudc) {
		this.alph2CoNbmoisdetudc = alph2CoNbmoisdetudc;
	}

	public Long getAlph2CoMtdetudc() {
		return this.alph2CoMtdetudc;
	}

	public void setAlph2CoMtdetudc(Long alph2CoMtdetudc) {
		this.alph2CoMtdetudc = alph2CoMtdetudc;
	}

	public Long getAlph2CoNbdoscedi() {
		return this.alph2CoNbdoscedi;
	}

	public void setAlph2CoNbdoscedi(Long alph2CoNbdoscedi) {
		this.alph2CoNbdoscedi = alph2CoNbdoscedi;
	}

	public Long getAlph2CoNbdoscepa() {
		return this.alph2CoNbdoscepa;
	}

	public void setAlph2CoNbdoscepa(Long alph2CoNbdoscepa) {
		this.alph2CoNbdoscepa = alph2CoNbdoscepa;
	}

	public Long getAlph2CoNbdoscof() {
		return this.alph2CoNbdoscof;
	}

	public void setAlph2CoNbdoscof(Long alph2CoNbdoscof) {
		this.alph2CoNbdoscof = alph2CoNbdoscof;
	}

	public Long getAlph2CoNbclacef7() {
		return this.alph2CoNbclacef7;
	}

	public void setAlph2CoNbclacef7(Long alph2CoNbclacef7) {
		this.alph2CoNbclacef7 = alph2CoNbclacef7;
	}

	public Long getAlph2CoNbclacenf7() {
		return this.alph2CoNbclacenf7;
	}

	public void setAlph2CoNbclacenf7(Long alph2CoNbclacenf7) {
		this.alph2CoNbclacenf7 = alph2CoNbclacenf7;
	}

	public Long getAlph2CoNbclacof7() {
		return this.alph2CoNbclacof7;
	}

	public void setAlph2CoNbclacof7(Long alph2CoNbclacof7) {
		this.alph2CoNbclacof7 = alph2CoNbclacof7;
	}

	public Long getAlph2CoNbclaconf7() {
		return this.alph2CoNbclaconf7;
	}

	public void setAlph2CoNbclaconf7(Long alph2CoNbclaconf7) {
		this.alph2CoNbclaconf7 = alph2CoNbclaconf7;
	}

	public Long getAlph2CoNbcaf7() {
		return this.alph2CoNbcaf7;
	}

	public void setAlph2CoNbcaf7(Long alph2CoNbcaf7) {
		this.alph2CoNbcaf7 = alph2CoNbcaf7;
	}

	public Long getAlph2CoNbcanf7() {
		return this.alph2CoNbcanf7;
	}

	public void setAlph2CoNbcanf7(Long alph2CoNbcanf7) {
		this.alph2CoNbcanf7 = alph2CoNbcanf7;
	}

	public Long getAlph2CoNbcpf7() {
		return this.alph2CoNbcpf7;
	}

	public void setAlph2CoNbcpf7(Long alph2CoNbcpf7) {
		this.alph2CoNbcpf7 = alph2CoNbcpf7;
	}

	public Long getAlph2CoNbcpnf7() {
		return this.alph2CoNbcpnf7;
	}

	public void setAlph2CoNbcpnf7(Long alph2CoNbcpnf7) {
		this.alph2CoNbcpnf7 = alph2CoNbcpnf7;
	}

	public Long getAlph2CoNbcontf7() {
		return this.alph2CoNbcontf7;
	}

	public void setAlph2CoNbcontf7(Long alph2CoNbcontf7) {
		this.alph2CoNbcontf7 = alph2CoNbcontf7;
	}

	public Long getAlph2CoNbbail() {
		return this.alph2CoNbbail;
	}

	public void setAlph2CoNbbail(Long alph2CoNbbail) {
		this.alph2CoNbbail = alph2CoNbbail;
	}

	public Long getAlph2CoNbca() {
		return this.alph2CoNbca;
	}

	public void setAlph2CoNbca(Long alph2CoNbca) {
		this.alph2CoNbca = alph2CoNbca;
	}

	public Long getAlph2CoNbcb() {
		return this.alph2CoNbcb;
	}

	public void setAlph2CoNbcb(Long alph2CoNbcb) {
		this.alph2CoNbcb = alph2CoNbcb;
	}

	public Long getAlph2CoNbref3() {
		return this.alph2CoNbref3;
	}

	public void setAlph2CoNbref3(Long alph2CoNbref3) {
		this.alph2CoNbref3 = alph2CoNbref3;
	}

	public Long getAlph2CoNbdts() {
		return this.alph2CoNbdts;
	}

	public void setAlph2CoNbdts(Long alph2CoNbdts) {
		this.alph2CoNbdts = alph2CoNbdts;
	}

	public String getAlph2CoSitodudts() {
		return this.alph2CoSitodudts;
	}

	public void setAlph2CoSitodudts(String alph2CoSitodudts) {
		this.alph2CoSitodudts = alph2CoSitodudts;
	}

	public Long getAlph2CoMttodudts() {
		return this.alph2CoMttodudts;
	}

	public void setAlph2CoMttodudts(Long alph2CoMttodudts) {
		this.alph2CoMttodudts = alph2CoMttodudts;
	}

	public Date getAlph2CoDvalqualenc() {
		return this.alph2CoDvalqualenc;
	}

	public void setAlph2CoDvalqualenc(Date alph2CoDvalqualenc) {
		this.alph2CoDvalqualenc = alph2CoDvalqualenc;
	}

	public Long getAlph2CoMensdtsactf7() {
		return this.alph2CoMensdtsactf7;
	}

	public void setAlph2CoMensdtsactf7(Long alph2CoMensdtsactf7) {
		this.alph2CoMensdtsactf7 = alph2CoMensdtsactf7;
	}

	public Long getAlph2CoMensdtsactmltf7() {
		return this.alph2CoMensdtsactmltf7;
	}

	public void setAlph2CoMensdtsactmltf7(Long alph2CoMensdtsactmltf7) {
		this.alph2CoMensdtsactmltf7 = alph2CoMensdtsactmltf7;
	}

	public String getAlph2CoCptt() {
		return this.alph2CoCptt;
	}

	public void setAlph2CoCptt(String alph2CoCptt) {
		this.alph2CoCptt = alph2CoCptt;
	}

	public Long getAlph2CoEcvtc() {
		return this.alph2CoEcvtc;
	}

	public void setAlph2CoEcvtc(Long alph2CoEcvtc) {
		this.alph2CoEcvtc = alph2CoEcvtc;
	}

	public Long getAlph2CoEcox3() {
		return this.alph2CoEcox3;
	}

	public void setAlph2CoEcox3(Long alph2CoEcox3) {
		this.alph2CoEcox3 = alph2CoEcox3;
	}

	public Long getAlph2CoEcrev() {
		return this.alph2CoEcrev;
	}

	public void setAlph2CoEcrev(Long alph2CoEcrev) {
		this.alph2CoEcrev = alph2CoEcrev;
	}

	public Long getAlph2CoNbvtc() {
		return this.alph2CoNbvtc;
	}

	public void setAlph2CoNbvtc(Long alph2CoNbvtc) {
		this.alph2CoNbvtc = alph2CoNbvtc;
	}

	public String getAlph2CoRecidive() {
		return this.alph2CoRecidive;
	}

	public void setAlph2CoRecidive(String alph2CoRecidive) {
		this.alph2CoRecidive = alph2CoRecidive;
	}

	public String getAlph1AoFext() {
		return this.alph1AoFext;
	}

	public void setAlph1AoFext(String alph1AoFext) {
		this.alph1AoFext = alph1AoFext;
	}

	public String getAlph1AoCposc() {
		return this.alph1AoCposc;
	}

	public void setAlph1AoCposc(String alph1AoCposc) {
		this.alph1AoCposc = alph1AoCposc;
	}

	public String getAlph1AoCposd() {
		return this.alph1AoCposd;
	}

	public void setAlph1AoCposd(String alph1AoCposd) {
		this.alph1AoCposd = alph1AoCposd;
	}

	public String getAlph1AoPlinc() {
		return this.alph1AoPlinc;
	}

	public void setAlph1AoPlinc(String alph1AoPlinc) {
		this.alph1AoPlinc = alph1AoPlinc;
	}

	public String getAlph1AoPlnotqual() {
		return this.alph1AoPlnotqual;
	}

	public void setAlph1AoPlnotqual(String alph1AoPlnotqual) {
		this.alph1AoPlnotqual = alph1AoPlnotqual;
	}

	public String getAlph1AoSinotntz() {
		return this.alph1AoSinotntz;
	}

	public void setAlph1AoSinotntz(String alph1AoSinotntz) {
		this.alph1AoSinotntz = alph1AoSinotntz;
	}

	public String getAlph1AoPlnotntz() {
		return this.alph1AoPlnotntz;
	}

	public void setAlph1AoPlnotntz(String alph1AoPlnotntz) {
		this.alph1AoPlnotntz = alph1AoPlnotntz;
	}

	public String getAlph1AoSinotcli() {
		return this.alph1AoSinotcli;
	}

	public void setAlph1AoSinotcli(String alph1AoSinotcli) {
		this.alph1AoSinotcli = alph1AoSinotcli;
	}

	public String getAlph1AoPlnotcli() {
		return this.alph1AoPlnotcli;
	}

	public void setAlph1AoPlnotcli(String alph1AoPlnotcli) {
		this.alph1AoPlnotcli = alph1AoPlnotcli;
	}

	public String getAlph1AoPlnotassdm() {
		return this.alph1AoPlnotassdm;
	}

	public void setAlph1AoPlnotassdm(String alph1AoPlnotassdm) {
		this.alph1AoPlnotassdm = alph1AoPlnotassdm;
	}

	public String getAlph1AoPlnotassch() {
		return this.alph1AoPlnotassch;
	}

	public void setAlph1AoPlnotassch(String alph1AoPlnotassch) {
		this.alph1AoPlnotassch = alph1AoPlnotassch;
	}

	public String getAlph1AoPlrisassdm() {
		return this.alph1AoPlrisassdm;
	}

	public void setAlph1AoPlrisassdm(String alph1AoPlrisassdm) {
		this.alph1AoPlrisassdm = alph1AoPlrisassdm;
	}

	public String getAlph1AoPlrisassch() {
		return this.alph1AoPlrisassch;
	}

	public void setAlph1AoPlrisassch(String alph1AoPlrisassch) {
		this.alph1AoPlrisassch = alph1AoPlrisassch;
	}

	public String getAlph1AoCreact() {
		return this.alph1AoCreact;
	}

	public void setAlph1AoCreact(String alph1AoCreact) {
		this.alph1AoCreact = alph1AoCreact;
	}

	public Long getAlph1AoMenspotpd() {
		return this.alph1AoMenspotpd;
	}

	public void setAlph1AoMenspotpd(Long alph1AoMenspotpd) {
		this.alph1AoMenspotpd = alph1AoMenspotpd;
	}

	public Long getAlph1AoEncpotd() {
		return this.alph1AoEncpotd;
	}

	public void setAlph1AoEncpotd(Long alph1AoEncpotd) {
		this.alph1AoEncpotd = alph1AoEncpotd;
	}

	public Long getAlph1AoEncpotpd() {
		return this.alph1AoEncpotpd;
	}

	public void setAlph1AoEncpotpd(Long alph1AoEncpotpd) {
		this.alph1AoEncpotpd = alph1AoEncpotpd;
	}

	public Long getAlph1AoEncpotp() {
		return this.alph1AoEncpotp;
	}

	public void setAlph1AoEncpotp(Long alph1AoEncpotp) {
		this.alph1AoEncpotp = alph1AoEncpotp;
	}

	public String getAlph1AoSiencauto() {
		return this.alph1AoSiencauto;
	}

	public void setAlph1AoSiencauto(String alph1AoSiencauto) {
		this.alph1AoSiencauto = alph1AoSiencauto;
	}

	public Long getAlph1AoEncauto() {
		return this.alph1AoEncauto;
	}

	public void setAlph1AoEncauto(Long alph1AoEncauto) {
		this.alph1AoEncauto = alph1AoEncauto;
	}

	public String getAlph1AoSiencautod() {
		return this.alph1AoSiencautod;
	}

	public void setAlph1AoSiencautod(String alph1AoSiencautod) {
		this.alph1AoSiencautod = alph1AoSiencautod;
	}

	public Long getAlph1AoEncautod() {
		return this.alph1AoEncautod;
	}

	public void setAlph1AoEncautod(Long alph1AoEncautod) {
		this.alph1AoEncautod = alph1AoEncautod;
	}

	public String getAlph1AoSiencreel() {
		return this.alph1AoSiencreel;
	}

	public void setAlph1AoSiencreel(String alph1AoSiencreel) {
		this.alph1AoSiencreel = alph1AoSiencreel;
	}

	public Long getAlph1AoEncreel() {
		return this.alph1AoEncreel;
	}

	public void setAlph1AoEncreel(Long alph1AoEncreel) {
		this.alph1AoEncreel = alph1AoEncreel;
	}

	public String getAlph1AoSiencreelmlt() {
		return this.alph1AoSiencreelmlt;
	}

	public void setAlph1AoSiencreelmlt(String alph1AoSiencreelmlt) {
		this.alph1AoSiencreelmlt = alph1AoSiencreelmlt;
	}

	public Long getAlph1AoEncreelmlt() {
		return this.alph1AoEncreelmlt;
	}

	public void setAlph1AoEncreelmlt(Long alph1AoEncreelmlt) {
		this.alph1AoEncreelmlt = alph1AoEncreelmlt;
	}

	public Long getAlph1AoSommensmin() {
		return this.alph1AoSommensmin;
	}

	public void setAlph1AoSommensmin(Long alph1AoSommensmin) {
		this.alph1AoSommensmin = alph1AoSommensmin;
	}

	public Long getAlph1AoSommensact() {
		return this.alph1AoSommensact;
	}

	public void setAlph1AoSommensact(Long alph1AoSommensact) {
		this.alph1AoSommensact = alph1AoSommensact;
	}

	public Long getAlph1AoSommensmlt() {
		return this.alph1AoSommensmlt;
	}

	public void setAlph1AoSommensmlt(Long alph1AoSommensmlt) {
		this.alph1AoSommensmlt = alph1AoSommensmlt;
	}

	public Long getAlph1AoNbmoisdpreac() {
		return this.alph1AoNbmoisdpreac;
	}

	public void setAlph1AoNbmoisdpreac(Long alph1AoNbmoisdpreac) {
		this.alph1AoNbmoisdpreac = alph1AoNbmoisdpreac;
	}

	public Long getAlph1AoMtdpreac() {
		return this.alph1AoMtdpreac;
	}

	public void setAlph1AoMtdpreac(Long alph1AoMtdpreac) {
		this.alph1AoMtdpreac = alph1AoMtdpreac;
	}

	public Long getAlph1AoNbmoisdetuds() {
		return this.alph1AoNbmoisdetuds;
	}

	public void setAlph1AoNbmoisdetuds(Long alph1AoNbmoisdetuds) {
		this.alph1AoNbmoisdetuds = alph1AoNbmoisdetuds;
	}

	public Long getAlph1AoMtdetuds() {
		return this.alph1AoMtdetuds;
	}

	public void setAlph1AoMtdetuds(Long alph1AoMtdetuds) {
		this.alph1AoMtdetuds = alph1AoMtdetuds;
	}

	public Long getAlph1AoNbmoisdetudc() {
		return this.alph1AoNbmoisdetudc;
	}

	public void setAlph1AoNbmoisdetudc(Long alph1AoNbmoisdetudc) {
		this.alph1AoNbmoisdetudc = alph1AoNbmoisdetudc;
	}

	public Long getAlph1AoMtdetudc() {
		return this.alph1AoMtdetudc;
	}

	public void setAlph1AoMtdetudc(Long alph1AoMtdetudc) {
		this.alph1AoMtdetudc = alph1AoMtdetudc;
	}

	public Long getAlph1AoNbdoscedi() {
		return this.alph1AoNbdoscedi;
	}

	public void setAlph1AoNbdoscedi(Long alph1AoNbdoscedi) {
		this.alph1AoNbdoscedi = alph1AoNbdoscedi;
	}

	public Long getAlph1AoNbdoscepa() {
		return this.alph1AoNbdoscepa;
	}

	public void setAlph1AoNbdoscepa(Long alph1AoNbdoscepa) {
		this.alph1AoNbdoscepa = alph1AoNbdoscepa;
	}

	public Long getAlph1AoNbdoscof() {
		return this.alph1AoNbdoscof;
	}

	public void setAlph1AoNbdoscof(Long alph1AoNbdoscof) {
		this.alph1AoNbdoscof = alph1AoNbdoscof;
	}

	public Long getAlph1AoNbclacef7() {
		return this.alph1AoNbclacef7;
	}

	public void setAlph1AoNbclacef7(Long alph1AoNbclacef7) {
		this.alph1AoNbclacef7 = alph1AoNbclacef7;
	}

	public Long getAlph1AoNbclacenf7() {
		return this.alph1AoNbclacenf7;
	}

	public void setAlph1AoNbclacenf7(Long alph1AoNbclacenf7) {
		this.alph1AoNbclacenf7 = alph1AoNbclacenf7;
	}

	public Long getAlph1AoNbclacof7() {
		return this.alph1AoNbclacof7;
	}

	public void setAlph1AoNbclacof7(Long alph1AoNbclacof7) {
		this.alph1AoNbclacof7 = alph1AoNbclacof7;
	}

	public Long getAlph1AoNbclaconf7() {
		return this.alph1AoNbclaconf7;
	}

	public void setAlph1AoNbclaconf7(Long alph1AoNbclaconf7) {
		this.alph1AoNbclaconf7 = alph1AoNbclaconf7;
	}

	public Long getAlph1AoNbcaf7() {
		return this.alph1AoNbcaf7;
	}

	public void setAlph1AoNbcaf7(Long alph1AoNbcaf7) {
		this.alph1AoNbcaf7 = alph1AoNbcaf7;
	}

	public Long getAlph1AoNbcanf7() {
		return this.alph1AoNbcanf7;
	}

	public void setAlph1AoNbcanf7(Long alph1AoNbcanf7) {
		this.alph1AoNbcanf7 = alph1AoNbcanf7;
	}

	public Long getAlph1AoNbcpf7() {
		return this.alph1AoNbcpf7;
	}

	public void setAlph1AoNbcpf7(Long alph1AoNbcpf7) {
		this.alph1AoNbcpf7 = alph1AoNbcpf7;
	}

	public Long getAlph1AoNbcpnf7() {
		return this.alph1AoNbcpnf7;
	}

	public void setAlph1AoNbcpnf7(Long alph1AoNbcpnf7) {
		this.alph1AoNbcpnf7 = alph1AoNbcpnf7;
	}

	public Long getAlph1AoNbcontf7() {
		return this.alph1AoNbcontf7;
	}

	public void setAlph1AoNbcontf7(Long alph1AoNbcontf7) {
		this.alph1AoNbcontf7 = alph1AoNbcontf7;
	}

	public Long getAlph1AoNbbail() {
		return this.alph1AoNbbail;
	}

	public void setAlph1AoNbbail(Long alph1AoNbbail) {
		this.alph1AoNbbail = alph1AoNbbail;
	}

	public Long getAlph1AoNbca() {
		return this.alph1AoNbca;
	}

	public void setAlph1AoNbca(Long alph1AoNbca) {
		this.alph1AoNbca = alph1AoNbca;
	}

	public Long getAlph1AoNbcb() {
		return this.alph1AoNbcb;
	}

	public void setAlph1AoNbcb(Long alph1AoNbcb) {
		this.alph1AoNbcb = alph1AoNbcb;
	}

	public Long getAlph1AoNbref3() {
		return this.alph1AoNbref3;
	}

	public void setAlph1AoNbref3(Long alph1AoNbref3) {
		this.alph1AoNbref3 = alph1AoNbref3;
	}

	public Long getAlph1AoNbdts() {
		return this.alph1AoNbdts;
	}

	public void setAlph1AoNbdts(Long alph1AoNbdts) {
		this.alph1AoNbdts = alph1AoNbdts;
	}

	public String getAlph1AoSitodudts() {
		return this.alph1AoSitodudts;
	}

	public void setAlph1AoSitodudts(String alph1AoSitodudts) {
		this.alph1AoSitodudts = alph1AoSitodudts;
	}

	public Long getAlph1AoMttodudts() {
		return this.alph1AoMttodudts;
	}

	public void setAlph1AoMttodudts(Long alph1AoMttodudts) {
		this.alph1AoMttodudts = alph1AoMttodudts;
	}

	public Date getAlph1AoDvalqualenc() {
		return this.alph1AoDvalqualenc;
	}

	public void setAlph1AoDvalqualenc(Date alph1AoDvalqualenc) {
		this.alph1AoDvalqualenc = alph1AoDvalqualenc;
	}

	public Long getAlph1AoMensdtsactf7() {
		return this.alph1AoMensdtsactf7;
	}

	public void setAlph1AoMensdtsactf7(Long alph1AoMensdtsactf7) {
		this.alph1AoMensdtsactf7 = alph1AoMensdtsactf7;
	}

	public Long getAlph1AoMensdtsactmltf7() {
		return this.alph1AoMensdtsactmltf7;
	}

	public void setAlph1AoMensdtsactmltf7(Long alph1AoMensdtsactmltf7) {
		this.alph1AoMensdtsactmltf7 = alph1AoMensdtsactmltf7;
	}

	public String getAlph1AoCptt() {
		return this.alph1AoCptt;
	}

	public void setAlph1AoCptt(String alph1AoCptt) {
		this.alph1AoCptt = alph1AoCptt;
	}

	public Long getAlph1AoEcvtc() {
		return this.alph1AoEcvtc;
	}

	public void setAlph1AoEcvtc(Long alph1AoEcvtc) {
		this.alph1AoEcvtc = alph1AoEcvtc;
	}

	public Long getAlph1AoEcox3() {
		return this.alph1AoEcox3;
	}

	public void setAlph1AoEcox3(Long alph1AoEcox3) {
		this.alph1AoEcox3 = alph1AoEcox3;
	}

	public Long getAlph1AoEcrev() {
		return this.alph1AoEcrev;
	}

	public void setAlph1AoEcrev(Long alph1AoEcrev) {
		this.alph1AoEcrev = alph1AoEcrev;
	}

	public Long getAlph1AoNbvtc() {
		return this.alph1AoNbvtc;
	}

	public void setAlph1AoNbvtc(Long alph1AoNbvtc) {
		this.alph1AoNbvtc = alph1AoNbvtc;
	}

	public String getAlph1AoRecidive() {
		return this.alph1AoRecidive;
	}

	public void setAlph1AoRecidive(String alph1AoRecidive) {
		this.alph1AoRecidive = alph1AoRecidive;
	}

	public String getAlph2AoFext() {
		return this.alph2AoFext;
	}

	public void setAlph2AoFext(String alph2AoFext) {
		this.alph2AoFext = alph2AoFext;
	}

	public String getAlph2AoCposc() {
		return this.alph2AoCposc;
	}

	public void setAlph2AoCposc(String alph2AoCposc) {
		this.alph2AoCposc = alph2AoCposc;
	}

	public String getAlph2AoCposd() {
		return this.alph2AoCposd;
	}

	public void setAlph2AoCposd(String alph2AoCposd) {
		this.alph2AoCposd = alph2AoCposd;
	}

	public String getAlph2AoPlinc() {
		return this.alph2AoPlinc;
	}

	public void setAlph2AoPlinc(String alph2AoPlinc) {
		this.alph2AoPlinc = alph2AoPlinc;
	}

	public String getAlph2AoPlnotqual() {
		return this.alph2AoPlnotqual;
	}

	public void setAlph2AoPlnotqual(String alph2AoPlnotqual) {
		this.alph2AoPlnotqual = alph2AoPlnotqual;
	}

	public String getAlph2AoSinotntz() {
		return this.alph2AoSinotntz;
	}

	public void setAlph2AoSinotntz(String alph2AoSinotntz) {
		this.alph2AoSinotntz = alph2AoSinotntz;
	}

	public String getAlph2AoPlnotntz() {
		return this.alph2AoPlnotntz;
	}

	public void setAlph2AoPlnotntz(String alph2AoPlnotntz) {
		this.alph2AoPlnotntz = alph2AoPlnotntz;
	}

	public String getAlph2AoSinotcli() {
		return this.alph2AoSinotcli;
	}

	public void setAlph2AoSinotcli(String alph2AoSinotcli) {
		this.alph2AoSinotcli = alph2AoSinotcli;
	}

	public String getAlph2AoPlnotcli() {
		return this.alph2AoPlnotcli;
	}

	public void setAlph2AoPlnotcli(String alph2AoPlnotcli) {
		this.alph2AoPlnotcli = alph2AoPlnotcli;
	}

	public String getAlph2AoPlnotassdm() {
		return this.alph2AoPlnotassdm;
	}

	public void setAlph2AoPlnotassdm(String alph2AoPlnotassdm) {
		this.alph2AoPlnotassdm = alph2AoPlnotassdm;
	}

	public String getAlph2AoPlnotassch() {
		return this.alph2AoPlnotassch;
	}

	public void setAlph2AoPlnotassch(String alph2AoPlnotassch) {
		this.alph2AoPlnotassch = alph2AoPlnotassch;
	}

	public String getAlph2AoPlrisassdm() {
		return this.alph2AoPlrisassdm;
	}

	public void setAlph2AoPlrisassdm(String alph2AoPlrisassdm) {
		this.alph2AoPlrisassdm = alph2AoPlrisassdm;
	}

	public String getAlph2AoPlrisassch() {
		return this.alph2AoPlrisassch;
	}

	public void setAlph2AoPlrisassch(String alph2AoPlrisassch) {
		this.alph2AoPlrisassch = alph2AoPlrisassch;
	}

	public String getAlph2AoCreact() {
		return this.alph2AoCreact;
	}

	public void setAlph2AoCreact(String alph2AoCreact) {
		this.alph2AoCreact = alph2AoCreact;
	}

	public Long getAlph2AoMenspotpd() {
		return this.alph2AoMenspotpd;
	}

	public void setAlph2AoMenspotpd(Long alph2AoMenspotpd) {
		this.alph2AoMenspotpd = alph2AoMenspotpd;
	}

	public Long getAlph2AoEncpotd() {
		return this.alph2AoEncpotd;
	}

	public void setAlph2AoEncpotd(Long alph2AoEncpotd) {
		this.alph2AoEncpotd = alph2AoEncpotd;
	}

	public Long getAlph2AoEncpotpd() {
		return this.alph2AoEncpotpd;
	}

	public void setAlph2AoEncpotpd(Long alph2AoEncpotpd) {
		this.alph2AoEncpotpd = alph2AoEncpotpd;
	}

	public Long getAlph2AoEncpotp() {
		return this.alph2AoEncpotp;
	}

	public void setAlph2AoEncpotp(Long alph2AoEncpotp) {
		this.alph2AoEncpotp = alph2AoEncpotp;
	}

	public String getAlph2AoSiencauto() {
		return this.alph2AoSiencauto;
	}

	public void setAlph2AoSiencauto(String alph2AoSiencauto) {
		this.alph2AoSiencauto = alph2AoSiencauto;
	}

	public Long getAlph2AoEncauto() {
		return this.alph2AoEncauto;
	}

	public void setAlph2AoEncauto(Long alph2AoEncauto) {
		this.alph2AoEncauto = alph2AoEncauto;
	}

	public String getAlph2AoSiencautod() {
		return this.alph2AoSiencautod;
	}

	public void setAlph2AoSiencautod(String alph2AoSiencautod) {
		this.alph2AoSiencautod = alph2AoSiencautod;
	}

	public Long getAlph2AoEncautod() {
		return this.alph2AoEncautod;
	}

	public void setAlph2AoEncautod(Long alph2AoEncautod) {
		this.alph2AoEncautod = alph2AoEncautod;
	}

	public String getAlph2AoSiencreel() {
		return this.alph2AoSiencreel;
	}

	public void setAlph2AoSiencreel(String alph2AoSiencreel) {
		this.alph2AoSiencreel = alph2AoSiencreel;
	}

	public Long getAlph2AoEncreel() {
		return this.alph2AoEncreel;
	}

	public void setAlph2AoEncreel(Long alph2AoEncreel) {
		this.alph2AoEncreel = alph2AoEncreel;
	}

	public String getAlph2AoSiencreelmlt() {
		return this.alph2AoSiencreelmlt;
	}

	public void setAlph2AoSiencreelmlt(String alph2AoSiencreelmlt) {
		this.alph2AoSiencreelmlt = alph2AoSiencreelmlt;
	}

	public Long getAlph2AoEncreelmlt() {
		return this.alph2AoEncreelmlt;
	}

	public void setAlph2AoEncreelmlt(Long alph2AoEncreelmlt) {
		this.alph2AoEncreelmlt = alph2AoEncreelmlt;
	}

	public Long getAlph2AoSommensmin() {
		return this.alph2AoSommensmin;
	}

	public void setAlph2AoSommensmin(Long alph2AoSommensmin) {
		this.alph2AoSommensmin = alph2AoSommensmin;
	}

	public Long getAlph2AoSommensact() {
		return this.alph2AoSommensact;
	}

	public void setAlph2AoSommensact(Long alph2AoSommensact) {
		this.alph2AoSommensact = alph2AoSommensact;
	}

	public Long getAlph2AoSommensmlt() {
		return this.alph2AoSommensmlt;
	}

	public void setAlph2AoSommensmlt(Long alph2AoSommensmlt) {
		this.alph2AoSommensmlt = alph2AoSommensmlt;
	}

	public Long getAlph2AoNbmoisdpreac() {
		return this.alph2AoNbmoisdpreac;
	}

	public void setAlph2AoNbmoisdpreac(Long alph2AoNbmoisdpreac) {
		this.alph2AoNbmoisdpreac = alph2AoNbmoisdpreac;
	}

	public Long getAlph2AoMtdpreac() {
		return this.alph2AoMtdpreac;
	}

	public void setAlph2AoMtdpreac(Long alph2AoMtdpreac) {
		this.alph2AoMtdpreac = alph2AoMtdpreac;
	}

	public Long getAlph2AoNbmoisdetuds() {
		return this.alph2AoNbmoisdetuds;
	}

	public void setAlph2AoNbmoisdetuds(Long alph2AoNbmoisdetuds) {
		this.alph2AoNbmoisdetuds = alph2AoNbmoisdetuds;
	}

	public Long getAlph2AoMtdetuds() {
		return this.alph2AoMtdetuds;
	}

	public void setAlph2AoMtdetuds(Long alph2AoMtdetuds) {
		this.alph2AoMtdetuds = alph2AoMtdetuds;
	}

	public Long getAlph2AoNbmoisdetudc() {
		return this.alph2AoNbmoisdetudc;
	}

	public void setAlph2AoNbmoisdetudc(Long alph2AoNbmoisdetudc) {
		this.alph2AoNbmoisdetudc = alph2AoNbmoisdetudc;
	}

	public Long getAlph2AoMtdetudc() {
		return this.alph2AoMtdetudc;
	}

	public void setAlph2AoMtdetudc(Long alph2AoMtdetudc) {
		this.alph2AoMtdetudc = alph2AoMtdetudc;
	}

	public Long getAlph2AoNbdoscedi() {
		return this.alph2AoNbdoscedi;
	}

	public void setAlph2AoNbdoscedi(Long alph2AoNbdoscedi) {
		this.alph2AoNbdoscedi = alph2AoNbdoscedi;
	}

	public Long getAlph2AoNbdoscepa() {
		return this.alph2AoNbdoscepa;
	}

	public void setAlph2AoNbdoscepa(Long alph2AoNbdoscepa) {
		this.alph2AoNbdoscepa = alph2AoNbdoscepa;
	}

	public Long getAlph2AoNbdoscof() {
		return this.alph2AoNbdoscof;
	}

	public void setAlph2AoNbdoscof(Long alph2AoNbdoscof) {
		this.alph2AoNbdoscof = alph2AoNbdoscof;
	}

	public Long getAlph2AoNbclacef7() {
		return this.alph2AoNbclacef7;
	}

	public void setAlph2AoNbclacef7(Long alph2AoNbclacef7) {
		this.alph2AoNbclacef7 = alph2AoNbclacef7;
	}

	public Long getAlph2AoNbclacenf7() {
		return this.alph2AoNbclacenf7;
	}

	public void setAlph2AoNbclacenf7(Long alph2AoNbclacenf7) {
		this.alph2AoNbclacenf7 = alph2AoNbclacenf7;
	}

	public Long getAlph2AoNbclacof7() {
		return this.alph2AoNbclacof7;
	}

	public void setAlph2AoNbclacof7(Long alph2AoNbclacof7) {
		this.alph2AoNbclacof7 = alph2AoNbclacof7;
	}

	public Long getAlph2AoNbclaconf7() {
		return this.alph2AoNbclaconf7;
	}

	public void setAlph2AoNbclaconf7(Long alph2AoNbclaconf7) {
		this.alph2AoNbclaconf7 = alph2AoNbclaconf7;
	}

	public Long getAlph2AoNbcaf7() {
		return this.alph2AoNbcaf7;
	}

	public void setAlph2AoNbcaf7(Long alph2AoNbcaf7) {
		this.alph2AoNbcaf7 = alph2AoNbcaf7;
	}

	public Long getAlph2AoNbcanf7() {
		return this.alph2AoNbcanf7;
	}

	public void setAlph2AoNbcanf7(Long alph2AoNbcanf7) {
		this.alph2AoNbcanf7 = alph2AoNbcanf7;
	}

	public Long getAlph2AoNbcpf7() {
		return this.alph2AoNbcpf7;
	}

	public void setAlph2AoNbcpf7(Long alph2AoNbcpf7) {
		this.alph2AoNbcpf7 = alph2AoNbcpf7;
	}

	public Long getAlph2AoNbcpnf7() {
		return this.alph2AoNbcpnf7;
	}

	public void setAlph2AoNbcpnf7(Long alph2AoNbcpnf7) {
		this.alph2AoNbcpnf7 = alph2AoNbcpnf7;
	}

	public Long getAlph2AoNbcontf7() {
		return this.alph2AoNbcontf7;
	}

	public void setAlph2AoNbcontf7(Long alph2AoNbcontf7) {
		this.alph2AoNbcontf7 = alph2AoNbcontf7;
	}

	public Long getAlph2AoNbbail() {
		return this.alph2AoNbbail;
	}

	public void setAlph2AoNbbail(Long alph2AoNbbail) {
		this.alph2AoNbbail = alph2AoNbbail;
	}

	public Long getAlph2AoNbca() {
		return this.alph2AoNbca;
	}

	public void setAlph2AoNbca(Long alph2AoNbca) {
		this.alph2AoNbca = alph2AoNbca;
	}

	public Long getAlph2AoNbcb() {
		return this.alph2AoNbcb;
	}

	public void setAlph2AoNbcb(Long alph2AoNbcb) {
		this.alph2AoNbcb = alph2AoNbcb;
	}

	public Long getAlph2AoNbref3() {
		return this.alph2AoNbref3;
	}

	public void setAlph2AoNbref3(Long alph2AoNbref3) {
		this.alph2AoNbref3 = alph2AoNbref3;
	}

	public Long getAlph2AoNbdts() {
		return this.alph2AoNbdts;
	}

	public void setAlph2AoNbdts(Long alph2AoNbdts) {
		this.alph2AoNbdts = alph2AoNbdts;
	}

	public String getAlph2AoSitodudts() {
		return this.alph2AoSitodudts;
	}

	public void setAlph2AoSitodudts(String alph2AoSitodudts) {
		this.alph2AoSitodudts = alph2AoSitodudts;
	}

	public Long getAlph2AoMttodudts() {
		return this.alph2AoMttodudts;
	}

	public void setAlph2AoMttodudts(Long alph2AoMttodudts) {
		this.alph2AoMttodudts = alph2AoMttodudts;
	}

	public Date getAlph2AoDvalqualenc() {
		return this.alph2AoDvalqualenc;
	}

	public void setAlph2AoDvalqualenc(Date alph2AoDvalqualenc) {
		this.alph2AoDvalqualenc = alph2AoDvalqualenc;
	}

	public Long getAlph2AoMensdtsactf7() {
		return this.alph2AoMensdtsactf7;
	}

	public void setAlph2AoMensdtsactf7(Long alph2AoMensdtsactf7) {
		this.alph2AoMensdtsactf7 = alph2AoMensdtsactf7;
	}

	public Long getAlph2AoMensdtsactmltf7() {
		return this.alph2AoMensdtsactmltf7;
	}

	public void setAlph2AoMensdtsactmltf7(Long alph2AoMensdtsactmltf7) {
		this.alph2AoMensdtsactmltf7 = alph2AoMensdtsactmltf7;
	}

	public String getAlph2AoCptt() {
		return this.alph2AoCptt;
	}

	public void setAlph2AoCptt(String alph2AoCptt) {
		this.alph2AoCptt = alph2AoCptt;
	}

	public Long getAlph2AoEcvtc() {
		return this.alph2AoEcvtc;
	}

	public void setAlph2AoEcvtc(Long alph2AoEcvtc) {
		this.alph2AoEcvtc = alph2AoEcvtc;
	}

	public Long getAlph2AoEcox3() {
		return this.alph2AoEcox3;
	}

	public void setAlph2AoEcox3(Long alph2AoEcox3) {
		this.alph2AoEcox3 = alph2AoEcox3;
	}

	public Long getAlph2AoEcrev() {
		return this.alph2AoEcrev;
	}

	public void setAlph2AoEcrev(Long alph2AoEcrev) {
		this.alph2AoEcrev = alph2AoEcrev;
	}

	public Long getAlph2AoNbvtc() {
		return this.alph2AoNbvtc;
	}

	public void setAlph2AoNbvtc(Long alph2AoNbvtc) {
		this.alph2AoNbvtc = alph2AoNbvtc;
	}

	public String getAlph2AoRecidive() {
		return this.alph2AoRecidive;
	}

	public void setAlph2AoRecidive(String alph2AoRecidive) {
		this.alph2AoRecidive = alph2AoRecidive;
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

	public Date getDateLastPbocInquiry() {
		return this.dateLastPbocInquiry;
	}

	public void setDateLastPbocInquiry(Date dateLastPbocInquiry) {
		this.dateLastPbocInquiry = dateLastPbocInquiry;
	}

}