package com.yesibc.job51.model;

import java.util.Date;

public class ComAppend implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -977121016714541777L;
	private Long id;

	public static String LOB_TYPE_CLOB = "1";
	public static String LOB_TYPE_BLOB = "2";

	private String lobType;
	private byte[] datas;

	private String contents;

	private Code fromWhere;
	private String fromWhereName;
	private Company company;
	private String companyName;
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLobType() {
		return lobType;
	}

	public void setLobType(String lobType) {
		this.lobType = lobType;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
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

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
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

	public byte[] getDatas() {
		return datas;
	}

	public void setDatas(byte[] datas) {
		this.datas = datas;
	}

	@Override
	public String toString() {
		return "ComAppend [company=" + company + ", companyName=" + companyName
				+ ", contents=" + contents + ", createDate=" + createDate
				+ ", createUser=" + createUser  + ", fromWhere=" + fromWhere
				+ ", fromWhereName=" + fromWhereName + ", id=" + id
				+ ", lobType=" + lobType + ", updateDate=" + updateDate
				+ ", updateUser=" + updateUser + "]";
	}

}
