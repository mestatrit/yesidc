package com.yesitc.baixing.web;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;

import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.DateUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.core.utils.ThreadPool;
import com.yesibc.core.web.BaseAction2Support;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ErrorHandler;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.WebLinkSupport;
import com.yesiic.common.parse.ExecuteParser;
import com.yesiic.common.parse.Parser;
import com.yesiic.webswith.model.WebElements;
import com.yesiic.webswith.model.WebPages;
import com.yesitc.baixing.service.BxUtils;
import com.yesitc.baixing.service.DBService;
import com.yesitc.baixing.web.parse.ParseType;

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
	private static String reqLog = null;
	private static int failedOrNotInt = 0;
	private static String requestId = null;
	private static int threadNumber = ClawerConstants.THREADS_NUMBER;
	private static String TYPE_TAG = "#type#";
	private static ThreadPoolExecutor threadPool = null;

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

		threadPool = ThreadPool.loadThreadPoolExecutor(5,threadNumber);
		
		

		log.info("Basic info to start:requestId-" + requestId + ",FromDBorFile-" + fromDBorFile + ",threadNumber-"
				+ threadNumber + ",failedOrNotInt-" + failedOrNotInt);

		initURLs(requestId);

		parse1stLevel();

		parse2ndLevel();

		checking();

		log.info(reqLog + " is END!Time is [" + (System.currentTimeMillis() - start) / (1000 * 60) + "]m.");
		finishTag = "true";
		return SUCCESS;
	}

	/**
	 * 初始化基础数据，将各链接放到WEBPAGES
	 */
	private void initURLs(String requestId) {

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

		DBService dBService = (DBService) SpringContext.getBean("dBService");
		dBService.saveUrls(urls, WebPages.PAGE_TYPES_11, requestId);

	}

	/**
	 * 解析WEBPAGES，写详细页的URL到DB里的SearchResult表，解析完成后，将状态置为OK
	 */
	private void parse1stLevel() {
		List<WebPages> types = BxUrlsContext.getTypes();
		Collections.shuffle(types);
		try {
			int size = types.size();
			if (ClawerConstants.TEST_WEB) {
				size = ClawerConstants.TEST_WEB_NUM;
			}

			int totalThreads = threadNumber;
			if (size < threadNumber) {
				totalThreads = size;
			}

			long start = System.currentTimeMillis();
			log.info(reqLog + "Parse " + TYPE_TAG + " start!page size[" + size + "].");

			int current = 0;
			int recTimes = 0;
			int errorTimes = 0;
			int currentOfAll = 0;
			int loop = 1;
			int newRecTimes = 0;

			while (true) {
				if (current >= size) {
					break;
				}

				for (int thread = 0; thread < threadNumber; thread++) {
					if (current >= size) {
						break;
					}

					WebLinkSupport.checkWaitingConn("!pars types!");

					ProcessContext processContext = new ProcessContext();
					processContext.setIndex(thread);
					processContext.setLogTitle("!pars types!" + loop + "#" + totalThreadTag + totalThreads + "-"
							+ thread + "]." + currentOfToI + size + "-" + current + endTag);
					processContext.setWp(types.get(current));

					Parser parser = new ParseType();
					ExecuteParser ep = new ExecuteParser(parser, processContext);
					threadPool.submit(ep);
					current++;
					currentOfAll++;
				}

				errorTimes = waitingSearchList(lists, errorTimes);

				if (WebLinkSupport.checkWaitingConn("!SearchList22!")) {// 如果没有重新连接的操作，则进入是否需要重新的判断。
					newRecTimes = reConn(threadNumber, recTimes, currentOfAll);
					if (newRecTimes > recTimes) {
						errorTimes = 0;
					}
					recTimes = newRecTimes;
				}

			}

			while (!lists.isEmpty()) {
				errorTimes = waitingSearchList(lists, errorTimes);
			}
		} catch (Exception e) {
			error++;
			ErrorHandler.errorLogAndMail("Parse search list error in Action:", e);
		}

		log.info(reqLog + "Parse " + TYPE_TAG + " End!Times:" + (System.currentTimeMillis() - start));
	}

	/**
	 * 解析SearchResult，将获得的个人信息写到相应的表里，解析完成后，将状态置为OK
	 */
	private void parse2ndLevel() {
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
	private void checking() {
		// TODO Auto-generated method stub

	}

}
