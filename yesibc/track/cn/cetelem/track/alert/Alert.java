package cn.cetelem.track.alert;

import java.io.File;

/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Jan 4, 2009 4:52:05 PM
 */

public class Alert {
	
	String id;
	String type;
	String logMsg;
	String smsMsg;
	String mailMsg;
	File[] attachments;

	public String getId() {
		return id;
	}

	public File[] getAttachments() {
		return attachments;
	}

	public void setAttachments(File[] attachments) {
		this.attachments = attachments;
	}

	public String getType() {
		return type;
	}

	public String getLogMsg() {
		return logMsg;
	}

	public String getSmsMsg() {
		return smsMsg;
	}

	public String getMailMsg() {
		return mailMsg;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setLogMsg(String logMsg) {
		this.logMsg = logMsg;
	}

	public void setSmsMsg(String smsMsg) {
		this.smsMsg = smsMsg;
	}

	public void setMailMsg(String mailMsg) {
		this.mailMsg = mailMsg;
	}
}
