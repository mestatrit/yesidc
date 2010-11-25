package com.yesiic.person.model;

import java.util.Date;
import java.util.List;

public class SimPerson implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6535166906851039451L;
	private Long id;
	private String nameNick;
	private String sex;
	private String mobile;
	private Long fromWhere;
	private Date createDate;
	private Date updateDate;
	private Long webId;
	private List<SimPersonContactInfo> simPersonContactInfo;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNameNick() {
		return nameNick;
	}

	public void setNameNick(String nameNick) {
		this.nameNick = nameNick;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Long getFromWhere() {
		return fromWhere;
	}

	public void setFromWhere(Long fromWhere) {
		this.fromWhere = fromWhere;
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

	public Long getWebId() {
		return webId;
	}

	public void setWebId(Long webId) {
		this.webId = webId;
	}

	public List<SimPersonContactInfo> getSimPersonContactInfo() {
		return simPersonContactInfo;
	}

	public void setSimPersonContactInfo(List<SimPersonContactInfo> simPersonContactInfo) {
		this.simPersonContactInfo = simPersonContactInfo;
	}

}
