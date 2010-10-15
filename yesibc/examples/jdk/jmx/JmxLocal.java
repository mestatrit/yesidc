package jdk;

import java.lang.management.ManagementFactory;
import java.lang.management.MemoryPoolMXBean;
import java.lang.management.OperatingSystemMXBean;
import java.lang.management.ThreadMXBean;
import java.util.List;
import java.util.logging.LogManager;
import java.util.logging.LoggingMXBean;

public class JmxLocal {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		OperatingSystemMXBean osbean = ManagementFactory.getOperatingSystemMXBean();
		System.out.println(osbean.getArch());// 操作系统体系结构
		System.out.println(osbean.getName());// 操作系统名字
		System.out.println(osbean.getAvailableProcessors());// 处理器数目
		System.out.println(osbean.getVersion());// 操作系统版本
		ThreadMXBean threadBean = ManagementFactory.getThreadMXBean();
		System.out.println(threadBean.getThreadCount());// 总线程数
		System.out.println("ThreadMXBean getCurrentThreadCpuTime: " + threadBean.getCurrentThreadCpuTime());

		List<MemoryPoolMXBean> memPoolBeans = ManagementFactory.getMemoryPoolMXBeans();
		for (MemoryPoolMXBean mpb : memPoolBeans) {
			System.out.println("Memory Pool: " + mpb.getName());
		}

		LoggingMXBean logBean = LogManager.getLoggingMXBean();
		for (String str : logBean.getLoggerNames()) {
			System.out.println("LoggingMXBean: " + str);
		}
	}

}
