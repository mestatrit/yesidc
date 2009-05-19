/**
 * $Id: AbstractTestBean.java,v 1.0  2007-6-3 ����05:04:04 davidye Exp $
 */

package com.yesibc.core.test;

import org.hibernate.FlushMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.springframework.orm.hibernate3.SessionHolder;
import org.springframework.transaction.support.TransactionSynchronizationManager;

/**
 * @author David.ye o_olle_e@hotmail.com create time: 2007-6-3 ����05:04:04
 */
public abstract class AbstractTestBean {
	protected ApplicationContext applicationContext;

	private SessionFactory sessionFactory;

	private Session session;

	protected void setUp() throws Exception {

		String configFile = "spring/*.xml";
		applicationContext = new ClassPathXmlApplicationContext(configFile);
		sessionFactory = (SessionFactory) applicationContext
				.getBean("sessionFactory");
		session = SessionFactoryUtils.getSession(sessionFactory, true);
		session.setFlushMode(FlushMode.MANUAL);
		TransactionSynchronizationManager.bindResource(sessionFactory,
				new SessionHolder(session));
	}

	protected void tearDown() throws Exception {
		TransactionSynchronizationManager.unbindResource(sessionFactory);
		SessionFactoryUtils.releaseSession(session, sessionFactory);
	}

}
