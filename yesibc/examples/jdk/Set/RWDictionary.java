package jdk.Set;

import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import javax.xml.crypto.Data;

public class RWDictionary {

	private final Map<String, Data> m = new TreeMap<String, Data>();

	// 1）创建ReentrantReadWriteLock对象
	private final ReentrantReadWriteLock rwl = new ReentrantReadWriteLock();
	private final Lock r = rwl.readLock();// 2) 抽取读锁
	private final Lock w = rwl.writeLock();// 2) 抽取写锁

	public Data get(String key) {
		// 对所有读者加锁
		r.lock();
		try {
			return m.get(key);
		} finally {
			r.unlock();
		}
	}

	public String[] allKeys() {
		// 对所有读者加锁
		r.lock();
		try {
			return (String[]) m.keySet().toArray();
		} finally {
			r.unlock();
		}
	}

	public Data put(String key, Data value) {
		// 对所有写者加锁：
		w.lock();
		try {
			return m.put(key, value);
		} finally {
			w.unlock();
		}
	}

	public void clear() {
		// 对所有写者加锁：
		w.lock();
		try {
			m.clear();
		} finally {
			w.unlock();
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
