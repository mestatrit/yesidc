package com.yesitc.baixing.web;

import java.util.Date;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.utils.DateUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.core.web.BaseAction2Support;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ErrorHandler;
import com.yesitc.baixing.web.parse.ParseProcess;

public class MainAction extends BaseAction2Support {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8228026649441186987L;
	private static Log log = LogFactory.getLog(MainAction.class);
	private static String finishTag = "false";
	private static long start = System.currentTimeMillis();
	long i = 0;
	private ParseProcess parseProcess;

	// 总线程

	// 某一线程总任务/当前任务
	// private String currentOfToC = "]#CrToC-";

	public String refresh() {
		i = (System.currentTimeMillis() - start) / (1000 * 60);
		getRequest().setAttribute("finishTag", finishTag);
		getRequest().setAttribute("callTimes", i);
		// log.info("Times:" + i + "s.");
		return SUCCESS;
	}

	/**
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public String parse() {

		// 总任务/当前任务
		String reqLog = null;
		int failedOrNotInt = 0;
		String requestId = null;
		int threadNumber = 0;

		long temp = System.currentTimeMillis();

		String failedOrNot = null;
		if (ClawerConstants.TEST_WEB_REQUEST) {
			failedOrNot = "0";
		} else {
			failedOrNot = getParameter("failedOrNot");
		}
		if (failedOrNot == null || !StringUtils.isNumberString(failedOrNot)) {
			setMessage("failedOrNot is error!");
			return SUCCESS;
		}
		// 0-default=OK;1-search type list;2-search pages list;3-job list;
		int[] tags = { 0, 1, 2, 3 };
		failedOrNotInt = Integer.parseInt(failedOrNot);
		if (ArrayUtils.indexOf(tags, failedOrNotInt) < 0) {
			setMessage("failedOrNot is not digit!");
			return SUCCESS;
		}

		requestId = DateUtils.dateToString(new Date(), DateUtils.DAY_YMD) + "_"
				+ (System.currentTimeMillis() + "").substring(7, 13);
		reqLog = "requestId[" + requestId + "]";

		if (ClawerConstants.TEST_WEB) {
			threadNumber = ClawerConstants.THREADS_NUMBER;
		} else {
			String mainThreadsStr = "20";
			if (!ClawerConstants.TEST_WEB_REQUEST) {
				mainThreadsStr = getParameter("mainThreads");
			}
			if (mainThreadsStr != null) {
				try {
					threadNumber = Integer.parseInt(mainThreadsStr);
					ClawerConstants.THREADS_NUMBER = threadNumber;
				} catch (Exception e) {
					log.error("Parse threadNumber error:" + mainThreadsStr, e);
				}
			}
		}

		parseProcess.getBaseInfo(threadNumber, requestId, failedOrNotInt, reqLog);
		try {
			parseProcess.main();
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail(reqLog + " Exception:", e);
		}

		log.info(reqLog + " is END!Time is [" + (System.currentTimeMillis() - temp) / (1000 * 60) + "]m.");
		finishTag = "true";
		return SUCCESS;
	}

	public void setParseProcess(ParseProcess parseProcess) {
		this.parseProcess = parseProcess;
	}

}
