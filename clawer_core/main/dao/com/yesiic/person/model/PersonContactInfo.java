package com.yesiic.person.model;

import java.util.Date;

import com.yesiic.base.model.Code;
import com.yesiic.base.model.ContactInfo;

/**
 * TeCAddr entity. @author MyEclipse Persistence Tools
 */

public class PersonContactInfo extends ContactInfo  {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 3197774547449040020L;
	private Long id;
	private String contractNo;
	private String type;
	private String reciever;
	
	private Code fromWhere;
	private String fromWhereName;
	
	
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	
	private Person person;
	
	// Constructors

	/** default constructor */
	public PersonContactInfo() {
	}

	/** minimal constructor */
	public PersonContactInfo(Long id) {
		this.id = id;
	}


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}


	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public String getContractNo() {
		return contractNo;
	}

	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
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

	@Override
	public String toString() {
		return "PersonContactInfo [contractNo=" + contractNo + ", createDate="
				+ createDate + ", createUser=" + createUser + ", fromWhere="
				+ fromWhere + ", fromWhereName=" + fromWhereName + ", id=" + id
				+ ", person=" + person + ", reciever=" + reciever + ", type="
				+ type + ", updateDate=" + updateDate + ", updateUser="
				+ updateUser + "]";
	}

	public String getReciever() {
		return reciever;
	}

	public void setReciever(String reciever) {
		this.reciever = reciever;
	}
}