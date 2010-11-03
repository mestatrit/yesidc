/**
 * $Id: LogJdkvm.java,v 1.8 2009/12/11 02:52:37 abel Exp $
 */

package com.yesiic.common;

import java.lang.management.ClassLoadingMXBean;
import java.lang.management.ManagementFactory;
import java.lang.management.MemoryMXBean;
import java.lang.management.MemoryUsage;
import java.math.BigDecimal;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class LogJdkvm {

	// static String test =
	// "ctlmadm  13750  0.2  3.3335088266992 ?        S  11?? 13 55:03 /usr/jdk/jdk1.5.0_06/bin/java -server -Xms128m -Xmx256m -verbose:gc -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Djava.util.logging.config.file=/app/prodapp/CN/product/srvintra3/conf/logging.properties -Djava.endorsed.dirs=/app/prodapp/CN/product/srvintra3/common/endorsed -classpath :/app/prodapp/CN/product/srvintra3/bin/bootstrap.jar:/app/prodapp/CN/product/srvintra3/bin/commons-logging-api.jar -Dcatalina.base=/app/prodapp/CN/product/srvintra3 -Dcatalina.home=/app/prodapp/CN/product/srvintra3 -Djava.io.tmpdir=/app/prodapp/CN/product/srvintra3/temp org.apache.catalina.startup.Bootstrap start";

	private static Log logMemory = LogFactory.getLog(LogJdkvm.class);
	static MemoryMXBean mem = null;
	static ClassLoadingMXBean cl = null;
	static MemoryUsage heapMemoryUsage = null;
	static MemoryUsage nonHeapMemoryUsage = null;
	static double heapUsage = 0;
	static double noHeapUsage = 0;
	static String javaHome = "";
	static boolean check = true;
	private int i = 0;
	private double limit = 850;

	public void logJdkvm() {
		try {
			if (!check) {
				logMemory.error("No need to be checked!");
			}

			// Java 虚拟机内存系统的管理接口。 MemoryMXBean
			mem = (MemoryMXBean) ManagementFactory.getMemoryMXBean();
			nonHeapMemoryUsage = mem.getNonHeapMemoryUsage();
			heapMemoryUsage = mem.getHeapMemoryUsage();
			// 返回用于对象分配的堆的当前内存使用量
			// logMemory.info("Heap usage str:" + mem.getHeapMemoryUsage());
			// Java 虚拟机使用的非堆内存的当前内存使用量
			// logMemory.info("Non-Heap usage str:" +
			// mem.getNonHeapMemoryUsage());

			heapUsage = divide(heapMemoryUsage.getUsed(), (1024 * 1024), 4);
			noHeapUsage = divide(nonHeapMemoryUsage.getUsed(), (1024 * 1024), 4);

			i++;
			logMemory.info("[" + i + "] Heap usage:" + heapUsage + "Mb" + ",Non-Heap usage:" + noHeapUsage + "Mb");

			if ((heapUsage + noHeapUsage) > limit) {


				try {
					check = false;

					long start = System.currentTimeMillis();
					logMemory.info("Memory is greater than " + limit + " Mb. GC start!");

					System.gc();

					mem = (MemoryMXBean) ManagementFactory.getMemoryMXBean();
					nonHeapMemoryUsage = mem.getNonHeapMemoryUsage();
					heapUsage = divide(heapMemoryUsage.getUsed(), (1024 * 1024), 4);
					noHeapUsage = divide(nonHeapMemoryUsage.getUsed(), (1024 * 1024), 4);

					logMemory.info("GC End!Heap usage:" + heapUsage + "Mb" + ",Non-Heap usage:" + noHeapUsage
							+ "Mb.Times:" + (System.currentTimeMillis() - start));

				} finally {
					check = true;
				}

			}

			// cl = (ClassLoadingMXBean)
			// ManagementFactory.getClassLoadingMXBean();
			// 当前加载到 Java 虚拟机中的类的数量
			// logMemory.info("Count of loaded classes in JVM currently:" +
			// cl.getLoadedClassCount());
			// Java 虚拟机开始执行到目前已经加载的类的总数
			// logMemory.info("Count of loaded classes in JVM totally:" +
			// cl.getTotalLoadedClassCount());
			// Java 虚拟机开始执行到目前已经卸载的类的总数
			// logMemory.info("Count of classes un-loaded totally:" +
			// cl.getUnloadedClassCount());

		} catch (Exception e) {
			logMemory.error("CheckJVMMemory:", e);
		} finally {
			mem = null;
			cl = null;
			heapMemoryUsage = null;
			nonHeapMemoryUsage = null;
		}
	}

	private static double divide(long v1, long v2, int scale) {
		if (scale < 0) {
			throw new IllegalArgumentException("The scale must be a positive integer or zero");
		}

		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.divide(b2, scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}

	public static void main(String[] args) {
		LogJdkvm lj = new LogJdkvm();
		lj.logJdkvm();
	}


}
