package com.yesiic.common;

import java.util.List;

import org.springframework.mail.SimpleMailMessage;

import com.yesibc.email.common.MailContext;
import com.yesibc.email.model.MailSender;

public class Clawer51JobMailContext extends MailContext {

	public static List<MailSender> EMAILS = getMailList();

	public static void main(String[] args) {
		int i = 0;
		for (MailSender email : emails) {
			try {
				i++;
				email.setSimpleBody("MailSender [" + i + "]!!!!!!!!!");
				email.sendBySimple("Error test");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static List<MailSender> getMailList() {
		EMAILS = emails;
		for (MailSender email : EMAILS) {
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			mailMessage.setTo(email.getMailName());
			mailMessage.setFrom(email.getMailName());
			mailMessage.setSubject(ClawerConstants.EMAIL_ERROR_SUBJECT);
			email.setMailMessage(mailMessage);
		}
		return null;
	}
}
