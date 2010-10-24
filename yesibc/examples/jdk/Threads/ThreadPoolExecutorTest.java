package jdk.Threads;

import java.io.Serializable;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * <pre>
 * 1.接口说明：
 * ThreadPoolExecutor(int corePoolSize, int maximumPoolSize,
 * long keepAliveTime, TimeUnit unit,
 * BlockingQueue<Runnable> workQueue,
 * RejectedExecutionHandler handler)
 * corePoolSize： 线程池维护线程的最少数量
 * maximumPoolSize：线程池维护线程的最大数量
 * keepAliveTime： 线程池维护线程所允许的空闲时间
 * unit： 线程池维护线程所允许的空闲时间的单位
 * workQueue： 线程池所使用的缓冲队列
 * handler： 线程池对拒绝任务的处理策略
 * 
 * 2.其他说明：
 * 一个任务通过 execute(Runnable)方法被添加到线程池，任务就是一个 Runnable类型的对象，任务的执行方法就是 Runnable类型对象的run()方法。
 * 当一个任务通过execute(Runnable)方法欲添加到线程池时：
 * 如果此时线程池中的数量小于corePoolSize，即使线程池中的线程都处于空闲状态，也要创建新的线程来处理被添加的任务。
 * 如果此时线程池中的数量等于 corePoolSize，但是缓冲队列 workQueue未满，那么任务被放入缓冲队列。
 * 如果此时线程池中的数量大于corePoolSize，缓冲队列workQueue满，并且线程池中的数量小于maximumPoolSize，建新的线程来处理被添加的任务。
 * 如果此时线程池中的数量大于corePoolSize，缓冲队列workQueue满，并且线程池中的数量等于maximumPoolSize，那么通过 handler所指定的策略来处理此任务。
 * 也就是：处理任务的优先级为：
 * 核心线程corePoolSize、任务队列workQueue、最大线程maximumPoolSize，如果三者都满了，使用handler处理被拒绝的任务。
 * 当线程池中的线程数量大于 corePoolSize时，如果某线程空闲时间超过keepAliveTime，线程将被终止。这样，线程池可以动态的调整池中的线程数。
 * handler有四个选择：
 * ThreadPoolExecutor.AbortPolicy() 抛出java.util.concurrent.RejectedExecutionException异常
 * ThreadPoolExecutor.CallerRunsPolicy()重试添加当前的任务，他会自动重复调用execute()方法
 * ThreadPoolExecutor.DiscardOldestPolicy()抛弃旧的任务-如果使用有界队列，DiscardOldestPolicy策略使用时候需要注意的是maximumPoolSize和队列容量之和要不小于最大并发数，否则当任务并发数达到最大时你的任务可能被丢弃
 * 		_executor = new ThreadPoolExecutor(2, 50, 1, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>(30), new ThreadPoolExecutor.DiscardOldestPolicy());
 * 		上面例子中使用了有界队列，如果有100个任务，只能执行80个，有20个被抛弃，任务调度时间很快
 * ThreadPoolExecutor.DiscardPolicy()抛弃当前的任务
 * 
 * 3.扩展
 * 你可以通过创建它的子类来自定义它的行为。例如，我希望当每个任务结束之后打印一条消息，但我又无法修改任务对象，那么我可以这样写：
 * ThreadPoolExecutor executor = new ThreadPoolExecutor(size, maxSize, 1, TimeUnit.DAYS, queue) {
 *     @Override
 *     protected void afterExecute(Runnable r, Throwable t) {
 *         System.out.println("Task finished.");
 *     }
 * };
 * 除了 afterExecute 方法之外，ThreadPoolExecutor 类还有 beforeExecute() 和 terminated() 方法可以重写，分别是在任务执行之前和整个线程池停止之后执行。
 *  class PausableThreadPoolExecutor extends ThreadPoolExecutor {
 *   private boolean isPaused;
 *   private ReentrantLock pauseLock = new ReentrantLock();
 *   private Condition unpaused = pauseLock.newCondition();
 * 
 *   public PausableThreadPoolExecutor(...) { super(...); }
 * 
 *   protected void beforeExecute(Thread t, Runnable r) {
 *     super.beforeExecute(t, r);
 *     pauseLock.lock();
 *     try {
 *       while (isPaused) unpaused.await();
 *     } catch(InterruptedException ie) {
 *       t.interrupt();
 *     } finally {
 *       pauseLock.unlock();
 *     }
 *   }
 * 
 *   public void pause() {
 *     pauseLock.lock();
 *     try {
 *       isPaused = true;
 *     } finally {
 *       pauseLock.unlock();
 *     }
 *   }
 * 
 *   public void resume() {
 *     pauseLock.lock();
 *     try {
 *       isPaused = false;
 *       unpaused.signalAll();
 *     } finally {
 *       pauseLock.unlock();
 *     }
 *   }
 * }
 * </pre>
 * 
 */

public class ThreadPoolExecutorTest {
	private static int produceTaskSleepTime = 2;
	private static int consumeTaskSleepTime = 2000;
	private static int produceTaskMaxNumber = 10;

	public static void main(String[] args) {

		// 构造一个线程池
		ThreadPoolExecutor threadPool = new ThreadPoolExecutor(2, 4, 3, TimeUnit.SECONDS,
				new ArrayBlockingQueue<Runnable>(3), new ThreadPoolExecutor.DiscardOldestPolicy());

		for (int i = 1; i <= produceTaskMaxNumber; i++) {
			try {
				// 产生一个任务，并将其加入到线程池
				String task = "task@ " + i;
				System.out.println("put " + task);
				threadPool.execute(new ThreadPoolTask(task));

				// 便于观察，等待一段时间
				Thread.sleep(produceTaskSleepTime);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 线程池执行的任务
	 * 
	 * @author hdpan
	 */
	public static class ThreadPoolTask implements Runnable, Serializable {
		private static final long serialVersionUID = 0;
		// 保存任务所需要的数据
		private Object threadPoolTaskData;

		ThreadPoolTask(Object tasks) {
			this.threadPoolTaskData = tasks;
		}

		public void run() {
			// 处理一个任务，这里的处理方式太简单了，仅仅是一个打印语句
			System.out.println("start .." + threadPoolTaskData);
			try {
				// //便于观察，等待一段时间
				Thread.sleep(consumeTaskSleepTime);
			} catch (Exception e) {
				e.printStackTrace();
			}
			threadPoolTaskData = null;
		}

		public Object getTask() {
			return this.threadPoolTaskData;
		}
	}
}