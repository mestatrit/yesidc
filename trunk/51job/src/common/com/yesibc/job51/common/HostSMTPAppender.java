package com.yesibc.job51.common;

import org.apache.log4j.net.SMTPAppender;

public class HostSMTPAppender extends SMTPAppender {
	public void setSubject(String subject) {
		super.setSubject(subject + HostInfo.hostinfo);
	}
}