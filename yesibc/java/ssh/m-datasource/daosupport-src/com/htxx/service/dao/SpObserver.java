/**
 * 
 */
package com.htxx.service.dao;

/**
 * @author FanGang
 *
 */
public class SpObserver {
	private static ThreadLocal local = new ThreadLocal();

	public static void putSp(String sp) {
		local.set(sp);
	}

	public static String getSp() {
		return (String)local.get();
	}
}