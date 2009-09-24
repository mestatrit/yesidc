/**
 * $Id: ThreadTest1.java,v 1.0  2007-6-30 下午04:53:38 davidye Exp $
 */

package test.thread;

/**
 * @author David.ye o_olle_e@hotmail.com create time: 2007-6-30 下午04:53:38
 */
public class ThreadTest1 {
	private int j;

	public static void main(String args[]) {
		
		System.out.println(1%3);
		System.out.println(2%3);
		System.out.println(3%3);
		
		ThreadTest1 tt = new ThreadTest1();
		Inc inc = tt.new Inc();
		Dec dec = tt.new Dec();
		for (int i = 0; i < 2; i++) {
			Thread t = new Thread(inc);
			t.start();
			t = new Thread(dec);
			t.start();
		}
	}

	private synchronized void inc() {
		j++;
		System.out.println(Thread.currentThread().getName() + "-inc:" + j);
	}

	private synchronized void dec() {
		j--;
		System.out.println(Thread.currentThread().getName() + "-dec:" + j);
	}

	class Inc implements Runnable {
		public void run() {
			for (int i = 0; i < 100; i++) {
				inc();
			}
		}
	}

	class Dec implements Runnable {
		public void run() {
			for (int i = 0; i < 100; i++) {
				dec();
			}
		}
	}

}
