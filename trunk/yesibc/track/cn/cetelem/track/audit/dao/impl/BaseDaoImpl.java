package cn.cetelem.track.audit.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.support.TransactionTemplate;
import java.util.Iterator;

import org.apache.commons.lang.StringUtils;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import cn.cetelem.track.audit.dao.BaseDao;
import cn.cetelem.track.audit.web.query.Filter;
import cn.cetelem.track.audit.web.query.PageList;
import cn.cetelem.track.log.CommonLogger;
import cn.cetelem.track.log.LogFactory;

/**
 * This class serves as the Base class for all other Daos - namely to hold
 * common methods that they might all use. Can be used for standard CRUD
 * operations.
 * </p>
 */
@SuppressWarnings("unchecked")
public class BaseDaoImpl extends HibernateDaoSupport implements BaseDao {

	protected final CommonLogger log = LogFactory.getCommonLogger(BaseDaoImpl.class);
	
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

	/**
	 * @see cn.cetelem.track.dao.BaseDao#saveObject(java.lang.Object)
	 */
	public void saveObject(Object o) {
		// getHibernateTemplate().saveOrUpdate(o);
		getHibernateTemplate().save(o);
	}
	
	/**
	 * @see cn.cetelem.track.dao.BaseDao#updateObject(java.lang.Object)
	 */
	public void updateObject(Object o) {
		getHibernateTemplate().update(o);
	}

	/**
	 * @see cn.cetelem.track.dao.BaseDao#getObject(java.lang.Class,
	 *      java.io.Serializable)
	 */
	public Object getObject(Class clazz, Serializable id) {
		Object o = getHibernateTemplate().get(clazz, id);

		if (o == null) {
			throw new ObjectRetrievalFailureException(clazz, id);
		}

		return o;
	}

	/**
	 * @see cn.cetelem.track.dao.BaseDao#getObjects(java.lang.Class)
	 */
	public List getObjects(Class clazz) {
		return getHibernateTemplate().loadAll(clazz);
	}

	/**
	 * @see cn.cetelem.track.dao.BaseDao#deleteObject(java.lang.Object)
	 */
	public void deleteObject(Object o) {
		getHibernateTemplate().delete(o);
		getHibernateTemplate().flush();
		getHibernateTemplate().evict(o);
	}

	/**
	 * @see cn.cetelem.track.dao.BaseDao#deleteObject(java.lang.Class,
	 *      java.io.Serializable)
	 */
	public void deleteObject(Class clazz, Serializable id) {
		deleteObject(getObject(clazz, id));
	}

	protected PageList getPageList(final String hql, final PageList pageList) {
		return (PageList) getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException {
						String newHql = hql;
						Filter filter = pageList.getFilter();
						if (filter != null) {
							newHql = addFilterToHql(newHql, filter);
						}
						int totalCount = getTotalCount(newHql);
						Query query = session.createQuery(newHql);
						query.setCacheable(false);
						int start = (pageList.getCurrentPage() - 1)
								* pageList.getPageCount();
						int rowNum = pageList.getPageCount();
						query.setFirstResult(start);
						query.setMaxResults(rowNum);
						List results = query.list();
						pageList.setResult(results, totalCount);
						return pageList;
					}
				}, true);
	}

	protected int getTotalCount(String hql) {

		Integer amount = new Integer(0);
		int sql_from = hql.toLowerCase().indexOf("from");
		int sql_orderby = hql.toLowerCase().indexOf("order by");
		String countStr = "";
		if (sql_orderby > 0) {
			countStr = "select count(*) "
					+ hql.substring(sql_from, sql_orderby);
		} else {
			countStr = "select count(*) " + hql.substring(sql_from);
		}
		List list = getHibernateTemplate().find(countStr);
		Iterator result = list.iterator();
		if (result.hasNext()) {
			amount = (Integer) result.next();
		}
		return amount.intValue();

	}

	private String addFilterToHql(String hql, Filter filter) {
		String filterStr = filter.buildFilter();
		String orderStr = filter.buildOrder();
		String lowerCaseHql = hql.toLowerCase();
		if (StringUtils.isNotBlank(filterStr)) {
			if (lowerCaseHql.indexOf("where") > 0) {
				if (lowerCaseHql.indexOf("order by") > 0) {
					int firstOrderBy = lowerCaseHql.indexOf("order by");
					hql = hql.substring(0, firstOrderBy) + " and " + filterStr
							+ " " + hql.substring(firstOrderBy);
				} else {
					hql = hql + " and " + filterStr;
				}

			} else {
				if (lowerCaseHql.indexOf("order by") > 0) {
					int firstOrderBy = lowerCaseHql.indexOf("order by");
					hql = hql.substring(0, firstOrderBy) + " where "
							+ filterStr + " " + hql.substring(firstOrderBy);
				} else {
					hql = hql + " where " + filterStr;
				}
			}
		}

		lowerCaseHql = hql.toLowerCase();
		if (StringUtils.isNotBlank(orderStr)) {

			if (lowerCaseHql.indexOf("order by") > 0) {
				hql = hql + " , " + orderStr;
			} else {
				hql = hql + " order by " + orderStr;
			}
		}
		return hql;
	}

}
