package com.yesiic.web;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.CollectionUtils;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.InternetConnection;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.ExecuteParser;
import com.yesiic.common.parse.ExecutorSupport;
import com.yesiic.common.parse.Parser;
import com.yesiic.dao.WebPagesDao;
import com.yesiic.webswith.model.WebPages;

public abstract class AbstractParserProcess {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8228026649441186988L;
	private static Log log = LogFactory.getLog(AbstractParserProcess.class);
	protected static long start = System.currentTimeMillis();

	private final static String totalThreadTag = "ToT-["; // 总线程
	private final static String currentOfToI = "]#All-Cur[";// 总任务/当前任务
	private final static String endTag = "].";

	protected static int failedOrNotInt = 0;
	protected static String reqLog = null;
	protected static String requestId = null;
	protected static int threadNumber = ClawerConstants.THREADS_NUMBER;
	protected static ThreadPoolExecutor threadPool = null;
	public static boolean TO_DB_INIT = ClawerConstants.TO_DB_INIT;

	private WebPagesDao webPagesDao;

	/**
	 * 初始化基础数据，将各链接放到WEBPAGES
	 */
	protected abstract List<String> initURLs();

	protected abstract void getThreadPool();

	protected abstract List<WebPages> getTypes();

	protected abstract Parser getParseTypes();

	protected abstract Parser getParseDetails();

	protected abstract List<WebPages> getDetails() throws ApplicationException;

	protected abstract void getBaseInfo(int threadNumber, String requestId, int failedOrNotInt, String reqLog);

	/**
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws ApplicationException
	 */
	public void main() throws ApplicationException {

		getThreadPool();

		List<String> urls = initURLs();

		if (TO_DB_INIT) {
			webPagesDao.saveUrls(urls, WebPages.PAGE_TYPES_11, requestId);
		}

		if (failedOrNotInt < 2) {
			parseTypeLevel();
		}

		if (failedOrNotInt < 3) {
			parseDetailLevel();
		}

		checking();
	}

	private void parseTypeLevel() throws ApplicationException {
		String temp = "#parse types#";
		List<WebPages> types = getTypes();
		if (types == null || types.isEmpty()) {
			throw new ApplicationException(temp + " is null!");
		}

		int i = 0;
		String title = null;
		while (!CollectionUtils.isEmpty(types)) {
			i++;
			title = temp + i + "#";
			parseCommon(title, types, WebPages.PAGE_TYPES_11);
		}
	}

	/**
	 * 解析WEBPAGES，写详细页的URL到DB里的SearchResult表，解析完成后，将状态置为OK
	 * 
	 * @throws ApplicationException
	 */
	private void parseCommon(String title, List<WebPages> types, String parserType) throws ApplicationException {
		start = System.currentTimeMillis();
		Collections.shuffle(types);
		try {
			int size = types.size();
			if (ClawerConstants.TEST_WEB) {
				size = ClawerConstants.TEST_WEB_NUM;
			}

			log.info(reqLog + title + " start!size[" + size + "].");

			int current = 0;
			int loop = 1;

			List<ExecuteParser> eps = new ArrayList<ExecuteParser>();
			while (true) {
				if (current >= size) {
					break;
				}

				for (int thread = 0; thread < threadNumber; thread++) {
					if (current >= size || threadPool.getActiveCount() >= threadNumber) {
						break;
					}

					ProcessContext processContext = new ProcessContext();
					processContext.setIndex(thread);
					processContext.setLogTitle(title + loop + "#" + totalThreadTag + threadNumber + "-" + thread + "]."
							+ currentOfToI + size + "-" + current + endTag);
					processContext.setWp(types.get(current));

					Parser parser = null;
					if(WebPages.PAGE_TYPES_11.equals(parserType)){
						parser = getParseTypes();
					}else if(WebPages.PAGE_PAGES_21.equals(parserType)){
						parser = getParseDetails();
					}
					ExecuteParser ep = new ExecuteParser(parser, processContext);
					eps.add(ep);
					threadPool.execute(ep);
					current++;
				}

				ExecutorSupport.waitingThreadRunning(eps, threadPool);

				if (InternetConnection.checkWaitingConn(title)) {// 如果没有重新连接的操作，则进入是否需要重新的判断。
					int reTag = InternetConnection.reConn(threadNumber, current, title, eps, threadPool);
					if (reTag > 0) {
						ExecutorSupport.setErrorTimes(0);
					}
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
			// ErrorHandler.errorLogAndMail(title + " Error in Action:", e);
		}

		log.info(reqLog + title + " End!Times:" + (System.currentTimeMillis() - start));
	}

	/**
	 * 解析SearchResult，将获得的个人信息写到相应的表里，解析完成后，将状态置为OK
	 * 
	 * @throws ApplicationException
	 */
	private void parseDetailLevel() throws ApplicationException {
		String temp = "#parse details#";
		List<WebPages> details = getDetails();
		if (details == null || details.isEmpty()) {
			throw new ApplicationException(temp + " is null!");
		}
		int i = 0;
		String title = null;
		while (!CollectionUtils.isEmpty(details)) {
			i++;
			title = temp + i + "#";
			parseCommon(title, details, WebPages.PAGE_PAGES_21);
		}
	}

	/**
	 * 检查是否有解析失败的页面，重新再解析一遍
	 * 
	 * @param failedOrNotInt
	 * @param requestId
	 * @param reqLog
	 * @param threadNumber
	 * @throws ApplicationException
	 */
	private void checking() throws ApplicationException {
		if (failedOrNotInt < 2) {
			parseTypeLevel();
		}

		if (failedOrNotInt < 3) {
			parseDetailLevel();
		}
	}
}
