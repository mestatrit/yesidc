/**
 * $Id: ThreadPool.java,v 1.1 2007/12/31 02:18:53 abel Exp $
 */

package com.yesibc.core.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Dec 28, 2007 6:34:39 PM
 */
public class ThreadPool {

	private static volatile boolean LOADED_EXECUTORSERVICE_DEFAULT = false;
	private static volatile boolean LOADED_THREADPOOLEXECUTOR_DEFAULT = false;
	private static volatile boolean LOADED_EXECUTORSERVICE = false;
	private static volatile boolean LOADED_THREADPOOLEXECUTOR = false;
	private static ExecutorService executorService;
	private static ThreadPoolExecutor threadPoolExecutor;
	private final static int POOL_SIZE = 10;

	private ThreadPool() {
	}

	public static ThreadPoolExecutor loadThreadPoolExecutor(int mini, int max) {
		if (!LOADED_THREADPOOLEXECUTOR) {
			threadPoolExecutor = new ThreadPoolExecutor(mini, max, 72000, TimeUnit.SECONDS,
					new LinkedBlockingQueue<Runnable>(), new ThreadPoolExecutor.AbortPolicy());
			LOADED_THREADPOOLEXECUTOR = true;
		}
		return threadPoolExecutor;
	}

	public static ThreadPoolExecutor loadThreadPoolExecutor() {
		if (!LOADED_THREADPOOLEXECUTOR_DEFAULT) {
			threadPoolExecutor = (ThreadPoolExecutor) loadPool();
			LOADED_THREADPOOLEXECUTOR_DEFAULT = true;
		}
		return threadPoolExecutor;
	}

	public static ExecutorService loadPool() {
		if (!LOADED_EXECUTORSERVICE_DEFAULT) {
			executorService = Executors.newCachedThreadPool();
			LOADED_EXECUTORSERVICE_DEFAULT = true;
		}
		return executorService;
	}

	public static ExecutorService loadPool(int poolSize) {
		if (!LOADED_EXECUTORSERVICE) {
			if (poolSize < 1) {
				poolSize = POOL_SIZE;
			}
			// executorService =
			// Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors()
			// * poolSize);
			executorService = Executors.newFixedThreadPool(poolSize);

			LOADED_EXECUTORSERVICE = true;
		}
		return executorService;
	}

	public static void main(String[] args) {
		System.out.println(Runtime.getRuntime().availableProcessors());
		ThreadPoolExecutor tpe = loadThreadPoolExecutor();
		System.out.println("getActiveCount=" + tpe.getActiveCount());
		System.out.println("getCorePoolSize=" + tpe.getCorePoolSize());
		System.out.println("getLargestPoolSize=" + tpe.getLargestPoolSize());
		System.out.println("getMaximumPoolSize=" + tpe.getMaximumPoolSize());
		System.out.println("getPoolSize=" + tpe.getPoolSize());
		tpe = loadThreadPoolExecutor(10,20);
		System.out.println("getActiveCount=" + tpe.getActiveCount());
		System.out.println("getCorePoolSize=" + tpe.getCorePoolSize());
		System.out.println("getLargestPoolSize=" + tpe.getLargestPoolSize());
		System.out.println("getMaximumPoolSize=" + tpe.getMaximumPoolSize());
		System.out.println("getPoolSize=" + tpe.getPoolSize());

	}

}
