/**
 *$Id: BaseDAOImpl.java,v 1.24 2007/10/31 05:29:55 Abel Exp $
 */

package com.yesibc.core.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * This class serves as the Base class for all other DAOs - namely to hold
 * common methods that they might all use. Can be used for standard CRUD
 * operations.It do not use generic.
 * </p>
 * 
 * <p>
 * <a href="BaseDAOImpl.java.html"><i>View Source</i></a>
 * </p>
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-10-31 上午11:00:50
 */
@SuppressWarnings("unchecked")
public class BaseDAOImpl extends HibernateDaoSupport implements BaseDAO {

	private static final String HIBERNATEOBJECT_ID = "id";

	/* (non-Javadoc)
	 * @see cn.cetelem.core.dao.BaseDAO#get(java.io.Serializable, java.lang.Class)
	 */
	public Object get(Serializable id, Class clz) {
		return getHibernateTemplate().get(clz, id);
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.core.dao.BaseDAO#getAll(java.lang.Class)
	 */
	public List getAll(Class clz) {
		return getHibernateTemplate().loadAll(clz);
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.core.dao.BaseDAO#save(java.lang.Object)
	 */
	public void save(Object o) {
		getHibernateTemplate().save(o);
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.core.dao.BaseDAO#update(java.lang.Object)
	 */
	public void update(Object o) {
		getHibernateTemplate().update(o);
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.core.dao.BaseDAO#remove(java.io.Serializable, java.lang.Class)
	 */
	public void remove(Serializable id, Class clz) {
		remove(get(id, clz));
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.core.dao.BaseDAO#remove(java.lang.Object)
	 */
	public void remove(Object o) {
		getHibernateTemplate().delete(o);
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.core.dao.BaseDAO#find(java.lang.String)
	 */
	public List find(String hsql) {
		return getHibernateTemplate().find(hsql);
	}

	/**
	 * @param hsql
	 * @param value
	 * @return
	 */
	public List find(String hsql, Object value) {
		return getHibernateTemplate().find(hsql, value);
	}

	/**
	 * @param hsql
	 * @param values
	 * @return
	 */
	public List find(String hsql, Object[] values) {
		return getHibernateTemplate().find(hsql, values);
	}


	/**
	 * Get data according to paging
	 * 
	 * @param hql
	 * @param params
	 * @param pageSize
	 * @param pageNum
	 * @return
	 */
	public List findObjectInPage(final String hql, final Object[] params,
			final int pageSize, final int pageNum) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						if (params != null && params.length > 0) {
							for (int i = 0; i < params.length; i++) {
								query.setParameter(i, params[i]);
							}
						}
						query.setMaxResults(pageSize); // set pageSize
						query.setFirstResult(pageSize * pageNum); // set
						return query.list();
					}

				});
	}


	/**
	 * Get data according to params 
	 * @param hql
	 * @param params
	 * @return
	 */
	public List findObjectList(final String hql, final Object[] params) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						if (params != null && params.length > 0) {
							for (int i = 0; i < params.length; i++) {
								query.setParameter(i, params[i]);
							}
						}
						return query.list();
					}

				});
	}

	/**
	 * Get data according to params & cache
	 * If cache is true,the cache works.
	 * @param hql
	 * @param params
	 * @return
	 */
	public List findObjectList(final String hql, final Object[] params,final boolean cache) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(hql);
						if (params != null && params.length > 0) {
							for (int i = 0; i < params.length; i++) {
								query.setParameter(i, params[i]);
							}
						}
						query.setCacheable(cache);
						
						return query.list();
					}

				});
	}	

	/**
	 * Get data according to list of id of object.
	 * @param clazz
	 * @param ids
	 * @return
	 */
	public List findObjectByPks(Class clazz, Serializable[] ids) {
		StringBuffer hqlFind = new StringBuffer();
		hqlFind.append("from ");
		hqlFind.append(clazz.getName());
		hqlFind.append(" obj where obj.");
		hqlFind.append(HIBERNATEOBJECT_ID);
		hqlFind.append(" in ");
		hqlFind.append(getScope(ids));
		return this.getHibernateTemplate().find(hqlFind.toString());
	}


	/**
	 * Get total numbers
	 * @param hql
	 * @param params
	 * @return
	 */
	public int findTotalNum(String hql, Object[] params) {
		List list = this.getHibernateTemplate().find(hql, params);
		return ((Integer) list.get(0)).intValue();
	}

	/**
	 * Get the format like "?,?……" according to len. 
	 * @param len
	 * @return
	 */
	public String getSqlSetCounts(int len) {
		String temp = "";
		for (int i = 0; i < len; i++) {
			if (temp.equals("")) {
				temp = "?";
			} else {
				temp += ",?";
			}
		}
		return " in (" + temp + ")";
	}


	/**
	 * parse the array of Long ,return a String contains each element in pattern
	 * (param[0] , param[1] , ... , param[length-1] )
	 * 
	 * @param param
	 * @return String
	 */
	private static String getScope(Object[] param) {
		if (param.length == 0) {
			return "( -11111 )";
		} else {
			StringBuffer scope = new StringBuffer(" ( ");
			int i = 0;
			for (; i < param.length - 1; i++) {
				scope.append(param[i]);
				scope.append(", ");
			}
			scope.append(param[i] + " ) ");

			return scope.toString();
		}
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.core.dao.BaseDAO#getAll(java.lang.Class, boolean)
	 */
	public List getAll(final Class clz, final boolean cache) {
		return (List) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery("from " + clz.getName());
						query.setCacheable(cache);
						return query.list();
					}

				});
	}
}
