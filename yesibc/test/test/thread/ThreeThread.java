/**
 * $Id: ThreeThread.java,v 1.0  2007-7-1 下午14:06:00 Abel.ye Exp $
 */

package test.thread;


/**
 * 3 threads: 2 of them write into an array/list of fixed size 100,1 of them
 * reads and prints out according to the elements' create time.
 * 
 * @author <a href="mailto:o_olle_e@hotmail.com">Abel.ye</a>
 * @version $Revision: 1.0 $
 * @since 1.0
 */

public class ThreeThread {

	private int i = 0;

	private int j = 0;

	private int tag = 0;

	/**
	 * int: array's size
	 */
	private int size = 100;

	/**
	 * the count of threads that write to an array. int:writeThreadCount
	 */
	private static int writeThreadCount = 2;

	/**
	 * the count of threads that read from an array. int:readThreadCount
	 */
	private static int readThreadCount = 1;

	/**
	 * the count of writeThreads' running int:writeCount
	 */
	private int writeCount = size - writeThreadCount + 1;

	/**
	 * the array that threads write to and read from. Object[][]:obj
	 */
	Object[][] obj = new Object[size][2];

	/**
	 * main
	 * 
	 * @param args
	 */
	public static void main(String args[]) {
		ThreeThread tt = new ThreeThread();
		Write2Array wa = tt.new Write2Array();
		ReadFromArray ra = tt.new ReadFromArray();
		for (int t = 0; t < readThreadCount; t++) {
			Thread raT = new Thread(ra);
			raT.start();
		}
		for (int t = 0; t < writeThreadCount; t++) {
			Thread waT = new Thread(wa);
			waT.start();
		}
	}

	private synchronized void write2Array() {
		if (i > j && tag == 1) {
			System.out.println("notify()");
			notify();
			tag = 0;
		}

		obj[i][0] = String.valueOf(System.currentTimeMillis());
		obj[i][1] = String.valueOf(i);
		System.out.println(Thread.currentThread().getName()
				+ " created the object '" + obj[i][1] + "' at " + obj[i][0]
				+ ".");
		i++;
	}

	private synchronized void readFromArray() {
		if (j >= i) {
			try {
				tag = 1;
				System.out.println("wait()");
				wait();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			System.out.println(Thread.currentThread().getName()
					+ " read the object '" + obj[j][1] + "' at "
					+ System.currentTimeMillis() + ".");
			j++;
		}
	}

	/**
	 * 2 of threads write into an array of fixed size 100
	 */
	class Write2Array implements Runnable {
		public void run() {
			while (i < writeCount) {
				write2Array();
			}
		}

	}

	/**
	 * 1 of threads reads and prints out according to the elements' create time.
	 */
	class ReadFromArray implements Runnable {
		public void run() {
			while (j < size) {
				readFromArray();
			}
		}
	}

}
