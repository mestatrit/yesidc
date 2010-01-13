package cn.cetelem.track.alert.util;


import java.io.File;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.core.task.TaskExecutor;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import cn.cetelem.track.log.CommonLogger;
import cn.cetelem.track.log.LogFactory;

/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Jan 4, 2009 5:16:02 PM
 */

public class MailHelper {
	
	protected final CommonLogger log = LogFactory.getCommonLogger(MailHelper.class);
	
	private JavaMailSender sender;
	private TaskExecutor taskExecutor;

	public void setSender(JavaMailSender sender) {
		this.sender = sender;
	}
	
	public void setTaskExecutor(TaskExecutor taskExecutor) {
		this.taskExecutor = taskExecutor;
	}

	public String mailFrom;
	
	public String mailSubject;
	
	
	public String getMailFrom() {
		return mailFrom;
	}

	public void setMailFrom(String mailFrom) {
		this.mailFrom = mailFrom;
	}

	public String getMailSubject() {
		return mailSubject;
	}

	public void setMailSubject(String mailSubject) {
		this.mailSubject = mailSubject;
	}

	public void sendTemplateMail(String to, String message) throws MessagingException {		
		
		sendTemplateMail(new String[]{to}, message);
	}
	
	public void sendTemplateMail(String[] to, String message) throws MessagingException {

		try {
			MimeMessage msg = sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(msg, false, "utf-8");
			if(mailFrom==null){
				mailFrom = PropertiesLoaderUtils.loadAllProperties("track-services-param.properties").getProperty("mail.from");
			}
			helper.setFrom(mailFrom);
			
			helper.setTo(to);
			
			helper.setText(message);
			
			if(mailSubject==null){
				mailSubject = PropertiesLoaderUtils.loadAllProperties("track-services-param.properties").getProperty("mail.subject");
			}
			
			helper.setSubject(mailSubject);
		
			sender.send(msg);
			log.logInfo("send mail to mailbox " + to + " success");
		} catch (Exception e) {
			log.logError("send mail " + message + "to mailbox " + to + " fail : " + e.getMessage(), e); 
		}
	}
	
	public void sendAsyncMail(final String to, final String message) {
		sendAsyncMail(new String[]{to}, message);
	}
	
	public void sendAsyncMail(final String[] to, final String message) {
		taskExecutor.execute(new Runnable() {
			public void run() {
				try {
					sendTemplateMail(to, message);
					log.logInfo("send mail to mailbox " + to + " success");
				} catch (Exception e) {
					log.logError("send mail to mailbox " + to + " fail : " + e.getMessage());
				}
			}
		});
	}
	
	
	public void sendAttachmentMail(String to, String message, File[] files) throws MessagingException {
		sendAttachmentMail(new String[]{to}, message, files);
	}
	
	
	public void sendAttachmentMail(String[] to, String message, File[] files) throws MessagingException {

		try {
			MimeMessage msg = sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(msg, true, "utf-8");
			
			if(mailFrom==null){
				mailFrom = PropertiesLoaderUtils.loadAllProperties("track-services-param.properties").getProperty("mail.from");
			}
			helper.setFrom(mailFrom);
			
			
			helper.setTo(to);
			
			if(mailSubject==null){
				mailSubject = PropertiesLoaderUtils.loadAllProperties("track-services-param.properties").getProperty("mail.subject");
			}
			helper.setSubject(mailSubject);
			
			helper.setText(message);
			for(File file : files){
				helper.addAttachment(file.getName(), file);
			}
			sender.send(msg);
			log.logInfo("send mail to mailbox " + to + " success");
		} catch (Exception e) {
			log.logError("send mail to mailbox " + to + " fail : " + e.getMessage());
		}
	}
	
	
	public void sendAsyncMail(final String to, final String message, final File[] files) {
		sendAsyncMail(new String[]{to}, message, files);
	}
	
	
	public void sendAsyncMail(final String[] to, final String message, final File[] files) {
		taskExecutor.execute(new Runnable() {
			public void run() {
				try {
					sendAttachmentMail(to, message, files);
					log.logInfo("send mail to mailbox " + to + " success");
				} catch (Exception e) {
					log.logError("send mail to mailbox " + to + " fail : " + e.getMessage());
				}
			}
		});
	}
	
	
	
}
