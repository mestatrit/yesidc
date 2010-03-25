package basic;

import junit.framework.Test;
import junit.framework.TestSuite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses( { Junit4CommonTest.class, TestJunitWithParam.class })
public class JUnit4Suite {

	/**
	 * test suit of Junit3
	 * 
	 * @return
	 */

	public static Test suite() {
		TestSuite suite = new TestSuite("Test for junit");
		// $JUnit-BEGIN$
		suite.addTestSuite(Junit4CommonTest.class);
		suite.addTestSuite(TestJunitWithParam.class);
		// $JUnit-END$
		return suite;
	}

}
