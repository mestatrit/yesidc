package com.yesiic.common.parse;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;

public class ExecutorSupport {

	public static void waitingThreadRunning(ThreadPoolExecutor threadPool) throws InterruptedException {
		BlockingQueue<Runnable> queues = threadPool.getQueue();
		while(true){
			Runnable r = queues.take();
		}
	}
}
