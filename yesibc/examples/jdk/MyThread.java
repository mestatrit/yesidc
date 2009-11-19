package jdk;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

class MyThread extends Thread {
	private static Log log = LogFactory.getLog(MyThread.class);
	public int x = 0;
	public static int i = 0;

	public MyThread(int x){
		this.x = x;
	}
	
	public void run() {
		try {
			if(x==3){
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
