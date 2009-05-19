/**
 * $Id: BaseTestCase.java,v 1.0  2007-6-3 下午05:37:15 davidye Exp $
 */

package com.yesibc.core.test;

import junit.framework.TestCase;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Base class for running DAO tests.
 * 
 * @author David.ye o_olle_e@hotmail.com create time: 2007-6-3 下午05:37:15
 */
public class BaseTestCase extends TestCase{
	protected final Log log = LogFactory.getLog(getClass());

	protected final static ApplicationContext ctx;

	protected HibernateLazyResolver hibernateLazyResolver;

	static {
		String[] paths = { "/conf/applicationContext-dataSource.xml",
				"/org/summerfragrance/vfs/applicationContext-vfs.xml",
				"/org/summerfragrance/security/dao/hibernate/applicationContext-hibernate.xml"
		// "/org/summerfragrance/security/dao/jdbc/applicationContext-jdbc.xml"
		};
		ctx = new ClassPathXmlApplicationContext(paths);
	}

	/**
	 * @see junit.framework.TestCase#setUp()
	 */
	protected void setUp() throws Exception {
		super.setUp();
		hibernateLazyResolver = (HibernateLazyResolver) ctx
				.getBean("hibernateLazyResolver");
		hibernateLazyResolver.openSession();
	}

	/**
	 * @see junit.framework.TestCase#tearDown()
	 */
	protected void tearDown() throws Exception {
		super.tearDown();
		hibernateLazyResolver.releaseSession();
		hibernateLazyResolver = null;
	}
}
