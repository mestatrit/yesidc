package jdk.Threads.executor;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

public class Main {
	 
	static int i = 0;
	/**
	 * @param args
	 */
	public static void main(String[] args) {

		Runnable task = new Runnable() {
			public void run() {
				int k = i++;
				System.out.println("task start="+k);
				try {
					Thread.sleep(2000);
					System.out.println("task over="+k);
				} catch (InterruptedException e) {
					System.out.println("InterruptedException="+k);
					e.printStackTrace();
				}
			}
		};

		ExecutorService executorService = Executors.newFixedThreadPool(10);
		for (int i = 0; i < 10; i++) {
			try {
				executorService.execute(task);
			} catch (RejectedExecutionException e) {
				e.printStackTrace();
			}
		}
		try {
			executorService.awaitTermination(1, TimeUnit.SECONDS);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("shutdown");

	}
}
