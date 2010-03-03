package com.yesibc.email.model;

import java.util.Date;
import java.util.List;

/**
 * AbstractTMailServer entity provides the base persistence definition of the
 * TMailServer entity. @author MyEclipse Persistence Tools
 */

public class MailServer implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -722997278144840567L;
	private Long id;
	private String smtpHost;
	private String smtpSocketfactoryClass;
	private String smtpSocketfactoryFallback;
	private Integer smtpPort;
	private Integer smtpSocketfactoryPort;
	private String smtpAuth;
	private String smtpStarttlsEnable;
	private String pop3SocketfactoryClass;
	private String pop3SocketfactoryFallback;
	private Integer pop3Port;
	private Integer pop3SocketfactoryPort;
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	private String pop3Host;
	private List<MailSender> mailSenders;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSmtpHost() {
		return this.smtpHost;
	}

	public void setSmtpHost(String smtpHost) {
		this.smtpHost = smtpHost;
	}

	public String getSmtpSocketfactoryClass() {
		return this.smtpSocketfactoryClass;
	}

	public void setSmtpSocketfactoryClass(String smtpSocketfactoryClass) {
		this.smtpSocketfactoryClass = smtpSocketfactoryClass;
	}

	public String getSmtpSocketfactoryFallback() {
		return this.smtpSocketfactoryFallback;
	}

	public void setSmtpSocketfactoryFallback(String smtpSocketfactoryFallback) {
		this.smtpSocketfactoryFallback = smtpSocketfactoryFallback;
	}

	public Integer getSmtpPort() {
		return this.smtpPort;
	}

	public void setSmtpPort(Integer smtpPort) {
		this.smtpPort = smtpPort;
	}

	public Integer getSmtpSocketfactoryPort() {
		return this.smtpSocketfactoryPort;
	}

	public void setSmtpSocketfactoryPort(Integer smtpSocketfactoryPort) {
		this.smtpSocketfactoryPort = smtpSocketfactoryPort;
	}

	public String getSmtpAuth() {
		return this.smtpAuth;
	}

	public void setSmtpAuth(String smtpAuth) {
		this.smtpAuth = smtpAuth;
	}

	public String getSmtpStarttlsEnable() {
		return this.smtpStarttlsEnable;
	}

	public void setSmtpStarttlsEnable(String smtpStarttlsEnable) {
		this.smtpStarttlsEnable = smtpStarttlsEnable;
	}

	public String getPop3SocketfactoryClass() {
		return this.pop3SocketfactoryClass;
	}

	public void setPop3SocketfactoryClass(String pop3SocketfactoryClass) {
		this.pop3SocketfactoryClass = pop3SocketfactoryClass;
	}

	public String getPop3SocketfactoryFallback() {
		return this.pop3SocketfactoryFallback;
	}

	public void setPop3SocketfactoryFallback(String pop3SocketfactoryFallback) {
		this.pop3SocketfactoryFallback = pop3SocketfactoryFallback;
	}

	public Integer getPop3Port() {
		return this.pop3Port;
	}

	public void setPop3Port(Integer pop3Port) {
		this.pop3Port = pop3Port;
	}

	public Integer getPop3SocketfactoryPort() {
		return this.pop3SocketfactoryPort;
	}

	public void setPop3SocketfactoryPort(Integer pop3SocketfactoryPort) {
		this.pop3SocketfactoryPort = pop3SocketfactoryPort;
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

	public String getPop3Host() {
		return this.pop3Host;
	}

	public void setPop3Host(String pop3Host) {
		this.pop3Host = pop3Host;
	}

	public List<MailSender> getMailSenders() {
		return mailSenders;
	}

	public void setMailSenders(List<MailSender> mailSenders) {
		this.mailSenders = mailSenders;
	}

}