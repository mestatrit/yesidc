package jdk.Threads;

import java.io.File;
import java.io.FileFilter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionService;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.CyclicBarrier;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class TestConcurrent {

	public static int MILLI = 100;

	// 徒步需要的时间: Shenzhen, Guangzhou, Shaoguan, Changsha, Wuhan
	public static int[] timeWalk = { 5, 8, 15, 15, 10 };
	// 自驾游
	public static int[] timeSelf = { 1, 3, 4, 4, 5 };
	// 旅游大巴
	public static int[] timeBus = { 2, 4, 6, 6, 7 };

	public static String now() {
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
		return sdf.format(new Date()) + ": ";
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {

			testSemaphore();
			//testCountDownLatch();
			///testCallable();
			//testCompletionService();
			//testCyclicBarrier();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 并发库中的BlockingQueue是一个比较好玩的类，顾名思义，就是阻塞队列。
	 * 该类主要提供了两个方法put()和take()，前者将一个对象放到队列中，如果队列已经满了，就等待直到有空闲节点；
	 * 后者从head取一个对象，如果没有对象，就等待直到有可取的对象。
	 * 下面的例子比较简单，一个读线程，用于将要处理的文件对象添加到阻塞队列中，另外四个写线程用于取出文件对象，
	 * 为了模拟写操作耗时长的特点，特让线程睡眠一段随机长度的时间。另外，该Demo也使用到了线程池和原子整型（AtomicInteger），
	 * AtomicInteger可以在并发情况下达到原子化更新，避免使用了synchronized，而且性能非常高。
	 * 由于阻塞队列的put和take操作会阻塞，为了使线程退出，特在队列中添加了一个"标识”，算法中也叫"哨兵”，当发现这个哨兵后，
	 * 写线程就退出。当然线程池也要显式退出了。
	 */
	@SuppressWarnings( { "unchecked", "unused" })
	private static void testBlockingQueue() {
		// 能容纳100个文件
		final BlockingQueue queue = new LinkedBlockingQueue(100);
		// 线程池
		final ExecutorService exec = Executors.newFixedThreadPool(5);
		final File root = new File("F:\\JavaLib");
		// 完成标志
		final File exitFile = new File("");
		// 读个数
		final AtomicInteger rc = new AtomicInteger();
		// 写个数
		final AtomicInteger wc = new AtomicInteger();
		// 读线程
		Runnable read = new Runnable() {
			public void run() {
				scanFile(root);
				scanFile(exitFile);
			}

			public void scanFile(File file) {
				if (file.isDirectory()) {
					File[] files = file.listFiles(new FileFilter() {
						public boolean accept(File pathname) {
							return pathname.isDirectory() || pathname.getPath().endsWith(".java");
						}
					});
					System.out.println("files: " + files == null ? 0 : files.length);
					for (File one : files)
						scanFile(one);
				} else {
					try {
						int index = rc.incrementAndGet();
						System.out.println("Read0: " + index + " " + file.getPath());
						queue.put(file);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			}
		};
		exec.submit(read);
		// 四个写线程
		for (int index = 0; index < 4; index++) {
			// write thread
			final int NO = index;
			Runnable write = new Runnable() {
				String threadName = "Write" + NO;

				public void run() {
					while (true) {
						try {
							Thread.sleep(randomTime());
							int index = wc.incrementAndGet();
							File file = (File) queue.take();
							// 队列已经无对象
							if (file == exitFile) {
								// 再次添加"标志"，以让其他线程正常退出
								queue.put(exitFile);
								break;
							}
							System.out.println(threadName + ": " + index + " " + file.getPath());
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}
				}
			};
			exec.submit(write);
		}
		exec.shutdown();
	}

	/**
	 * <pre>
	 * 在实际应用中，有时候需要多个线程同时工作以完成同一件事情，而且在完成过程中，
	 * 往往会等待其他线程都完成某一阶段后再执行，等所有线程都到达某一个阶段后再统一执行。
	 * 比如有几个旅行团需要途经深圳、广州、韶关、长沙最后到达武汉。
	 * 旅行团中有自驾游的，有徒步的，有乘坐旅游大巴的；
	 * 这些旅行团同时出发，并且每到一个目的地，都要等待其他旅行团到达此地后再同时出发，直到都到达终点站武汉。
	 * 这时候CyclicBarrier就可以派上用场。CyclicBarrier最重要的属性就是参与者个数，另外最要方法是await()。
	 * 当所有线程都调用了await()后，就表示这些线程都可以继续执行，否则就会等待。
	 * </pre>
	 */
	private static void testCyclicBarrier() {
		CyclicBarrier barrier = new CyclicBarrier(2);
		ExecutorService exec = Executors.newFixedThreadPool(2);
		exec.submit(new Tour(barrier, "WalkTour", timeWalk));
		exec.submit(new Tour(barrier, "SelfTour", timeSelf));
		// exec.submit(new Tour(barrier, "BusTour", timeBus));
		exec.shutdown();
	}

	/**
	 * <pre>
	 * 考虑以下场景：浏览网页时，浏览器了5个线程下载网页中的图片文件，由于图片大小、网站访问速度等诸多因素的影响，
	 * 完成图片下载的时间就会有很大的不同。如果先下载完成的图片就会被先显示到界面上，反之，后下载的图片就后显示。
	 * Java的并发库的CompletionService可以满足这种场景要求。该接口有两个重要方法：submit()和take()。
	 * submit用于提交一个runnable或者callable，一般会提交给一个线程池处理；
	 * 而take就是取出已经执行完毕runnable或者callable实例的Future对象，如果没有满足要求的，就等待了。 
	 * CompletionService还有一个对应的方法poll，该方法与take类似，只是不会等待，如果没有满足要求，就返回null对象。
	 * </pre>
	 * 
	 * @throws InterruptedException
	 * @throws ExecutionException
	 */
	@SuppressWarnings("unchecked")
	private static void testCompletionService() throws InterruptedException, ExecutionException {
		ExecutorService exec = Executors.newFixedThreadPool(10);
		CompletionService serv = new ExecutorCompletionService(exec);
		for (int index = 0; index < 5; index++) {
			final int NO = index;
			Callable downImg = new Callable() {
				public String call() throws Exception {
					Thread.sleep((long) (Math.random() * MILLI * 10));
					return "Downloaded Image " + NO;
				}
			};
			serv.submit(downImg);
		}
		Thread.sleep(100 * 2);
		System.out.println("Show web content");
		for (int index = 0; index < 5; index++) {
			Future task = serv.poll(500, TimeUnit.MILLISECONDS);
			if (task == null) {
				System.out.println("null~");
				continue;
			}
			String img = (String) task.get();
			System.out.println(img);
		}
		for (int index = 0; index < 10; index++) {
			Future task = serv.take();
			if (task == null) {
				System.out.println("~2~null~");
				continue;
			}
			String img = (String) task.get();
			System.out.println("~~2null~" + img);
			Thread.sleep((long) (Math.random() * 2000));
		}
		System.out.println("End");
		// 关闭线程池
		exec.shutdown();
	}

	/**
	 * <pre>
	 * 有时候在实际应用中，某些操作很耗时，但又不是不可或缺的步骤。
	 * 比如用网页浏览器浏览新闻时，最重要的是要显示文字内容，至于与新闻相匹配的图片就没有那么重要的，所以此时首先保证文字信息先显示，
	 * 而图片信息会后显示，但又不能不显示，由于下载图片是一个耗时的操作，所以必须一开始就得下载。
	 * Java的并发库的Future类就可以满足这个要求。Future的重要方法包括get()和cancel()，get()获取数据对象，
	 * 如果数据没有加载，就会阻塞直到取到数据，而 cancel()是取消数据加载。
	 * 另外一个get(timeout)操作，表示如果在timeout时间内没有取到就失败返回，而不再阻塞。
	 * 下面的Demo简单的说明了Future的使用方法：一个非常耗时的操作必须一开始启动，但又不能一直等待；
	 * 其他重要的事情又必须做，等完成后，就可以做不重要的事情。
	 * </pre>
	 * 
	 * @throws InterruptedException
	 * @throws ExecutionException
	 */
	@SuppressWarnings("unchecked")
	private static void testCallable() throws InterruptedException, ExecutionException {
		final ExecutorService exec = Executors.newFixedThreadPool(5);
		Callable call = new Callable() {
			public String call() throws Exception {
				Thread.sleep(MILLI * 2);
				return "Other less important but longtime things.";
			}
		};
		Future task = exec.submit(call);
		// 重要的事情
		Thread.sleep(100 * 3);
		System.out.println("Let’s do important things.");
		// 其他不重要的事情
		String obj = (String) task.get();
		System.out.println(obj);
		// 关闭线程池
		exec.shutdown();
	}

	/**
	 * <pre>
	 * 从名字可以看出，CountDownLatch是一个倒数计数的锁，当倒数到0时触发事件，也就是开锁，其他人就可以进入了。
	 * 在一些应用场合中，需要等待某个条件达到要求后才能做后面的事情；同时当线程都完成后也会触发事件，以便进行后面的操作。
	 * CountDownLatch最重要的方法是countDown()和await()，前者主要是倒数一次，后者是等待倒数到0，如果没有到达0，就只有阻塞等待了。
	 * 一个CountDouwnLatch实例是不能重复使用的，也就是说它是一次性的，锁一经被打开就不能再关闭使用了，
	 * 如果想重复使用，请考虑使用CyclicBarrier。
	 * 下面的例子简单的说明了CountDownLatch的使用方法，模拟了100米赛跑，10名选手已经准备就绪，只等裁判一声令下。
	 * 当所有人都到达终点时，比赛结束。同样，线程池需要显式shutdown。
	 * </pre>
	 * 
	 * @throws InterruptedException
	 */
	private static void testCountDownLatch() throws InterruptedException {
		// 开始的倒数锁
		final CountDownLatch begin = new CountDownLatch(1);
		// 结束的倒数锁
		final CountDownLatch end = new CountDownLatch(10);
		// 十名选手
		final ExecutorService exec = Executors.newFixedThreadPool(10);
		System.out.println("begin0=" + begin.getCount());
		for (int index = 0; index < 10; index++) {
			final int NO = index + 1;
			Runnable run = new Runnable() {
				public void run() {
					try {
						begin.await();
						Thread.sleep((long) (Math.random() * MILLI));
						System.out.println("No." + NO + "arrived:end=" + end.getCount());
					} catch (InterruptedException e) {
					} finally {
						end.countDown();
					}
				}
			};
			exec.submit(run);
		}
		System.out.println("Game Start");
		long start = System.currentTimeMillis();
		begin.countDown();
		System.out.println("begin1=" + begin.getCount());
		end.await();
		System.out.println("end1=" + end.getCount());
		System.out.println("all time=" + (System.currentTimeMillis() - start));
		System.out.println("Game Over");
		exec.shutdown();
	}

	/**
	 * <pre>
	 * 操作系统的信号量是个很重要的概念，在进程控制方面都有应用。
	 * Java并发库的Semaphore可以很轻松完成信号量控制，Semaphore可以控制某个资源可被同时访问的个数，
	 * acquire()获取一个许可，如果没有就等待，而release()释放一个许可。
	 * 比如在Windows下可以设置共享文件的最大客户端访问个数。
	 * Semaphore维护了当前访问的个数，提供同步机制，控制同时访问的个数。
	 * 在数据结构中链表可以保存"无限"的节点，用Semaphore可以实现有限大小的链表。
	 * 另外重入锁ReentrantLock也可以实现该功能，但实现上要负责些，代码也要复杂些。
	 * 下面的Demo中申明了一个只有5个许可的Semaphore，而有20个线程要访问这个资源，通过acquire()和release()获取和释放访问许可。
	 * </pre>
	 */
	private static void testSemaphore() {
		// 线程池
		ExecutorService exec = Executors.newCachedThreadPool();
		// 只能5个线程同时访问
		final Semaphore semp = new Semaphore(3);
		// 模拟20个客户端访问
		for (int index = 0; index < 10; index++) {
			final int NO = index;
			Runnable run = new Runnable() {
				public void run() {
					try {
						// 获取许可
						long temp = (long) (Math.random() * 5000);
						//System.out.println("start Accessing:" + NO + ",temp=" + temp);
						semp.acquire();
						System.out.println("start Accessing11:" + NO + ",temp=" + temp);
						Thread.sleep(temp);
						// 访问完后，释放
						semp.release();
						System.out.println("end Accessing:" + NO + ",temp=" + temp);
					} catch (InterruptedException e) {
					}
				}
			};
			exec.execute(run);
		}
		// 退出线程池
		exec.shutdown();
	}

	static long randomTime() {
		return (long) (Math.random() * 1000);
	}

	static class Tour implements Runnable {
		private int[] times;
		private CyclicBarrier barrier;
		private String tourName;

		public Tour(CyclicBarrier barrier, String tourName, int[] times) {
			this.times = times;
			this.tourName = tourName;
			this.barrier = barrier;
		}

		public void run() {
			try {
				Thread.sleep(times[0] * MILLI);
				System.out.println(now() + tourName + " Reached Shenzhen");
				barrier.await();
				Thread.sleep(times[1] * MILLI);
				System.out.println(now() + tourName + " Reached Guangzhou");
				barrier.await();
				Thread.sleep(times[2] * MILLI);
				System.out.println(now() + tourName + " Reached Shaoguan");
				barrier.await();
				Thread.sleep(times[3] * MILLI);
				System.out.println(now() + tourName + " Reached Changsha");
				barrier.await();
				Thread.sleep(times[4] * MILLI);
				System.out.println(now() + tourName + " Reached Wuhan");
				barrier.await();
			} catch (InterruptedException e) {
				e.printStackTrace();
			} catch (BrokenBarrierException e) {
				e.printStackTrace();
			}
		}
	}

}
