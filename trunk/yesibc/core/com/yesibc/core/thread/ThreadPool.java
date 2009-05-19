/**
 * $Id: ThreadPool.java,v 1.0  2007-6-28 下午09:16:51 davidye Exp $
 */

package com.yesibc.core.thread;

import java.io.IOException;
import java.util.*;

/**
 * @author David.ye o_olle_e@hotmail.com create time: 2007-6-28 下午09:16:51
 */

/**
 * <p>
 * Title: 线程池 （1）根据xml文件来管理线程池的最大最小线程数 （2）对线程池通过Timer定期扫描以防止线程未激活；
 * （3）通过某一个变量（本程序中是freeThreadCount）来得到空闲线程的数目；
 * </p>
 * <p>
 * Description: 采集消费模块
 * </p>
 * <p>
 * Copyright: Copyright (c) 2004
 * </p>
 * <p>
 * Company:
 * </p>
 * 
 * @author 张荣斌
 * @version 1.0
 */

@SuppressWarnings("unused")
public class ThreadPool {
	private static int minPools = 10; // 最小连接池数目

	private static int maxPools = 100; // 最大连接池数目

	private static int checkThreadPeriod = 5; // 检查连接池的周期
	// so.bitsCN.com网管资料库任你搜

	ArrayList<WorkerThread> m_ThreadList;// 工作线程列表

	LinkedList<String> m_RunList = null;// 工作任务列表

	int totalThread = 0;// 总线程数

	static int freeThreadCount = 0;// 未被使用的线程数目

	private java.util.Timer timer = null;// 定时器

	static Object o = new Object();

	static {// 先初始化线程池的参数
		ConsumeThreadPoolPara consumeThreadPoolPara = null;
		try {
			consumeThreadPoolPara = ParseConfig.getConsumeThreadPoolPara();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (consumeThreadPoolPara != null) {
			minPools = consumeThreadPoolPara.getMinPools();
			maxPools = consumeThreadPoolPara.getMaxPools();
			checkThreadPeriod = consumeThreadPoolPara.getCheckThreadPeriod() * 60 * 1000;
		}
	}

	public void setMinPools(int minOutPools) {
		minPools = minOutPools;
	}

	public void setMaxPools(int maxOutPools) {
		maxPools = maxOutPools;
	}

	public void setCheckThreadPeriod(int checkOutThreadPeriod) {
		checkThreadPeriod = checkOutThreadPeriod;
	}

	public ThreadPool() {

		m_ThreadList = new ArrayList<WorkerThread>();

		m_RunList = new LinkedList<String>();
		for (int i = 0; i < minPools; i++) {
			WorkerThread temp = new WorkerThread();
			totalThread = totalThread + 1;
			m_ThreadList.add(temp);
			temp.start();
			try {
				Thread.sleep(100);
			} catch (Exception e) {
			}
		}
		timer = new Timer(true);// 启动定时器
		// timer.schedule(new CheckThreadTask(this), 0, checkThreadPeriod);
	}

	/**
	 * 当有一个工作来的时候启动线程池的线程
	 * 1.当空闲线程数为0的时候，看总线程是否小于最大线程池的数目，就new一个新的线程，否则sleep，直到有空闲线程为止;
	 * 2.当空闲线程不为0，则将任务丢给空闲线程去完成
	 * 
	 * @param work
	 */
	public synchronized void run(String work) {
		if (freeThreadCount == 0) {
			if (totalThread < maxPools) {
				WorkerThread temp = new WorkerThread();
				totalThread = totalThread + 1;
				m_ThreadList.add(temp);
				temp.start();
				synchronized (m_RunList) {
					m_RunList.add(work);
					m_RunList.notify();
				}
			} else {
				while (freeThreadCount == 0) {
					try {
						Thread.sleep(200);
					} catch (InterruptedException e) {
					}
				}
				synchronized (m_RunList) {
					m_RunList.add(work);
					m_RunList.notify();
				}
			}
		} else {
			synchronized (m_RunList) {
				m_RunList.add(work);
				m_RunList.notify();
			}
		}
	}

	/**
	 * 检查所有的线程的有效性
	 */
	public synchronized void checkAllThreads() {

		Iterator<WorkerThread> lThreadIterator = m_ThreadList.iterator();

		while (lThreadIterator.hasNext()) { // 逐个遍厉
			WorkerThread lTestThread = (WorkerThread) lThreadIterator.next();

			if (!(lTestThread.isAlive())) { // 如果处在非活动状态时
				lTestThread = new WorkerThread(); // 重新生成个线程
				lTestThread.start(); // 启动
			}
		}
	}

	/**
	 * 打印调试信息
	 */
	public void printDebugInfo() {
		System.out.println("totalThread=" + totalThread);

		System.out.println("m_ThreadList.size()=" + m_ThreadList.size());
	}

	/**
	 * 
	 * <p>
	 * Title: 工作线程类
	 * </p>
	 * 
	 * @author 张荣斌
	 * @version 1.0
	 */
	class WorkerThread extends Thread {
		boolean running = true;

		String work;

		public void run() {
			while (running) {
				synchronized (o) {
					freeThreadCount++;
				}
				synchronized (m_RunList) {
					while (m_RunList.size() == 0) {
						try {
							m_RunList.wait();
							if (!running)
								return;
						} catch (InterruptedException e) {
						}
					}
				}
			}
		}
	}
}