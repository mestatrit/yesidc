package com.yesibc.email.model;

import java.util.Date;

import javax.mail.internet.MimeMessage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import com.yesibc.core.utils.StringUtils;

import cn.cetelem.track.AlertUtils;

/**
 * AbstractTMailSenders entity provides the base persistence definition of the
 * TMailSenders entity. @author MyEclipse Persistence Tools
 */

public class MailSender implements java.io.Serializable {

	private static Log log = LogFactory.getLog(MailSender.class);

	/**
	 * 
	 */
	private static final long serialVersionUID = 8922037080731290712L;
	private Long id;
	private String mailName;
	private String mailPassword;
	private Long mailConfId;
	private String defaultSender;
	private String memo;
	private String status; // 1.active;2.unactive.
	private Date createDate;
	private Date updateDate;
	private String createUser;
	private String updateUser;
	private MailServer mailServer;

	private JavaMailSenderImpl senderServer;
	private SimpleMailMessage mailMessage;
	private MimeMessage multiMessage;
	private String simpleBody;
	private String multiBody;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMailName() {
		return this.mailName;
	}

	public void setMailName(String mailName) {
		this.mailName = mailName;
	}

	public String getMailPassword() {
		return this.mailPassword;
	}

	public void setMailPassword(String mailPassword) {
		this.mailPassword = mailPassword;
	}

	public Long getMailConfId() {
		return this.mailConfId;
	}

	public void setMailConfId(Long mailConfId) {
		this.mailConfId = mailConfId;
	}

	public String getDefaultSender() {
		return this.defaultSender;
	}

	public void setDefaultSender(String defaultSender) {
		this.defaultSender = defaultSender;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
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

	public MailServer getMailServer() {
		return mailServer;
	}

	public void setMailServer(MailServer mailServer) {
		this.mailServer = mailServer;
	}

	public JavaMailSenderImpl getSenderServer() {
		return senderServer;
	}

	public void setSenderServer(JavaMailSenderImpl senderServer) {
		this.senderServer = senderServer;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public SimpleMailMessage getMailMessage() {
		return mailMessage;
	}

	public void setMailMessage(SimpleMailMessage mailMessage) {
		this.mailMessage = mailMessage;
	}

	public MimeMessage getMultiMessage() {
		return multiMessage;
	}

	public void setMultiMessage(MimeMessage multiMessage) {
		this.multiMessage = multiMessage;
	}

	public void setSimpleBody(String simpleBody) {
		this.simpleBody = simpleBody;
	}

	public String getMultiBody() {
		return multiBody;
	}

	public void setMultiBody(String multiBody) {
		this.multiBody = multiBody;
	}

	public String getSimpleBody() {
		return simpleBody;
	}

	public void sendBySimple(String msg) {
		if (senderServer == null || mailMessage == null) {
			AlertUtils.sendAlert("[" + mailName + "] senderServer or mailMessage can not be null!\n" + simpleBody);
			return;
		}
		log.error(simpleBody);
		mailMessage.setText(simpleBody);
		if (msg != null) {
			if (msg.length() > 120) {
				mailMessage.setSubject(StringUtils.subStringByByte(msg, 0, 120));
			} else {
				mailMessage.setSubject(msg);
			}
		} else {
			if (simpleBody != null && simpleBody.length() > 120) {
				mailMessage.setSubject(StringUtils.subStringByByte(simpleBody, 0, 120));
			} else {
				mailMessage.setSubject(simpleBody);
			}
		}
		senderServer.send(mailMessage);
	}

	public void sendByMuilti() {
		if (senderServer == null || multiMessage == null) {
			AlertUtils.sendAlert("[" + mailName + "] senderServer or multiMessage can not be null!\n" + multiBody);
			return;
		}
		log.error(multiBody);
		senderServer.send(multiMessage);
	}

}