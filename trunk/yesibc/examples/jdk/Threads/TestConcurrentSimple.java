package jdk.Threads;

import java.awt.Graphics;
import java.util.Random;
import java.util.concurrent.locks.ReadWriteLock;

import com.sun.corba.se.impl.orbutil.concurrent.Mutex;

public class TestConcurrentSimple {

	/**
	 * 独占例子
	 */
	class ParticleUsingMutex {
		int x;
		int y;
		final Random rng = new Random();
		final Mutex mutex = new Mutex();

		public void move() {
			try {
				mutex.acquire();
				try {
					x += rng.nextInt(2) - 1;
					y += rng.nextInt(2) - 1;
				} finally {
					mutex.release();
				}
			} catch (InterruptedException ie) {
				Thread.currentThread().interrupt();
			}
		}

		public void draw(Graphics g) {
			int lx, ly;
			try {
				mutex.acquire();
				try {
					lx = x;
					ly = y;
				} finally {
					mutex.release();
				}
			} catch (InterruptedException ie) {
				Thread.currentThread().interrupt();
				return;
			}
			g.drawRect(lx, ly, 10, 10);
		}
	}

	/**
	 * 回退(Backoff)例子
	 */
	class CellUsingBackoff {
		private long val;
		private final Mutex mutex = new Mutex();

		void swapVal(CellUsingBackoff other) throws InterruptedException {
			if (this == other)
				return; // alias check
			for (;;) {
				mutex.acquire();
				try {
					if (other.mutex.attempt(0)) {
						try {
							long t = val;
							val = other.val;
							other.val = t;
							return;
						} finally {
							other.mutex.release();
						}
					}
				} finally {
					mutex.release();
				}
				;
				Thread.sleep(100); // heuristic retry interval
			}
		}
	}

	/**
	 * 读写锁
	 * 
	 * @author Abel
	 * 
	 */
	class WithRWLock {
		final ReadWriteLock rw;

		public WithRWLock(ReadWriteLock l) {
			rw = l;
		}

		public void performRead(Runnable readCommand) throws InterruptedException {
			rw.readLock().lock();
			try {
				readCommand.run();
			} finally {
				rw.readLock().unlock();
			}
		}

		public void performWrite() {
			// similar
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

}
