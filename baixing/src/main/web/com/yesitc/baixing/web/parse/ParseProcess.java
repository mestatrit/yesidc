package com.yesitc.baixing.web.parse;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.ThreadPool;
import com.yesiic.common.parse.Parser;
import com.yesiic.web.AbstractParserProcess;
import com.yesiic.webswith.model.WebElements;
import com.yesiic.webswith.model.WebPages;
import com.yesitc.baixing.service.BxUtils;
import com.yesitc.baixing.service.DBService;
import com.yesitc.baixing.web.BxUrlsContext;
import com.yesitc.baixing.web.InitBasicData;

public class ParseProcess extends AbstractParserProcess {
	private static Log log = LogFactory.getLog(ParseProcess.class);

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
	protected List<WebPages> getDetails() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Parser getParseDetails() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Parser getParseTypes() {
		return new ParseType();
	}

	@Override
	protected ThreadPoolExecutor getThreadPool() {
		return ThreadPool.loadThreadPoolExecutor(5, threadNumber);
	}

	@Override
	protected List<WebPages> getTypes() {
		return BxUrlsContext.getTypes();
	}

	@Override
	protected void initURLs() {
		start = System.currentTimeMillis();
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

		if (TO_DB) {
			DBService dBService = (DBService) SpringContext.getBean("dBService");
			dBService.saveUrls(urls, WebPages.PAGE_TYPES_11, requestId);
		}
		log.info("InitURLs END!Time is [" + (System.currentTimeMillis() - start) + "]ms.");
	}

}
