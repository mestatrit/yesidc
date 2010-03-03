package com.yesibc.email.common;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.springframework.mail.javamail.JavaMailSenderImpl;

import cn.cetelem.track.AlertUtils;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.email.dao.EmailInfoDao;
import com.yesibc.email.model.MailSender;
import com.yesibc.email.model.MailServer;

public class MailContext {

	protected static List<MailSender> emails = initMailList();
	private static boolean test = false;

	public static void refreshMailList() {

		if (test) {
			getTests();
		} else {
			EmailInfoDao emailInfoDao = (EmailInfoDao) SpringContext.getBean("emailInfoDao");
			emails = emailInfoDao.getMails();
		}

		if (emails == null) {
			AlertUtils.sendAlert("Can't get any email address from DB!");
			return;
		}

		for (MailSender email : emails) {
			JavaMailSenderImpl senderServer = new JavaMailSenderImpl();
			email.setSenderServer(senderServer);
			senderServer.setDefaultEncoding("UTF-8");
			senderServer.setHost(email.getMailServer().getSmtpHost());
			senderServer.setUsername(email.getMailName());
			senderServer.setPassword(email.getMailPassword());

			Properties props = new Properties();
			senderServer.setJavaMailProperties(props);
			
			if (email.getMailServer().getSmtpSocketfactoryClass() != null) {
				props.setProperty("mail.smtp.socketFactory.class", email.getMailServer().getSmtpSocketfactoryClass());
			}
			if (email.getMailServer().getSmtpSocketfactoryFallback() != null) {
				props.setProperty("mail.smtp.socketFactory.fallback", email.getMailServer()
						.getSmtpSocketfactoryFallback());
			}
			if (email.getMailServer().getSmtpPort() != null) {
				senderServer.setPort(email.getMailServer().getSmtpPort());
				// props.setProperty("mail.smtp.port", "465");// 端口
			}
			if (email.getMailServer().getSmtpSocketfactoryPort() != null) {
				props.setProperty("mail.smtp.socketFactory.port", email.getMailServer().getSmtpSocketfactoryPort()
						.toString());
			}
			if (email.getMailServer().getSmtpAuth() != null) {
				props.put("mail.smtp.auth", email.getMailServer().getSmtpAuth());// 是否要验证身份
			}
			if (email.getMailServer().getSmtpStarttlsEnable() != null) {
				props.put("mail.smtp.starttls.enable", email.getMailServer().getSmtpStarttlsEnable());
			}

		}
	}

	private static void getTests() {
		emails = new ArrayList<MailSender>();
		MailSender ms = new MailSender();
		MailServer mss = new MailServer();
		ms.setMailServer(mss);
		emails.add(ms);
		ms = new MailSender();
		ms.setMailServer(mss);
		emails.add(ms);
	}

	public static List<MailSender> initMailList() {
		if (emails != null && !emails.isEmpty()) {
			return emails;
		}
		refreshMailList();
		return emails;
	}

}
