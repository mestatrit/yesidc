package com.yesibc.job51.model;

import java.util.Date;

/**
 * TePSkill entity. @author MyEclipse Persistence Tools
 */

public class PersonSkill implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6808805215676079188L;
	// Fields

	private Long id;
	private Person person;
	private Code skill;
	private Long useMonths;
	private Code useLevel;
	private String useLevelName;
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	private String skillName;

	// Constructors

	public String getSkillName() {
		return skillName;
	}



	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}

	public Code getSkill() {
		return skill;
	}



	public void setSkill(Code skill) {
		this.skill = skill;
	}



	/** default constructor */
	public PersonSkill() {
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public Person getPerson() {
		return person;
	}



	public void setPerson(Person person) {
		this.person = person;
	}


	public Long getUseMonths() {
		return useMonths;
	}



	public void setUseMonths(Long useMonths) {
		this.useMonths = useMonths;
	}



	public Code getUseLevel() {
		return useLevel;
	}



	public void setUseLevel(Code useLevel) {
		this.useLevel = useLevel;
	}



	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getCreateUser() {
		return this.createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getUpdateUser() {
		return this.updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}



	public String getUseLevelName() {
		return useLevelName;
	}



	public void setUseLevelName(String useLevelName) {
		this.useLevelName = useLevelName;
	}

}