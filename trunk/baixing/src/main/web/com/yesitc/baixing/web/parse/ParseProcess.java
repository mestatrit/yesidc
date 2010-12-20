package com.yesitc.baixing.web.parse;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.ThreadPool;
import com.yesiic.common.parse.Parser;
import com.yesiic.dao.WebPagesDao;
import com.yesiic.web.AbstractParserProcess;
import com.yesiic.webswith.model.WebElements;
import com.yesiic.webswith.model.WebPages;
import com.yesitc.baixing.service.BxUtils;
import com.yesitc.baixing.web.BxUrlsContext;
import com.yesitc.baixing.web.InitBasicData;

public class ParseProcess extends AbstractParserProcess {
	private static Log log = LogFactory.getLog(ParseProcess.class);

	private Parser parseType;
	private Parser parseDetail;
	private WebPagesDao webPagesDao;

	@SuppressWarnings("static-access")
	@Override
	public void getBaseInfo(int threadNumber, String requestId, int failedOrNotInt, String reqLog) {
		this.threadNumber = threadNumber;
		this.requestId = requestId;
		this.failedOrNotInt = failedOrNotInt;
		this.reqLog = reqLog;
		log.info("Basic info to start:requestId-" + requestId + ",threadNumber-" + threadNumber + ",failedOrNotInt-"
				+ failedOrNotInt);
	}

	@Override
	protected List<WebPages> getDetails() throws ApplicationException {
		List<WebPages> wps = webPagesDao.getWebPagesByType(WebPages.PAGE_PAGES_21, WebPages.STATUS_KO, 1000);
		return wps;
	}

	@Override
	protected Parser getParseDetails() {
		return parseDetail;
	}

	@Override
	protected Parser getParseTypes() {
		return parseType;
	}

	@Override
	protected void getThreadPool() {
		threadPool = ThreadPool.loadThreadPoolExecutor(threadNumber, threadNumber);
	}

	@Override
	protected List<WebPages> getTypes() {
		return BxUrlsContext.getTypes();
	}

	@Override
	protected List<String> initURLs() {
		start = System.currentTimeMillis();
		Map<String, WebElements> types = InitBasicData.getTypes();
		String temp = null;
		Map<String, WebElements> map = null;
		List<String> urls = new ArrayList<String>();
		for (Map.Entry<String, WebElements> type : types.entrySet()) {
			temp = type.getValue().getCode();
			map = InitBasicData.getAreaSh();
			for (Map.Entry<String, WebElements> area : map.entrySet()) {
				urls.add(BxUtils.getDestUrl2(InitBasicData.KEY_AREAS_SH, area.getValue().getCode(), temp));
			}
			log.info("init urls:sh-" + map.size());

			/**
			 * <pre>
			 * map = InitBasicData.getAreaBj();
			 * for (Map.Entry&lt;String, WebElements&gt; area : map.entrySet()) {
			 * 	urls.add(BxUtils.getDestUrl2(InitBasicData.KEY_AREAS_BJ, area.getValue().getCode(), temp));
			 * }
			 * log.info(&quot;init urls:bj-&quot; + map.size());
			 * 
			 * map = InitBasicData.getAreaOthers();
			 * for (Map.Entry&lt;String, WebElements&gt; area : map.entrySet()) {
			 * 	urls.add(BxUtils.getDestUrl1(area.getValue().getCode(), temp));
			 * }
			 * log.info(&quot;init urls:others-&quot; + map.size());
			 * </pre>
			 */
		}

		log.info("InitURLs END!Time is [" + (System.currentTimeMillis() - start) + "]ms.");
		return urls;
	}

	public void setParseType(Parser parseType) {
		this.parseType = parseType;
	}

	public void setParseDetail(Parser parseDetail) {
		this.parseDetail = parseDetail;
	}

	public void setWebPagesDao(WebPagesDao webPagesDao) {
		this.webPagesDao = webPagesDao;
	}

}
