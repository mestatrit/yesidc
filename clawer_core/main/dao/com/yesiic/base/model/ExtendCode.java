package com.yesiic.base.model;

import java.util.Date;

/**
 * TeCode entity. @author MyEclipse Persistence Tools
 */

public class ExtendCode implements java.io.Serializable {

	public final static String CODE_TYPE_ZIP = "zip";
	public final static String CODE_TYPE_AREA_CODE = "areaCode";

	private static final long serialVersionUID = -4231312582019918923L;
	private Long id;
	private Long parent;
	private String code;
	private String codeType;
	private String name;
	private String memo;
	private Date updateDate;
	private String updateUser;

	/** default constructor */
	public ExtendCode() {
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getUpdateUser() {
		return this.updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Long getParent() {
		return parent;
	}

	public void setParent(Long parent) {
		this.parent = parent;
	}

	public String getCodeType() {
		return codeType;
	}

	public void setCodeType(String codeType) {
		this.codeType = codeType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}