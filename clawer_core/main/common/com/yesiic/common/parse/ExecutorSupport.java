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
	private static List<ExecuteParser> eps = new ArrayList<ExecuteParser>();

	private long timeOut = 40000;
	private long waitingByInterval = ClawerConstants.WAITING_BY_INTERVAL;
	private int exitErrorTimes = 10;
	private static int errorTimes = 0;

	public void waitingThreadRunning(List<ExecuteParser> eps, ThreadPoolExecutor threadPool)
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
					eps.add(ep);
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
				eps.add(ep);
			} else if (ep.isOk()) {
				if (ep.isError()) {
					errorTimes++;
				}
			}
		}
	}

	public void checkTimeOutThreads() {
		if (errorTimes > exitErrorTimes) {
			ErrorHandler.errorLogAndMail("#Exception 2 Dead#");
			System.exit(0);
		}
		if (eps != null && !eps.isEmpty()) {
			String str = null;
			for (Iterator<ExecuteParser> it = eps.iterator(); it.hasNext();) {
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
	}

	public void setTimeOut(long timeOut) {
		this.timeOut = timeOut;
	}

	public void setWaitingByInterval(long waitingByInterval) {
		this.waitingByInterval = waitingByInterval;
	}

	public void setExitErrorTimes(int exitErrorTimes) {
		this.exitErrorTimes = exitErrorTimes;
	}

	public int getErrorTimes() {
		return errorTimes;
	}

	@SuppressWarnings("static-access")
	public void setErrorTimes(int errorTimes) {
		this.errorTimes = errorTimes;
	}
}
