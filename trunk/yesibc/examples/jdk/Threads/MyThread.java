package jdk.Threads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

class MyThread extends Thread {
	public static void main(String[] args) throws Exception {
		testFinish();

		Runnable task = testFixedThreads();

		Executor executor = testSchedulerThreads(task);

		/**
		 * <pre>
		 *  ExecutorService扩展了Executor并添加了一些生命周期管理的方法。
		 *  一个Executor的生命周期有三种状态，运行 ，关闭 ，终止 。Executor创建时处于运行状态。
		 *  当调用ExecutorService.shutdown()后，处于关闭状态，isShutdown()方法返回true。
		 *  这时，不应该再想Executor中添加任务。
		 *  所有已添加的任务执行完毕后，Executor处于终止状态，isTerminated()返回true。
		 *  如果Executor处于关闭状态，往Executor提交任务会抛出unchecked exception RejectedExecutionException。
		 * </pre>
		 */
		testThreadShutdown(task, executor);

		testFuture();

		testCallable();
	}

	private static void testCallable() {
		int[] numbers = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 10, 11 };
		ConcurrentCalculator calc = new ConcurrentCalculator();
		Long sum = calc.sum(numbers);
		System.out.println(sum);
		calc.close();
	}

	private static Executor testSchedulerThreads(Runnable task) {
		Executor executor = Executors.newScheduledThreadPool(10);
		ScheduledExecutorService scheduler = (ScheduledExecutorService) executor;
		scheduler.scheduleAtFixedRate(task, 10, 10, TimeUnit.SECONDS);
		return executor;
	}

	private static Runnable testFixedThreads() {
		Executor executor = Executors.newFixedThreadPool(10);
		Runnable task = new Runnable() {
			public void run() {
				System.out.println("task over");
			}
		};
		executor.execute(task);
		return task;
	}

	private static void testThreadShutdown(Runnable task, Executor executor) {
		ExecutorService executorService = (ExecutorService) executor;
		while (!executorService.isShutdown()) {
			try {
				executorService.execute(task);
			} catch (RejectedExecutionException ignored) {

			}
		}
		executorService.shutdown();
	}

	private static void testFuture() {
		Callable<Integer> func = new Callable<Integer>() {
			public Integer call() throws Exception {
				System.out.println("inside callable");
				Thread.sleep(1000);
				return new Integer(8);
			}
		};
		FutureTask<Integer> futureTask = new FutureTask<Integer>(func);
		Thread newThread = new Thread(futureTask);
		newThread.start();

		try {
			System.out.println("blocking here");
			Integer result = futureTask.get();
			System.out.println(result);
		} catch (InterruptedException ignored) {
		} catch (ExecutionException ignored) {
		}
	}

	private static void testFinish() {
		List<Thread> ls = new ArrayList<Thread>();
		for (int i = 0; i < 10; i++) {
			Thread t = new MyThread(i);
			// ThreadPool.loadPool(10).execute(t);
			t.start();
			ls.add(t);
		}
		Thread spe = null;
		while (true) {
			for (Iterator<Thread> it = ls.iterator(); it.hasNext();) {
				spe = it.next();
				if (!spe.isAlive()) {
					log.info("remove t=" + spe.toString());
					it.remove();
				} else {
					log.info("running t=" + spe.toString());
				}
			}
			if (ls.isEmpty()) {
				System.out.println(ls == null);
				System.out.println(ls.isEmpty());
				System.out.println("finish remove!");
				break;
			}
		}
	}

	private static Log log = LogFactory.getLog(MyThread.class);
	public int x = 0;
	public static int i = 0;

	public MyThread(int x) {
		this.x = x;
	}

	public void run() {
		try {
			if (x == 3) {
				Thread.sleep(1000);
			}
			for (int n = 0; n < 5; n++) {
				log.info(500 * n + "," + (x));
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		log.info(i + "=ok," + (x));
	}
}

class R implements Runnable {
	private int x = 0;
	public static int j = 0;

	public void run() {
		try {
			for (int n = 0; n < 5; n++) {
				Thread.sleep(500 * n);
				System.out.println(j++ + "," + (++x));
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println(j + "=ok," + (x));
	}
}
