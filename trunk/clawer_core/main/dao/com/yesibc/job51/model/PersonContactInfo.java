package com.yesibc.job51.model;

import java.util.Date;
import java.util.List;

import com.yesibc.job51.model.sub.ComContactFax;
import com.yesibc.job51.model.sub.ComContactMobile;
import com.yesibc.job51.model.sub.ComContactQQ;
import com.yesibc.job51.model.sub.ComContactTel;
import com.yesibc.job51.model.sub.ComContactWW;

/**
 * TeCAddr entity. @author MyEclipse Persistence Tools
 */

public class PersonContactInfo implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 3197774547449040020L;
	private Long id;
	private String contractNo;
	private String reciever;
	
	private Code fromWhere;
	private String fromWhereName;
	
	public final static String CONTRACT_TAG_MOBILE = "mobile";
	public final static String CONTRACT_TAG_TEL = "tel";
	public final static String CONTRACT_TAG_FAX = "fax";
	public final static String CONTRACT_TAG_QQ = "qq";
	public final static String CONTRACT_TAG_WW = "ww";
	public final static String CONTRACT_TAG_SKYPE = "Skype";
	public final static String CONTRACT_TAG_MSN = "msn";
	public final static String CONTRACT_TAG_FETION = "fetion";
	public final static String CONTRACT_TAG_GTALK = "gtalk";
	
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



	// Property accessors

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
		return "PersonContactInfo [contractNo=" + contractNo + ", createDate=" + createDate + ", createUser="
				+ createUser + ", fromWhere=" + fromWhere + ", fromWhereName=" + fromWhereName + ", id=" + id
				+ ", person=" + person + ", reciever=" + reciever + ", updateDate=" + updateDate + ", updateUser="
				+ updateUser + "]";
	}

	public String getReciever() {
		return reciever;
	}

	public void setReciever(String reciever) {
		this.reciever = reciever;
	}

	public static PersonContactInfo getConcactInfoByType(String type) {
		if(PersonContactInfo.CONTRACT_TAG_FAX.equals(type)){
			return new ComContactFax();
		}else if(PersonContactInfo.CONTRACT_TAG_TEL.equals(type)){
			return new ComContactTel();
		}else if(PersonContactInfo.CONTRACT_TAG_MOBILE.equals(type)){
			return new ComContactMobile();
		}else if(PersonContactInfo.CONTRACT_TAG_QQ.equals(type)){
			return new ComContactQQ();
		}else if(PersonContactInfo.CONTRACT_TAG_WW.equals(type)){
			return new ComContactWW();
		}else{
			return new PersonContactInfo();
		}
	}

}