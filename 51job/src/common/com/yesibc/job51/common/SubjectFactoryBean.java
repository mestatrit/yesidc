package com.yesibc.job51.common;


import org.springframework.beans.factory.FactoryBean;

public class SubjectFactoryBean implements FactoryBean {

	private String subject;

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Object getObject() throws Exception {
		return subject + HostInfo.hostinfo;
	}


	public boolean isSingleton() {
		return false;
	}

	@SuppressWarnings("unchecked")
	public Class getObjectType() {
		return String.class;
	}
}
