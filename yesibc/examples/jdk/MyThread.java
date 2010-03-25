package jdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

class MyThread extends Thread {
	public static void main(String[] args) throws Exception {
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
