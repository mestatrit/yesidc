package com.yesiic.common.parse;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ErrorHandler;

public class ExecutorSupport {

	private static Log log = LogFactory.getLog(ExecutorSupport.class);
	private static List<ExecuteParser> epsTemp = new ArrayList<ExecuteParser>();

	private static long timeOut = 40000;
	private static long waitingByInterval = ClawerConstants.WAITING_BY_INTERVAL;
	private int exitErrorTimes = 10;
	private static int errorTimes = 0;

	public static void waitingThreadRunning(List<ExecuteParser> eps, ThreadPoolExecutor threadPool)
			throws InterruptedException {
		long status = System.currentTimeMillis();

		int remove = 0;
		while (true) {
			Thread.sleep(waitingByInterval);
			for (Iterator<ExecuteParser> it = eps.iterator(); it.hasNext();) {
				ExecuteParser ep = it.next();
				if (!ep.isOk() && (status - ep.getStart()) > timeOut) {
					log.warn(ep.getProcessContext().getLogTitle() + " TimeOut!");
					threadPool.remove(ep);
					it.remove();
					epsTemp.add(ep);
					remove++;
				} else if (ep.isOk()) {
					if (ep.isError()) {
						errorTimes++;
					}
					it.remove();
					remove++;
				}
			}
			if (remove > 0) {
				break;
			}
		}
	}

	public static void waitingThreadEnding(String title, List<ExecuteParser> eps, ThreadPoolExecutor threadPool)
			throws InterruptedException {
		if (eps == null) {
			log.info(title + "Waiting Thread Ending=No ExecuteParser!");
			return;
		}
		long status = System.currentTimeMillis();
		log.info(title + "Waiting Thread Ending Start!");
		while (true) {
			Thread.sleep(waitingByInterval);
			for (Iterator<ExecuteParser> it = eps.iterator(); it.hasNext();) {
				ExecuteParser ep = it.next();
				if (!ep.isOk() && (status - ep.getStart()) > timeOut) {
					log.warn(ep.getProcessContext().getLogTitle() + " TimeOut!");
					threadPool.remove(ep);
					it.remove();
					epsTemp.add(ep);
				} else if (ep.isOk()) {
					if (ep.isError()) {
						errorTimes++;
					}
					it.remove();
				}
			}
			if (eps == null || eps.isEmpty()) {
				break;
			}
		}
		log.info(title + "Waiting Thread Ending Ended!");
	}

	public void waitingThreadRunning(ThreadPoolExecutor threadPool) throws InterruptedException {
		long status = System.currentTimeMillis();
		Thread.sleep(waitingByInterval);
		BlockingQueue<Runnable> queues = threadPool.getQueue();
		while (true) {
			Runnable r = queues.take();
			if (r == null) {
				break;
			}
			ExecuteParser ep = (ExecuteParser) r;
			if (!ep.isOk() && (status - ep.getStart()) > timeOut) {
				log.warn(ep.getProcessContext().getLogTitle() + " TimeOut!");
				threadPool.remove(r);
				epsTemp.add(ep);
			} else if (ep.isOk()) {
				if (ep.isError()) {
					errorTimes++;
				}
			}
		}
	}

	public void checkTimeOutThreads() {
		if (epsTemp != null && !epsTemp.isEmpty()) {
			String str = null;
			for (Iterator<ExecuteParser> it = epsTemp.iterator(); it.hasNext();) {
				ExecuteParser ep = it.next();
				if (!ep.isOk()) {
					str = str + ep.getProcessContext().getLogTitle();
				} else {
					it.remove();
					log.info(ep.getProcessContext().getLogTitle() + " is removed from checkQueue!");
				}
			}
			if (str != null) {
				log.warn("The following thread is still running!" + str);
			}
		} else {
			log.info("Thread pool is running OK!");
		}
		if (errorTimes > exitErrorTimes) {
			ErrorHandler.errorLogAndMail("#Exception 2 Dead#");
			System.exit(0);
		}
	}

	@SuppressWarnings("static-access")
	public void setTimeOut(long timeOut) {
		this.timeOut = timeOut;
	}

	@SuppressWarnings("static-access")
	public void setWaitingByInterval(long waitingByInterval) {
		this.waitingByInterval = waitingByInterval;
	}

	public void setExitErrorTimes(int exitErrorTimes) {
		this.exitErrorTimes = exitErrorTimes;
	}

	public int getErrorTimes() {
		return errorTimes;
	}

	public static void setErrorTimes(int errorTime) {
		errorTimes = errorTime;
	}
}
