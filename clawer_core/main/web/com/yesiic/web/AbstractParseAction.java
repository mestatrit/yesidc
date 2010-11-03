package com.yesiic.web;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ErrorHandler;
import com.yesiic.common.InternetConnection;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.ExecuteParser;
import com.yesiic.common.parse.ExecutorSupport;
import com.yesiic.common.parse.Parser;
import com.yesiic.webswith.model.WebPages;

public abstract class AbstractParseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8228026649441186988L;
	private static Log log = LogFactory.getLog(AbstractParseAction.class);
	private static long start = System.currentTimeMillis();

	private final static String totalThreadTag = "ToT-["; // 总线程
	private final static String currentOfToI = "]#All-Cur[";// 总任务/当前任务
	private final static String endTag = "].";

	protected static List<String> urls = new ArrayList<String>();	
	protected static String reqLog = null;
	protected static int failedOrNotInt = 0;
	protected static String requestId = null;
	protected static int threadNumber = ClawerConstants.THREADS_NUMBER;
	protected static ThreadPoolExecutor threadPool = null;

	/**
	 * 初始化基础数据，将各链接放到WEBPAGES
	 */
	protected abstract void initURLs();

	protected abstract ThreadPoolExecutor getThreadPool();

	protected abstract List<WebPages> getTypes();

	protected abstract Parser getParseTypes();

	protected abstract Parser getParseDetails();

	protected abstract List<WebPages> getDetails();

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

		initURLs();

		parseTypeLevel();

		parseDetailLevel();

		checking();
	}

	private void parseTypeLevel() throws ApplicationException {
		String title = "#parse types#";
		List<WebPages> types = getTypes();
		if (types == null || types.isEmpty()) {
			throw new ApplicationException(title + " is null!");
		}

		Parser parser = getParseTypes();
		parseCommon(title, types, parser);
	}

	/**
	 * 解析WEBPAGES，写详细页的URL到DB里的SearchResult表，解析完成后，将状态置为OK
	 * 
	 * @throws ApplicationException
	 */
	private void parseCommon(String title, List<WebPages> types, Parser parser) throws ApplicationException {
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

					ExecuteParser ep = new ExecuteParser(parser, processContext);
					eps.add(ep);
					threadPool.submit(ep);
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
			ErrorHandler.errorLogAndMail(title + " Error in Action:", e);
		}

		log.info(reqLog + title + " End!Times:" + (System.currentTimeMillis() - start));
	}

	/**
	 * 解析SearchResult，将获得的个人信息写到相应的表里，解析完成后，将状态置为OK
	 * 
	 * @throws ApplicationException
	 */
	private void parseDetailLevel() throws ApplicationException {
		String title = "#parse details#";
		List<WebPages> details = getDetails();
		if (details == null || details.isEmpty()) {
			throw new ApplicationException(title + " is null!");
		}

		Parser parser = getParseDetails();
		parseCommon(title, details, parser);
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
