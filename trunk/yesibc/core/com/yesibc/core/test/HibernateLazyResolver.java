/**
 * $Id: HibernateLazyResolver.java,v 1.0  2007-6-3 ����05:22:30 davidye Exp $
 */

package com.yesibc.core.test;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.FlushMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.springframework.orm.hibernate3.SessionHolder;
import org.springframework.transaction.support.TransactionSynchronizationManager;

/**
 * <class>HibernateLazyResolver</class> 用于模拟 OpenSessionInViewInterceptor,
 * 它可以被任意使用而不依赖于 Web 环境
 * 
 * @author David.ye o_olle_e@hotmail.com create time: 2007-6-3 5:22:30
 */
public class HibernateLazyResolver {
	private static Log logger = LogFactory.getLog(HibernateLazyResolver.class);

	private boolean singleSession = true;

	private SessionFactory sessionFactory;

	boolean participate = false;

	protected Session session = null;

	public final void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * Set whether to use a single session for each request. Default is true.
	 * <p>
	 * If set to false, each data access operation or transaction will use its
	 * own session (like without Open Session in View). Each of those sessions
	 * will be registered for deferred close, though, actually processed at
	 * request completion.
	 * 
	 * @see SessionFactoryUtils#initDeferredClose
	 * @see SessionFactoryUtils#processDeferredClose
	 */
	public void setSingleSession(boolean singleSession) {
		this.singleSession = singleSession;
	}

	/**
	 * Return whether to use a single session for each request.
	 */
	protected boolean isSingleSession() {
		return singleSession;
	}

	public void afterPropertiesSet() throws Exception {
		if (sessionFactory == null) {
			throw new IllegalArgumentException("SessionFactory is reqirued!");
		}
	}

	/**
	 * 初始化 session, 在需要 lazy 的开始处调用
	 * 
	 */
	public void openSession() {
		if (isSingleSession()) {
			// single session mode
			if (TransactionSynchronizationManager.hasResource(sessionFactory)) {
				// Do not modify the Session: just set the participate flag.
				participate = true;
			} else {
				logger
						.debug("Opening single Hibernate Session in HibernateLazyResolver");
				session = getSession(sessionFactory);
				TransactionSynchronizationManager.bindResource(sessionFactory,
						new SessionHolder(session));
			}
		} else {
			// deferred close mode
			if (SessionFactoryUtils.isDeferredCloseActive(sessionFactory)) {
				// Do not modify deferred close: just set the participate flag.
				participate = true;
			} else {
				SessionFactoryUtils.initDeferredClose(sessionFactory);
			}
		}

	}

	/**
	 * 释放 session, 在 lazy 的结束处调用
	 * 
	 */
	public void releaseSession() {
		if (!participate) {
			if (isSingleSession()) {
				// single session mode
				TransactionSynchronizationManager
						.unbindResource(sessionFactory);
				logger
						.debug("Closing single Hibernate Session in HibernateLazyResolver");
				try {
					closeSession(session, sessionFactory);
				} catch (RuntimeException ex) {
					logger
							.error(
									"Unexpected exception on closing Hibernate Session",
									ex);
				}
			} else {
				// deferred close mode
				SessionFactoryUtils.processDeferredClose(sessionFactory);
			}
		}
	}

	/**
	 * Get a Session for the SessionFactory that this filter uses. Note that
	 * this just applies in single session mode!
	 * <p>
	 * The default implementation delegates to SessionFactoryUtils' getSession
	 * method and sets the Session's flushMode to NEVER.
	 * <p>
	 * Can be overridden in subclasses for creating a Session with a custom
	 * entity interceptor or JDBC exception translator.
	 * 
	 * @param sessionFactory
	 *            the SessionFactory that this filter uses
	 * @return the Session to use
	 * @throws DataAccessResourceFailureException
	 *             if the Session could not be created
	 * @see org.springframework.orm.hibernate3.SessionFactoryUtils#getSession(SessionFactory,
	 *      boolean)
	 * @see org.hibernate.FlushMode#NEVER
	 */
	protected Session getSession(SessionFactory sessionFactory)
			throws DataAccessResourceFailureException {
		Session session = SessionFactoryUtils.getSession(sessionFactory, true);
		// 注意这里与 OpenSessionInViewInterceptor 不同, 需要设置为 auto, 否则会导致以下异常
		// org.springframework.dao.InvalidDataAccessApiUsageException:
		// Write operations are not allowed in read-only mode (FlushMode.NEVER)
		// -
		// turn your Session into FlushMode.AUTO or remove 'readOnly' marker
		// from transaction definition
		session.setFlushMode(FlushMode.AUTO);
		return session;
	}

	/**
	 * Close the given Session. Note that this just applies in single session
	 * mode!
	 * <p>
	 * The default implementation delegates to SessionFactoryUtils'
	 * releaseSession method.
	 * <p>
	 * Can be overridden in subclasses, e.g. for flushing the Session before
	 * closing it. See class-level javadoc for a discussion of flush handling.
	 * Note that you should also override getSession accordingly, to set the
	 * flush mode to something else than NEVER.
	 * 
	 * @param session
	 *            the Session used for filtering
	 * @param sessionFactory
	 *            the SessionFactory that this filter uses
	 */
	protected void closeSession(Session session, SessionFactory sessionFactory) {
		// 需要 flush session
		session.flush();
		SessionFactoryUtils.releaseSession(session, sessionFactory);
	}
}
