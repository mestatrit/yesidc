package com.yesiic.webswith.model;

import java.util.Date;
import java.util.List;

import com.yesiic.base.model.Code;

public class WebElements implements java.io.Serializable {

	private static final long serialVersionUID = -4231312582019918723L;
	private Long id;
	private WebElements parent;
	private String code;
	private String name;
	private String memo;
	private Long sortList;
	private Date createDate;
	private Date updateDate;
	private Long codeLevel;
	private String createUser;
	private String updateUser;
	private List<Code> children;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public WebElements getParent() {
		return parent;
	}
	public void setParent(WebElements parent) {
		this.parent = parent;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public Long getSortList() {
		return sortList;
	}
	public void setSortList(Long sortList) {
		this.sortList = sortList;
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
	public Long getCodeLevel() {
		return codeLevel;
	}
	public void setCodeLevel(Long codeLevel) {
		this.codeLevel = codeLevel;
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
	public List<Code> getChildren() {
		return children;
	}
	public void setChildren(List<Code> children) {
		this.children = children;
	}
	@Override
	public String toString() {
		return "WebElements [children=" + children + ", code=" + code
				+ ", codeLevel=" + codeLevel + ", createDate=" + createDate
				+ ", createUser=" + createUser + ", id=" + id + ", memo="
				+ memo + ", name=" + name + ", parent=" + parent
				+ ", sortList=" + sortList + ", updateDate=" + updateDate
				+ ", updateUser=" + updateUser + "]";
	}

}
