package com.yesibc.core.env;

import java.lang.management.ClassLoadingMXBean;
import java.lang.management.CompilationMXBean;
import java.lang.management.ManagementFactory;
import java.lang.management.MemoryMXBean;
import java.lang.management.MemoryManagerMXBean;
import java.lang.management.MemoryPoolMXBean;
import java.lang.management.OperatingSystemMXBean;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

public class JDKMBean {

	public static <T> void printMXBean(Class<T> t, Object object) {
		Method[] methods = t.getMethods();
		T instance = (T) object;
		System.out.printf("%n---%s---%n", t.getName());
		for (Method m : methods) {
			if (m.getName().startsWith("get")) {
				try {
					Object rtValue = m.invoke(instance, new Object[0]);
					System.out.printf("%s:%s%n", m.getName().substring(3),
							rtValue);
				} catch (IllegalArgumentException e1) {
				} catch (IllegalAccessException e) {
				} catch (InvocationTargetException e) {
				}
			}
		}
	}

	public static <T> void printMXBeans(Class<T> t, List<T> list) {
		for (T bean : list) {
			printMXBean(t, bean);
		}
	}

	public static void main(String[] args) {
		JDKMBean.printMXBean(OperatingSystemMXBean.class, ManagementFactory
				.getOperatingSystemMXBean());
		JDKMBean.printMXBean(CompilationMXBean.class, ManagementFactory
				.getCompilationMXBean());
		JDKMBean.printMXBean(ClassLoadingMXBean.class, ManagementFactory
				.getClassLoadingMXBean());
		JDKMBean.printMXBean(MemoryMXBean.class, ManagementFactory
				.getMemoryMXBean());
		JDKMBean.printMXBeans(MemoryManagerMXBean.class, ManagementFactory
				.getMemoryManagerMXBeans());
		JDKMBean.printMXBeans(MemoryPoolMXBean.class, ManagementFactory
				.getMemoryPoolMXBeans());
	}
}