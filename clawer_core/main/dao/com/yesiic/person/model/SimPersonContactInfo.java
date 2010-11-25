package com.yesiic.person.model;

import java.util.Date;

import com.yesiic.base.model.ContactInfo;

/**
 * TeCAddr entity. @author MyEclipse Persistence Tools
 */

public class SimPersonContactInfo extends ContactInfo {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 3197774547449040020L;
	private Long id;
	private String contractNo;
	private String type;
	private Date updateDate;
	private SimPerson simPerson;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getContractNo() {
		return contractNo;
	}

	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
	}

	public SimPerson getSimPerson() {
		return simPerson;
	}

	public void setSimPerson(SimPerson simPerson) {
		this.simPerson = simPerson;
	}
}