package cn.cetelem.track.audit.dao.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.support.TransactionTemplate;

import cn.cetelem.track.audit.dao.MainAuditDao;
import cn.cetelem.track.audit.domain.DesMainAudit;
import cn.cetelem.track.audit.web.query.PageList;



/**
 * @author <a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version 1.0
 * @Creationdate:Dec 2, 2008 5:51:15 PM
 */

@SuppressWarnings("unchecked")
public class MainAuditDaoImpl extends BaseDaoImpl implements MainAuditDao {

	protected final Log log = LogFactory.getLog(getClass());

	protected JdbcTemplate jdbcTemplate;
	protected TransactionTemplate transactionTemplate;

	public TransactionTemplate getTransactionTemplate() {
		return transactionTemplate;
	}

	public void setTransactionTemplate(TransactionTemplate transactionTemplate) {
		this.transactionTemplate = transactionTemplate;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public void saveMainAudit(DesMainAudit mainAudit) {
		getHibernateTemplate().save(mainAudit);
	}

	public void deleteMainAudit(DesMainAudit mainAudit) {
		getHibernateTemplate().delete(mainAudit);
		getHibernateTemplate().flush();
	}

	public void deleteMainAuditById(Long id) {
		getHibernateTemplate().delete(getMainAuditById(id));
		getHibernateTemplate().flush();
	}

	public void updateMainAudit(DesMainAudit mainAudit) {
		getHibernateTemplate().update(mainAudit);
	}

	public DesMainAudit getMainAuditById(Long id) {
		return (DesMainAudit) getHibernateTemplate().get(DesMainAudit.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<DesMainAudit> getMainAuditsByAppId(String appId) {
		List<DesMainAudit> mainAudit = getHibernateTemplate().find("from DesMainAudit where appId=?", appId);
        return mainAudit;
	}

	@SuppressWarnings("unchecked")
	public List<DesMainAudit> getAllMainAudits() {
		List<DesMainAudit> mainAudits = getHibernateTemplate().find("from DesMainAudit");
		return mainAudits;
	}

	public PageList getMainAuditByCriterias(PageList pageList) {
		String hql = "from DesMainAudit as mainAudit ";
		PageList rt = getPageList(hql, pageList);
		return rt;
	}

}
