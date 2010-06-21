package com.yesidc.email.reg;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesidc.email.common.BrowserSupport;
import com.yesidc.email.common.EmailConstants;
import com.yesidc.email.common.ProcessContext;


public class RegFraime {

	private static Log log = LogFactory.getLog(RegFraime.class);
	private ProcessContext processContext;
	private Map<String, String> finish;
	private String url = EmailConstants.EMAIL_SERVERS[0][1];
	private String title = EmailConstants.EMAIL_SERVERS[0][0];
	private int index = 0;

	/**
	 * @param args
	 * @throws ApplicationException 
	 */
	public void show(String[] args) throws ApplicationException {
		processContext = new ProcessContext();
		BrowserSupport.initLoading(processContext, title, index);
		BrowserSupport.onDocumnetComplete(processContext.getBrowser(), finish);
		processContext.getBrowser().loadURL(url);
		BrowserSupport.waitingLoading(processContext, index, finish);

		long l = System.currentTimeMillis();

		log.info(processContext.getLogTitle() + " Load register page OK.Time is " + (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {


	}

}
