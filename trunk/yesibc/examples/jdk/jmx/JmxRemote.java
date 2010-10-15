package jdk;

import java.lang.management.ManagementFactory;
import java.lang.management.OperatingSystemMXBean;
import java.lang.management.ThreadMXBean;

import javax.management.MBeanServerConnection;
import javax.management.remote.JMXConnector;
import javax.management.remote.JMXConnectorFactory;
import javax.management.remote.JMXServiceURL;

public class JmxRemote {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			// connect to a separate VM's MBeanServer, using the JMX RMI
			// functionality
			JMXServiceURL address = new JMXServiceURL("service:jmx:rmi:///jndi/rmi://10.164.150.13:9999/jmxrmi");
			JMXConnector connector = JMXConnectorFactory.connect(address);
			MBeanServerConnection mbs = connector.getMBeanServerConnection();
			ThreadMXBean threadBean = ManagementFactory.newPlatformMXBeanProxy(mbs,
					ManagementFactory.THREAD_MXBEAN_NAME, ThreadMXBean.class);
			System.out.println(threadBean.getThreadCount());// 线程数量

			OperatingSystemMXBean osbean = ManagementFactory.newPlatformMXBeanProxy(mbs,
					ManagementFactory.OPERATING_SYSTEM_MXBEAN_NAME, OperatingSystemMXBean.class);
			System.out.println(osbean.getArch());// 操作系统体系结构
			System.out.println(osbean.getName());// 操作系统名字
			System.out.println(osbean.getAvailableProcessors());// 处理器数目
			System.out.println(osbean.getVersion());// 操作系统版本
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
