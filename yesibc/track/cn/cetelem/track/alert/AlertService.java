package cn.cetelem.track.alert;

import java.io.File;
import java.io.IOException;

import javax.mail.MessagingException;

import org.springframework.core.io.support.PropertiesLoaderUtils;

import cn.cetelem.track.SpringAppContextContainer;
import cn.cetelem.track.alert.util.LogHelper;
import cn.cetelem.track.alert.util.MailHelper;
import cn.cetelem.track.log.CommonLogger;
import cn.cetelem.track.log.LogFactory;



/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Jan 4, 2009 4:53:43 PM
 */

public class AlertService {

	protected final CommonLogger log = LogFactory.getCommonLogger(AlertService.class);

	MailHelper mailHelper;
	LogHelper logHelper;

	public void setMailHelper(MailHelper mailHelper) {
		this.mailHelper = mailHelper;
	}


	public void setLogHelper(LogHelper logHelper) {
		this.logHelper = logHelper;
	}

	public void alert(Alert alert){

		if(alert == null || alert.getId() == null || "".equals(alert.getId())){
			log.logError("client parameter alert id must not null");
			return;
		}

		String alertConf = null;
		try {
			alertConf = PropertiesLoaderUtils.loadAllProperties("track-alert-param.properties").getProperty(alert.getId());
		} catch (IOException e) {
			e.printStackTrace();
		}
		String logMsg = alert.getLogMsg();
		String mailMsg = alert.getMailMsg();

		if(alertConf == null){
			log.logError("track-alert-param file configuration error, no setting for key " + alert.getId());
			return;
		}

		String[] alertConfs = alertConf.split("\\|");

		if(alertConfs == null || alertConfs.length != 3){
			log.logError("track-alert-param file configuration error, format setting error for key " + alert.getId());
			return;
		}

		doLogAlert(alertConfs, logMsg);
		doMailAlert(alertConfs, mailMsg, alert.getAttachments());
	}

	public void alert(String alertId){

		if(alertId == null || "".equals(alertId)){
			log.logError("client parameter alert id must not null");
			return;
		}

		String logMsg = null;
		String smsMsg = null;
		String mailMsg = null;
		try {
			logMsg = PropertiesLoaderUtils.loadAllProperties("track-alert-param.properties").getProperty(alertId+".logmsg");
			smsMsg = PropertiesLoaderUtils.loadAllProperties("track-alert-param.properties").getProperty(alertId+".smsmsg");
			mailMsg = PropertiesLoaderUtils.loadAllProperties("track-alert-param.properties").getProperty(alertId+".mailmsg");
		} catch (IOException e) {
			e.printStackTrace();
		}

		Alert alert = new Alert();
		alert.setId(alertId);
		alert.setLogMsg(logMsg);
		alert.setSmsMsg(smsMsg);
		alert.setMailMsg(mailMsg);

		alert(alert);
	}

	@SuppressWarnings("static-access")
	private void doLogAlert(String[] alertConfs, String logMsg) {
		if(alertConfs[0] != null && !"".equals(alertConfs[0])){
			if(logHelper == null){
				logHelper = (LogHelper)SpringAppContextContainer.getBean("logHelper");
			}
			logHelper.log(alertConfs[0], logMsg);
		}
	}


	private void doMailAlert(String[] alertConfs, String mailMsg, File[] attachments) {
		if(alertConfs[2] != null && !"".equals(alertConfs[2])){
			if(mailHelper == null){
				mailHelper = (MailHelper)SpringAppContextContainer.getBean("mailHelper");
			}
			String[] to = alertConfs[2].split(";");
			if(to == null || to.length == 0){
				return;
			}
			try {
				if(attachments != null && attachments.length > 0){
					mailHelper.sendAttachmentMail(to, mailMsg, attachments);
				}else{
					mailHelper.sendTemplateMail(to, mailMsg);
				}
			} catch (MessagingException e) {
				log.logError("send mail to mailbox " + to + " fail : " + e.getMessage());
			}
		}
	}

}
