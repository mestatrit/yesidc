package com.yesitc.baixing.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.utils.DateUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.core.web.BaseAction2Support;
import com.yesiic.common.ClawerConstants;
import com.yesiic.webswith.model.WebElements;
import com.yesitc.baixing.service.BxUtils;

public class MainAction extends BaseAction2Support {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8228026649441186987L;
	private static Log log = LogFactory.getLog(MainAction.class);
	private static String finishTag = "false";
	private static long start = System.currentTimeMillis();
	private static long start_holding = System.currentTimeMillis();
	long i = 0;
	int pauseTimes = 0;
	// 总线程
	private final static String totalThreadTag = "ToT-[";

	// 总任务/当前任务
	private final static String currentOfToI = "]#All-Cur[";

	private final static String endTag = "].";
	private final static int ERROR_TIMES = 16;
	private final static String FATAL_TAG = "=====================***************================";
	private static List<String> urls = new ArrayList<String>();

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
	public String companySearch() {

		long start = System.currentTimeMillis();

		String fromDBorFile = null;
		if (!ClawerConstants.TEST_WEB_REQUEST) {
			fromDBorFile = getParameter("fromDBorFile");
		}

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
		int failedOrNotInt = Integer.parseInt(failedOrNot);
		if (ArrayUtils.indexOf(tags, failedOrNotInt) < 0) {
			setMessage("failedOrNot is not digit!");
			return SUCCESS;
		}

		String requestId = DateUtils.dateToString(new Date(), DateUtils.DAY_YMD) + "_"
				+ (System.currentTimeMillis() + "").substring(7, 13);

		ClawerConstants.REQUEST_ID = requestId;
		String reqLog = "requestId[" + requestId + "]";

		int threadNumber = ClawerConstants.THREADS_NUMBER;
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

		log.info("Basic info to start:requestId-" + requestId + ",FromDBorFile-" + fromDBorFile + ",threadNumber-"
				+ threadNumber + ",failedOrNotInt-" + failedOrNotInt);

		initURLs();

		parse1stLevel(failedOrNotInt, requestId, reqLog, threadNumber);

		parse2ndLevel(failedOrNotInt, requestId, reqLog, threadNumber);

		checking(failedOrNotInt, requestId, reqLog, threadNumber);

		log.info(reqLog + " is END!Time is [" + (System.currentTimeMillis() - start) / (1000 * 60) + "]m.");
		finishTag = "true";
		return SUCCESS;
	}

	/**
	 * 初始化基础数据，将各链接放到WEBPAGES
	 */
	private void initURLs() {

		Map<String, WebElements> types = InitBasicData.getTypes();
		String temp = null;
		Map<String, WebElements> map = null;
		for (Map.Entry<String, WebElements> type : types.entrySet()) {
			temp = type.getValue().getCode();
			map = InitBasicData.getAreaBj();
			for (Map.Entry<String, WebElements> area : map.entrySet()) {
				urls.add(BxUtils.getDestUrl2(InitBasicData.KEY_AREAS_BJ, area.getValue().getCode(), temp));
			}
			log.info("init urls:bj-" + map.size());

			map = InitBasicData.getAreaSh();
			for (Map.Entry<String, WebElements> area : map.entrySet()) {
				urls.add(BxUtils.getDestUrl2(InitBasicData.KEY_AREAS_SH, area.getValue().getCode(), temp));
			}
			log.info("init urls:sh-" + map.size());

			map = InitBasicData.getAreaOthers();
			for (Map.Entry<String, WebElements> area : map.entrySet()) {
				urls.add(BxUtils.getDestUrl1(area.getValue().getCode(), temp));
			}
			log.info("init urls:others-" + map.size());
		}

	}

	/**
	 * 解析WEBPAGES，写详细页的URL到DB里的SearchResult表，解析完成后，将状态置为OK
	 */
	private void parse1stLevel(int failedOrNotInt, String requestId, String reqLog, int threadNumber) {
		// TODO Auto-generated method stub

	}

	/**
	 * 解析SearchResult，将获得的个人信息写到相应的表里，解析完成后，将状态置为OK
	 */
	private void parse2ndLevel(int failedOrNotInt, String requestId, String reqLog, int threadNumber) {
		// TODO Auto-generated method stub

	}

	/**
	 * 检查是否有解析失败的页面，重新再解析一遍
	 * 
	 * @param failedOrNotInt
	 * @param requestId
	 * @param reqLog
	 * @param threadNumber
	 */
	private void checking(int failedOrNotInt, String requestId, String reqLog, int threadNumber) {
		// TODO Auto-generated method stub

	}

}
