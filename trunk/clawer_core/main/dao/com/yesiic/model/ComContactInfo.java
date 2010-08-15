package com.yesiic.model;

import java.util.Date;
import java.util.List;

import com.yesiic.model.sub.ComContactFax;
import com.yesiic.model.sub.ComContactMobile;
import com.yesiic.model.sub.ComContactQQ;
import com.yesiic.model.sub.ComContactTel;
import com.yesiic.model.sub.ComContactWW;



/**
 * TeCAddr entity. @author MyEclipse Persistence Tools
 */

public class ComContactInfo extends ContactInfo  {

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
	
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	
	private List<ComContactHeader> comContactHeaders;

	// Constructors

	/** default constructor */
	public ComContactInfo() {
	}

	/** minimal constructor */
	public ComContactInfo(Long id) {
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

	@Override
	public String toString() {
		return "ComContactInfo [contractNo=" + contractNo + ", createDate=" + createDate + ", createUser=" + createUser
				+ ", fromWhere=" + fromWhere + ", fromWhereName=" + fromWhereName + ", id=" + id + ", reciever="
				+ reciever + ", updateDate=" + updateDate + ", updateUser=" + updateUser + "]";
	}

	public String getReciever() {
		return reciever;
	}

	public void setReciever(String reciever) {
		this.reciever = reciever;
	}

	public static ComContactInfo getConcactInfoByType(String type) {
		if(ComContactInfo.CONTRACT_TAG_FAX.equals(type)){
			return new ComContactFax();
		}else if(ComContactInfo.CONTRACT_TAG_TEL.equals(type)){
			return new ComContactTel();
		}else if(ComContactInfo.CONTRACT_TAG_MOBILE.equals(type)){
			return new ComContactMobile();
		}else if(ComContactInfo.CONTRACT_TAG_QQ.equals(type)){
			return new ComContactQQ();
		}else if(ComContactInfo.CONTRACT_TAG_WW.equals(type)){
			return new ComContactWW();
		}else{
			return new ComContactInfo();
		}
	}

}