package com.yesibc.core.env;

import java.lang.management.ClassLoadingMXBean;
import java.lang.management.MemoryMXBean;
import java.lang.management.MemoryUsage;
import java.lang.management.RuntimeMXBean;
import java.util.ArrayList;
import java.util.List;

import sun.management.ManagementFactory;

public class JVMMemory extends Thread {

	RuntimeMXBean mxbean;
	ClassLoadingMXBean aClassLoadingMXBean = null;
	MemoryMXBean aMemoryMXBean = null;
	MemoryUsage aMemoryUsage = null;
	private void setFactory() {
		mxbean = ManagementFactory.getRuntimeMXBean();
		// 以下是取得虚拟机的属性
		System.out.println(mxbean.getVmVendor());
		System.out.println(mxbean.getVmName());
		System.out.println(mxbean.getClassPath());
		// 类管理接口
		aClassLoadingMXBean = ManagementFactory.getClassLoadingMXBean();
		System.out.println(aClassLoadingMXBean.getLoadedClassCount());
		// 内存管理接口
		aMemoryMXBean = ManagementFactory.getMemoryMXBean();
		System.out.println(aMemoryMXBean.getObjectPendingFinalizationCount());// 返回其终止被挂起的对象的近似数目
		// 返回 Java 虚拟机使用的非堆内存的当前使用量
		aMemoryUsage = aMemoryMXBean.getNonHeapMemoryUsage(); // 虚拟机启动时从系统得到的内存（以字节为单位?
		System.out.println("虚拟机启动时从系统得到的内存:" + aMemoryUsage.getInit()); // 表示当前已经使用的内存量（以字节为单位）
		System.out.println("当前已经使用的内存量:" + aMemoryUsage.getUsed()); // 表示保证可以由
		// Java
		// 虚拟机使用的内存量（以字节为单位）
		System.out.println("保证可以由 Java 虚拟机使用的内存量:" + aMemoryUsage.getCommitted()); // 表示可以用于内存管理的最大内存量（以字节为单位）
		System.out.println("内存管理的最大内存量:" + aMemoryUsage.getMax());
		System.out.println("总体描述:" + aMemoryUsage.toString());
	}

	public void run() {
		try {
			while (true) {
				setFactory();
				sleep(1000);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

	}

	public static void main(String[] args) {
//		try {
//			ProcessBuilder pb = new ProcessBuilder("netstat");
//			Process process = pb.start();
//
//			InputStreamReader isr = new InputStreamReader(new BufferedInputStream(process.getInputStream()));
//			char[] buffer = new char[1024];
//
//			String str = "";
//			while (isr.read(buffer) != -1) {
//				for (char c : buffer) {
//					str = str+c;
//				}
//			}
//			System.out.print(str);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}

		//JVMMemory aTest = new JVMMemory();
		//aTest.start();
		
		String str = "       3106988    3082768      24220          0     140104    2140876";
		String[] s = str.split(" ");
		List<String> ls = new ArrayList<String>();
		for(String s1 : s){
//			System.out.print("[s1="+s1);
//			System.out.print("][s1 equals="+"".equals(s1));
//			System.out.print("][s1 null=");
//			System.out.print(s1==null);
//			System.out.println("]");
			if(!"".equals(s1)){
				ls.add(s1);
				s1 = null;
			}
		}
		System.out.println(ls.size());
		for(String s1 : ls){
			System.out.println(s1);
		}
	}

}
