package cn.cetelem.track.audit.domain;

import java.util.Date;

/**
 * DesMainAudit entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class DesMainAudit extends BaseAudit implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long logId;
	private String requestId;
	private String appId;
	private String workflowId;
	private String stepId;
	private String desStatus;
	private Date logDateTime;
	
	private DesAlphaAudit desAlpha;
	private DesBasicAudit desBasic;
	private DesDecisionsAudit desDecision;
	private DesExtAudit desExt;
	private DesRisqbisAudit desRisqbis;

	// Constructors

	/** default constructor */
	public DesMainAudit() {
	}

	/** minimal constructor */
	public DesMainAudit(Long logId) {
		this.logId = logId;
	}

	// Property accessors

	public Long getLogId() {
		return this.logId;
	}

	public void setLogId(Long logId) {
		this.logId = logId;
	}

	public String getRequestId() {
		return this.requestId;
	}

	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}

	public String getAppId() {
		return this.appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

	public String getWorkflowId() {
		return this.workflowId;
	}

	public void setWorkflowId(String workflowId) {
		this.workflowId = workflowId;
	}

	public String getStepId() {
		return this.stepId;
	}

	public void setStepId(String stepId) {
		this.stepId = stepId;
	}

	public String getDesStatus() {
		return this.desStatus;
	}

	public void setDesStatus(String desStatus) {
		this.desStatus = desStatus;
	}

	public Date getLogDateTime() {
		return this.logDateTime;
	}

	public void setLogDateTime(Date logDateTime) {
		this.logDateTime = logDateTime;
	}

	public DesAlphaAudit getDesAlpha() {
		return desAlpha;
	}

	public void setDesAlpha(DesAlphaAudit desAlpha) {
		this.desAlpha = desAlpha;
	}

	public DesBasicAudit getDesBasic() {
		return desBasic;
	}

	public void setDesBasic(DesBasicAudit desBasic) {
		this.desBasic = desBasic;
	}

	public DesDecisionsAudit getDesDecision() {
		return desDecision;
	}

	public void setDesDecision(DesDecisionsAudit desDecision) {
		this.desDecision = desDecision;
	}

	public DesExtAudit getDesExt() {
		return desExt;
	}

	public void setDesExt(DesExtAudit desExt) {
		this.desExt = desExt;
	}

	public DesRisqbisAudit getDesRisqbis() {
		return desRisqbis;
	}

	public void setDesRisqbis(DesRisqbisAudit desRisqbis) {
		this.desRisqbis = desRisqbis;
	}

}