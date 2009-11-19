package com.yesibc.core.env;

/**
 * <pre>
 软件包 java.lang.management 提供管理接口，用于监视和管理 Java 虚拟机以及 Java 虚拟机在其上运行的操作系统。
 它同时允许从本地和远程对正在运行的 Java 虚拟机进行监视和管理。 

 管理接口
 ClassLoadingMXBean  Java 虚拟机的类加载系统。 
 CompilationMXBean  Java 虚拟机的编译系统。 
 MemoryMXBean  Java 虚拟机的内存系统。 
 ThreadMXBean  Java 虚拟机的线程系统。 
 RuntimeMXBean  Java 虚拟机的运行时系统。 
 OperatingSystemMXBean  Java 虚拟机在其上运行的操作系统。 
 GarbageCollectorMXBean  Java 虚拟机中的垃圾回收器。 
 MemoryManagerMXBean  Java 虚拟机中的内存管理器。 
 MemoryPoolMXBean  Java 虚拟机中的内存池。 
 </pre>
 */
import java.lang.management.ClassLoadingMXBean;
import java.lang.management.ManagementFactory;
import java.lang.management.MemoryMXBean;
import java.lang.management.MemoryUsage;
import java.math.BigDecimal;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class CheckJVMMemory {

	private static Log logMemory = LogFactory.getLog("logMemory");
	static MemoryMXBean mem = null;
	static ClassLoadingMXBean cl = null;
	static MemoryUsage heapMemoryUsage = null;
	static MemoryUsage nonHeapMemoryUsage = null;
	static double heapUsage = 0;
	static double noHeapUsage = 0;

	public static void checkJVMMemory() {
		try {
			// Java 虚拟机内存系统的管理接口。 MemoryMXBean
			mem = (MemoryMXBean) ManagementFactory.getMemoryMXBean();
			nonHeapMemoryUsage = mem.getNonHeapMemoryUsage();
			heapMemoryUsage = mem.getHeapMemoryUsage();
			// 返回用于对象分配的堆的当前内存使用量
			logMemory.info("Heap usage:" + mem.getHeapMemoryUsage());
			// Java 虚拟机使用的非堆内存的当前内存使用量
			logMemory.info("Non-Heap usage:" + mem.getNonHeapMemoryUsage());

			heapUsage = divide(heapMemoryUsage.getUsed(), (1024 * 1024), 4);
			noHeapUsage = divide(nonHeapMemoryUsage.getUsed(), (1024 * 1024), 4);
			logMemory.info("Heap usage:" + heapUsage + "Mb");
			logMemory.info("Non-Heap usage:" + noHeapUsage + "Mb");
			
			if(heapUsage + noHeapUsage > 200){
				logMemory.error("Warning!");
			}

			cl = (ClassLoadingMXBean) ManagementFactory.getClassLoadingMXBean();
			// 当前加载到 Java 虚拟机中的类的数量
			logMemory.info("Count of loaded classes in JVM currently:"
					+ cl.getLoadedClassCount());
			// Java 虚拟机开始执行到目前已经加载的类的总数
			logMemory.info("Count of loaded classes in JVM totally:"
					+ cl.getTotalLoadedClassCount());
			// Java 虚拟机开始执行到目前已经卸载的类的总数
			logMemory.info("Count of classes un-loaded totally:"
					+ cl.getUnloadedClassCount());
		} catch (Exception e) {
			logMemory.error("CheckJVMMemory:", e);
		} finally {
			mem = null;
			cl = null;
			heapMemoryUsage = null;
			nonHeapMemoryUsage = null;
		}
	}

	public static double divide(long v1, long v2, int scale) {
		if (scale < 0) {
			throw new IllegalArgumentException(
					"The scale must be a positive integer or zero");
		}

		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.divide(b2, scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}

	public static void main(String[] args) {
		checkJVMMemory();
	}

}
