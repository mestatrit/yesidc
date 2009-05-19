/**
 * 
 */
package com.yesibc.core.workflow.jbpm;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.jbpm.JbpmContext;
import org.jbpm.db.GraphSession;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springmodules.workflow.jbpm31.JbpmTemplate;
import org.springmodules.workflow.jbpm31.support.JbpmDaoSupport;

/**
 * @author abel.ye
 * 
 */
public class JbpmDaoSupportExtend extends JbpmDaoSupport {

	/**
	 * get JbpmContext
	 * 
	 * @return
	 */
	protected final Log log = LogFactory.getLog(getClass());

	public JbpmContext getJbpmContext() {
		if (getJbpmConfiguration() == null) {
			return null;
		}
		JbpmContext jc = getJbpmConfiguration().getCurrentJbpmContext();
		boolean create = false;
		if (jc == null) {
			create = true;
		} else if (jc.getSession() == null) {
			log.info("Session is null.Close JbpmContext=" + jc.toString());
			jc.close();
			jc = null;
			create = true;
		} else if (!jc.getSession().isConnected()) {
			log.info("Connection is null.Close JbpmContext=" + jc.toString());
			jc.close();
			jc = null;
			create = true;
		}
		if (create) {
			jc = getJbpmConfiguration().createJbpmContext();
			log.info("new JbpmContext=" + jc.toString());
		}

		return jc;
	}

	/**
	 * get GraphSession
	 * 
	 * @return
	 */
	public GraphSession getGraphSession() {
		return (getJbpmContext() != null) ? getJbpmContext().getGraphSession() : null;
	}

	/**
	 * get HibernateTemplate
	 * 
	 * @return
	 */
	public HibernateTemplate getHibernateTemplate() {
		JbpmTemplate jt = getTemplate();
		log.info("jt=" + jt.toString());
		log.info("jt.session=" + jt.getHibernateTemplate().getSessionFactory().getCurrentSession().connection().toString());
		return (getTemplate() != null) ? getTemplate().getHibernateTemplate() : null;
	}

}
