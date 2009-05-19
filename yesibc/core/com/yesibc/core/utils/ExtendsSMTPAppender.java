/**
 * $Id: ExtendsSMTPAppender.java,v 1.2 2008/01/17 02:06:08 abel Exp $
 */

package com.yesibc.core.utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.net.SMTPAppender;
import org.apache.log4j.spi.TriggeringEventEvaluator;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Jan 10, 2008 11:07:06 AM
 */
public class ExtendsSMTPAppender extends SMTPAppender {

	private static final Log log = LogFactory.getLog(ExtendsSMTPAppender.class);
	private String smtpUsername;
	private String smtpPassword;

	public ExtendsSMTPAppender() {
		super();
	}

	public ExtendsSMTPAppender(TriggeringEventEvaluator triggeringeventevaluator) {
		super(triggeringeventevaluator);
	}

	public void activateOptions() {
		Properties properties = new Properties(System.getProperties());
		if (this.getSMTPHost() != null)
			properties.put("mail.smtp.host", getSMTPHost());

		Authenticator authenticator = null;
		if (smtpPassword != null && smtpUsername != null) {
			// Setup mail server authentication
			properties.put("mail.smtp.auth", "true");
			authenticator = new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(smtpUsername,
							smtpPassword);
				}
			};
		}

		// Get session
		Session session = Session.getDefaultInstance(properties, authenticator);
		// Session session = Session.getInstance(properties, null);

		msg = new MimeMessage(session);
		try {
			if (this.getFrom() != null)
				msg.setFrom(getAddress1(getFrom()));
			else
				msg.setFrom();
			msg.setRecipients(javax.mail.Message.RecipientType.TO,
					parseAddress1(this.getTo()));
			if (this.getSubject() != null)
				msg.setSubject(getSubject());
		} catch (MessagingException messagingexception) {
			log.error("Could not activate SMTPAppender options.",
					messagingexception);
		}
	}

	InternetAddress getAddress1(String s) {
		try {
			return new InternetAddress(s);
		} catch (AddressException addressexception) {
			super.errorHandler.error("Could not parse address [" + s + "].",
					addressexception, 6);
		}
		return null;
	}

	InternetAddress[] parseAddress1(String s) {
		try {
			return InternetAddress.parse(s, true);
		} catch (AddressException addressexception) {
			super.errorHandler.error("Could not parse address [" + s + "].",
					addressexception, 6);
		}
		return null;
	}

	/**
	 * @return Returns the smtpUsername.
	 */
	public String getSmtpUsername() {
		return this.smtpUsername;
	}

	/**
	 * @param smtpUsername
	 *            The smtpUsername to set.
	 */
	public void setSmtpUsername(String smtpUsername) {
		this.smtpUsername = smtpUsername;
	}

	/**
	 * @return Returns the smtpPassword.
	 */
	public String getSmtpPassword() {
		return this.smtpPassword;
	}

	/**
	 * @param smtpPassword
	 *            The smtpPassword to set.
	 */
	public void setSmtpPassword(String smtpPassword) {
		this.smtpPassword = smtpPassword;
	}

}
