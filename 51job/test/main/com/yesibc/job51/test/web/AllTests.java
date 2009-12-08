package com.yesibc.job51.test.web;

import junit.framework.Test;
import junit.framework.TestSuite;

public class AllTests {

	public static Test suite() {
		TestSuite suite = new TestSuite("Test for com.yesibc.job51.test.web");
		//$JUnit-BEGIN$
		suite.addTestSuite(Test1.class);
		//$JUnit-END$
		return suite;
	}

}
