/**
 * $Id: XFireTestCase.java,v 1.2 2007/10/22 01:43:34 abel Exp $
 */

package com.yesibc.core.components.xfire;

import org.codehaus.xfire.spring.AbstractXFireSpringTest;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.yesibc.core.CoreConstants;

/**
 * XFireTestCase can be extended by real DAO to test with integration.
 * <p/>
 * It implements the function of "getContext()" to get spring context.
 * The transaction is controlled in this class.Thus it can avoid the problem of Hibernate lazyLoad.
 *
  * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午10:36:41
 */
public class XFireTestCase extends AbstractXFireSpringTest {

	protected PlatformTransactionManager transactionManager;

	protected TransactionStatus transactionStatus;

	protected boolean defaultRollback = true;

	public void setDefaultRollback(boolean defaultRollback) {
		this.defaultRollback = defaultRollback;
	}

	@Override
	public void setUp() throws Exception {
		super.setUp();
		transactionManager = (PlatformTransactionManager) getBean("transactionManager");
		transactionStatus = transactionManager.getTransaction(new DefaultTransactionDefinition());
	}

	@Override
	protected void tearDown() throws Exception {
		if (defaultRollback)
			transactionManager.rollback(this.transactionStatus);
		else
			transactionManager.commit(this.transactionStatus);
		super.tearDown();
	}

	
	@Override
	protected ApplicationContext createContext() {
		return new ClassPathXmlApplicationContext(new String[]{CoreConstants.DEFAULT_CONTEXT,
				CoreConstants.DEFAULT_TEST_CONTEXT,CoreConstants.DEFAULT_XFIRE_CONTEXT});

	}
	

}
