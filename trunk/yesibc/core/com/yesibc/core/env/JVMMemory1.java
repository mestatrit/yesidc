package com.yesibc.core.env;

public class JVMMemory1 extends Thread {

	private void setFactory() {
		CheckJVMMemory.checkJVMMemory();
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

		JVMMemory1 aTest = new JVMMemory1();
		aTest.start();
	}

}
