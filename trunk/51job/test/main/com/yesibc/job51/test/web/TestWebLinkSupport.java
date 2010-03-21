package com.yesibc.job51.test.web;

import com.yesibc.job51.model.Code;


public class TestWebLinkSupport {

	public TestWebLinkSupport() {
	}

	public static void setThread(Code a){
		a.setCname("b");
	}
	
	private static long COUNTLOADED = 0;

	class MyThread extends Thread {
		private int j = 0;

		public MyThread(int j) {
			this.j = j;
		}

		public void run() {
			TestWebLinkSupport.doCount("tag" + j);
		}
	}

	public static void main(String[] args) {
		Code code = new Code();
		setThread(code);
		System.out.println(code.getCname());
//		for (int i = 0; i < 1500; i++) {
//			TestWebLinkSupport tt = new TestWebLinkSupport();
//			Thread t = tt.new MyThread(i);
//			t.start();
//		}
	}

	public synchronized static void doCount(String tag) {

		COUNTLOADED++;
		System.out.println(tag + "[    " + COUNTLOADED + "]" + "Start1");
		for (int i = 0; i < 1000000; i++) {

		}
		System.out.println(tag + "[    " + COUNTLOADED + "]" + "end!");
	}

}
