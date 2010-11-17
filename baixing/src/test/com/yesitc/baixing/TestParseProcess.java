package com.yesitc.baixing;

import java.util.Date;
import java.util.concurrent.ThreadPoolExecutor;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.ThreadPool;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.ExecuteParser;
import com.yesiic.webswith.model.WebPages;
import com.yesitc.baixing.web.parse.ParseType;

public class TestParseProcess {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Date now = new Date();
		WebPages wp = new WebPages();
		wp.setCreateDate(now);
		wp.setPageType("11");
		wp.setRequestId("22");
		wp.setStatus(WebPages.STATUS_KO);
		wp.setUpdateDate(now);
		wp.setUrl("http://shanghai.baixing.com/diannao/?areaName=changning&发布人=个人&page=2");
		wp.setUrl("http://baishan.baixing.com/baoan/?page=2");
		
		int thread = 1;
		ProcessContext processContext = new ProcessContext();
		processContext.setIndex(thread);
		processContext.setLogTitle("test");
		processContext.setWp(wp);

		ExecuteParser ep = new ExecuteParser((ParseType) SpringContext.getBean("parseType"), processContext);
		ThreadPoolExecutor threadPool = ThreadPool.loadThreadPoolExecutor(1, 1);
		threadPool.execute(ep);

		System.out.println("getActiveCount=" + threadPool.getActiveCount());
		System.out.println("getCorePoolSize=" + threadPool.getCorePoolSize());
		System.out.println("getLargestPoolSize=" + threadPool.getLargestPoolSize());
		System.out.println("getMaximumPoolSize=" + threadPool.getMaximumPoolSize());
		System.out.println("getPoolSize=" + threadPool.getPoolSize());
	}

}
