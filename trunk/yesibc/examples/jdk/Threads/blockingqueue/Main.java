package jdk.Threads.blockingqueue;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		BlockingQueue<Food> queue = new ArrayBlockingQueue<Food>(5);
		try {
			Food food1 = new Food();
			Food food2 = new Food();
			queue.put(food1);
			queue.put(food2);
			System.out.println(food1 + "######" + food2);
			while (true) {
				if(queue.isEmpty()){
					System.out.println("isEmpty");
					break;
				}
				Food food = queue.take();
				if(food==null){
					break;
				}
				System.out.println(food);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		testMain(queue);
	}

	private static void testMain(BlockingQueue<Food> queue) {
		ExecutorService exec = Executors.newFixedThreadPool(3);
		Producer p1 = new Producer(queue, exec);
		Producer p2 = new Producer(queue, exec);

		Consumer c1 = new Consumer(queue, exec);

		exec.execute(p1);
		exec.execute(p2);
		exec.execute(c1);
		try {
			Thread.sleep(10000);
		} catch (InterruptedException ignored) {
		}
		exec.shutdown();
		System.out.println("Shutdown...");
	}

}
