/**
 * $Id: ConsumeThreadPoolPara.java,v 1.0  2007-6-28 下午09:12:35 davidye Exp $
 */

package com.yesibc.core.thread;

import java.io.*;

/**
 * @author David.ye o_olle_e@hotmail.com create time: 2007-6-28 下午09:12:35
 */

public class ConsumeThreadPoolPara implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4308820773615132529L;

	private int minPools;

	private int maxPools;

	private int checkThreadPeriod;

	public int getMinPools() {
		return minPools;
	}

	public int getMaxPools() {
		return maxPools;
	}

	public int getCheckThreadPeriod() {
		return checkThreadPeriod;
	}

	public void setMinPools(int minPools) {
		this.minPools = minPools;
	}

	public void setMaxPools(int maxPools) {
		this.maxPools = maxPools;
	}

	public void setCheckThreadPeriod(int checkThreadPeriod) {
		this.checkThreadPeriod = checkThreadPeriod;
	}

	public String toString() {
		return minPools + " " + maxPools + " " + checkThreadPeriod;
	}

	public ConsumeThreadPoolPara() {
	}

	public static void main(String[] args) {
		new ConsumeThreadPoolPara();
	}

}
