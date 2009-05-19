/**
 * $Id: Probe.java,v 1.0  2007-7-1 下午01:27:11 davidye Exp $
 */

package com.yesibc.core.thread;

/**
 * @author David.ye o_olle_e@hotmail.com create time: 2007-7-1 下午01:27:11
 */
public class Probe {
	public Probe() {
	}

	public void run() {
		while (true) {
			Thread[] x = new Thread[100];
			Thread.enumerate(x);
			for (int i = 0; i < 100; i++) {
				Thread t = x[i];
				if (t == null)
					break;
				else
					System.out.println(t.getName() + "\t" + t.getPriority()
							+ "\t" + t.isAlive() + "\t" + t.isDaemon());
			}
		}
	}

}
