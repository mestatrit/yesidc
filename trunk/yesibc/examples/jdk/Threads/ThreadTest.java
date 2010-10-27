package jdk.Threads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ThreadTest {
	private static Log log = LogFactory.getLog(ThreadTest.class);

	public static void main(String[] args) throws Exception {
		List<Thread> ls = new ArrayList<Thread>();
		for (int i = 0; i < 10; i++) {
			Thread t = new MyThread(i);
			//ThreadPool.loadPool(10).execute(t);
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
				Thread.sleep(1000);
			}
			if (ls.isEmpty()) {
				System.out.println(ls == null);
				System.out.println(ls.isEmpty());
				System.out.println("finish remove!");
				break;
			}
		}
		// Thread.sleep(1000);// 让上面的线程运行完成
		// R r = new R();
		// for (int i = 0; i < 10; i++) {
		// Thread t = new Thread(r);
		// t.start();
		// }
	}
}
