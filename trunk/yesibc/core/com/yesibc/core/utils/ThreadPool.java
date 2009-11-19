/**
 * $Id: ThreadPool.java,v 1.1 2007/12/31 02:18:53 abel Exp $
 */

package com.yesibc.core.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Dec 28, 2007 6:34:39 PM
 */
public class ThreadPool {

	private static volatile boolean loaded = false;
	private static ExecutorService executorService;
	private final static int POOL_SIZE = 10;// single CPU

	private ThreadPool() {
	}

	public static ExecutorService loadPool() {
		if (!loaded) {
			executorService = Executors.newCachedThreadPool();
			loaded = true;
		}
		return executorService;
	}

	public static ExecutorService loadPool(int poolSize) {
		if (!loaded) {
			if (poolSize < 1) {
				poolSize = POOL_SIZE;
			}
			executorService = Executors.newFixedThreadPool(Runtime.getRuntime()
					.availableProcessors()
					* poolSize);

			loaded = true;
		}
		return executorService;
	}

}
