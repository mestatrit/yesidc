/**
 * $Id: HibernateEntityDao.java,v 1.16 2009/01/05 09:51:08 abel Exp $
 */

package com.yesibc.core.dao;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.CacheMode;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.util.Assert;

import com.yesibc.core.dao.support.Page;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.GenericsUtils;

/**
 * <p>
 * This is a Hibernate DAO foundation class.It provides CRUD for an individual
 * Entity.
 * </p>
 * 
 * @see HibernateGenericDao
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-13 下午03:41:07
 */
@SuppressWarnings("unchecked")
public class HibernateEntityDao<T> extends HibernateGenericDao implements EntityDao<T> {

	protected Class<T> entityClass;

	/**
	 * EntityClass is endowed the generic type of T.class in the construct
	 * function.
	 */
	public HibernateEntityDao() {
		entityClass = GenericsUtils.getSuperClassGenricType(getClass());
	}

	/**
	 * get entityClass
	 */
	protected Class<T> getEntityClass() {
		return entityClass;
	}

	/**
	 * Get object according to "id".
	 * 
	 * @see HibernateGenericDao#getId(Class,Object)
	 */

	public T get(Serializable id) {
		return get(getEntityClass(), id);
	}

	/**
	 * Get all.
	 * 
	 * @see HibernateGenericDao#getAll(Class)
	 */
	public List<T> findAll(Class<T> entityClass) {
		return getAll(entityClass);
	}

	/**
	 * Get all objects,and assign sorting field.
	 * 
	 * @see HibernateGenericDao#getAll(Class,String,boolean)
	 */
	public List<T> findAll(String orderBy, boolean isAsc) {
		return getAll(getEntityClass(), orderBy, isAsc);
	}

	/**
	 * Remove the object according id.
	 * 
	 * @see HibernateGenericDao#removeById(Class,Serializable)
	 */
	public void removeById(Serializable id) {
		removeById(getEntityClass(), id);
	}

	/**
	 * Get the criteria according to the Entity.
	 * 
	 * @see HibernateGenericDao#createCriteria(Class,Criterion[])
	 */
	public Criteria createCriteria(Criterion... criterions) {
		return createCriteria(getEntityClass(), criterions);
	}

	/**
	 * Get the criteria according to the Entity and can sort by the field of
	 * "orderBy".
	 * 
	 * @see HibernateGenericDao#createCriteria(Class,String,boolean,Criterion[])
	 */
	public Criteria createCriteria(String orderBy, boolean isAsc, Criterion... criterions) {
		return createCriteria(getEntityClass(), orderBy, isAsc, criterions);
	}

	/**
	 * Get the object list according to the value of the property
	 * 
	 * @return the object list
	 * @see HibernateGenericDao#findBy(Class,String,Object)
	 */
	public List<T> findBy(String propertyName, Object value) {
		return findBy(getEntityClass(), propertyName, value);
	}

	/**
	 * Get the object list according to the value of the property, and sort by
	 * the field of "orderBy".
	 * 
	 * @return the object list
	 * @see HibernateGenericDao#findBy(Class,String,Object,String,boolean)
	 */
	public List<T> findBy(String propertyName, Object value, String orderBy, boolean isAsc) {
		return findBy(getEntityClass(), propertyName, value, orderBy, isAsc);
	}

	/**
	 * Get an object according to the value of the property
	 * 
	 * @return an object or null
	 * @see HibernateGenericDao#findUniqueBy(Class,String,Object)
	 */
	public T findUniqueBy(String propertyName, Object value) {
		return findUniqueBy(getEntityClass(), propertyName, value);
	}

	/**
	 * The method describe whether the value of the entity's uniquePropertyNames
	 * is unique.
	 * 
	 * @param uniquePropertyNames
	 *            The field list in entity.Split by ",". For example:
	 *            "name,password"
	 * @see HibernateGenericDao#isUnique(Class,Object,String)
	 */
	public boolean isUnique(Object entity, String uniquePropertyNames) {
		return isUnique(getEntityClass(), entity, uniquePropertyNames);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.dao.EntityDao#findByHql(java.lang.String)
	 */
	public List<T> findByHql(String hql) {
		return find(hql);
	}

	/**
	 * Query by paging.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 */
	public Page<T> pagedQuery(Class<T> entityClass, String hql, int pageNo, int pageSize, Object... values) {
		Assert.hasText(hql);
		Assert.isTrue(pageNo >= 1, "pageNo should start from 1");
		int totalCount = getTotalCountByHql(hql, values);

		if (totalCount < 1)
			return new Page<T>(pageSize, 1, 0, 1, 0, new ArrayList<T>(), entityClass);

		int startIndex = Page.getStartOfPage(pageNo, pageSize);
		Query query = createQuery(hql, values);
		List<T> list = query.setFirstResult(startIndex).setMaxResults(pageSize).list();

		return new Page<T>(pageSize, pageNo, Page.getTotalPageCount(totalCount, pageSize), startIndex, totalCount,
				list, entityClass);
	}

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>,
	 * entityClass and sorting parameter.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return Page.
	 */
	public Page<T> pagedQuery(Class<T> entityClass, int pageNo, int pageSize, String orderBy, boolean isAsc,
			Criterion... criterions) {
		Criteria criteria = createCriteria(entityClass, orderBy, isAsc, criterions);
		return pagedQuery(entityClass, criteria, pageNo, pageSize);
	}

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>
	 * and entityClass.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return Page.
	 */
	public Page<T> pagedQuery(Class<T> entityClass, int pageNo, int pageSize, Criterion... criterions) {
		Criteria criteria = createCriteria(entityClass, criterions);
		return pagedQuery(entityClass, criteria, pageNo, pageSize);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.dao.EntityDao#findByNameValue(java.lang.Class,
	 * java.lang.String, java.lang.Object)
	 */
	public List<T> findByNameValue(Class<T> entityClass, String propertyName, Object value) {
		return findBy(entityClass, propertyName, value);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.dao.EntityDao#findByNameValue(java.lang.Class,
	 * java.lang.String, java.lang.Object, java.lang.String, boolean)
	 */
	public List<T> findByNameValue(Class<T> entityClass, String propertyName, Object value, String orderBy,
			boolean isAsc) {
		return findBy(entityClass, propertyName, value, orderBy, isAsc);
	}

	/*
	 * Get Object by Id
	 * 
	 * @see cn.cetelem.core.dao.EntityDao#getById(java.lang.Class,
	 * java.io.Serializable)
	 */
	public T getById(Class<T> entityClass, Serializable id) {
		return get(entityClass, id);
	}

	/**
	 * AG @ 2007 11 05
	 */
	public T getById(Serializable id) {
		return get(entityClass, id);
	}

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>
	 * and entityClass.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public List<T> listByPage(Class<T> entityClass, String hql, int pageNo, int pageSize, Object... values) {
		Assert.hasText(hql);
		Assert.isTrue(pageNo >= 1, "pageNo should start from 1");
		int totalCount = getTotalCountByHql(hql, values);

		if (totalCount < 1)
			return new ArrayList<T>();

		int startIndex = Page.getStartOfPage(pageNo, pageSize);
		Query query = createQuery(hql, values);
		return query.setFirstResult(startIndex).setMaxResults(pageSize).list();
	}

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>,
	 * entityClass and sorting parameter.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public List<T> listByPage(Class<T> entityClass, int pageNo, int pageSize, String orderBy, boolean isAsc,
			Criterion... criterions) {
		Criteria criteria = createCriteria(entityClass, orderBy, isAsc, criterions);
		return listByPage(criteria, pageNo, pageSize);
	}

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>
	 * and entityClass.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public List<T> listByPage(Class<T> entityClass, int pageNo, int pageSize, Criterion... criterions) {
		Criteria criteria = createCriteria(entityClass, criterions);
		return listByPage(criteria, pageNo, pageSize);
	}

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>
	 * and entityClass.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public Page<T> listByPage(String hql, Object[] o, int pageNo, int pageSize) {
		int totalCount = this.getTotalCountByHql1(hql, o);
		if (totalCount < 1) {
			if (totalCount < 1) {
				return new Page<T>(pageSize, 1, 0, 1, 0, new ArrayList<T>(), entityClass);
			}
		}

		int startIndex = Page.getStartOfPage(pageNo, pageSize);
		List<T> list = this.findObjectListInPage(hql, o, pageSize, pageNo);

		return new Page<T>(pageSize, pageNo, Page.getTotalPageCount(totalCount, pageSize), startIndex, totalCount,
				list, entityClass);
	}

	/**
	 * Get data according to params & cache If cache is true,the cache works.
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public List findObjectList(final String hql, final Object[] params, final boolean cache) {
		return (List) this.getHibernateTemplate().execute(new HibernateCallback() {

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
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
	 * Get data according to params & cache If cache is true,the cache works.
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public List findObjectListInPage(final String hql, final Object[] params, final int pageSize, final int pageNum) {
		return (List) this.getHibernateTemplate().execute(new HibernateCallback() {

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				Query query = session.createQuery(hql);
				if (params != null && params.length > 0) {
					for (int i = 0; i < params.length; i++) {
						query.setParameter(i, params[i]);
					}
				}

				query.setMaxResults(pageSize); // set pageSize
				query.setFirstResult(Page.getStartOfPage(pageNum, pageSize)); // set

				return query.list();
			}

		});
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.dao.BaseDAO#getAll(java.lang.Class, boolean)
	 */
	public List getAll(final Class clz, final boolean cache) {
		return (List) this.getHibernateTemplate().execute(new HibernateCallback() {

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				Query query = session.createQuery("from " + clz.getName());
				if (!cache) {
					query.setCacheMode(CacheMode.REFRESH);
				}
				query.setCacheable(true);
				return query.list();
			}

		});
	}

	public void evict(Object o) {
		this.getHibernateTemplate().evict(o);
	}

	public void merge(Object o) {
		this.getHibernateTemplate().merge(o);
	}

	public boolean contains(Object o) {
		return this.getHibernateTemplate().contains(o);
	}

	/**
	 * Get data according to params & cache By sql If cache is true,the cache
	 * works.
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public List findObjectListBySql(final String sql, final Object[] params) {
		return (List) this.getHibernateTemplate().execute(new HibernateCallback() {

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				Query query = session.createSQLQuery(sql);
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
	 * Get data according to paging
	 * 
	 * @param hql
	 * @param params
	 * @param pageSize
	 * @param pageNum
	 * @return
	 */
	public List findObjectInPageBySQL(final String sql, final Object[] params, final int pageSize, final int pageNum) {
		return (List) this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				Query query = session.createSQLQuery(sql);
				if (params != null && params.length > 0) {
					for (int i = 0; i < params.length; i++) {
						query.setParameter(i, params[i]);
					}
				}
				query.setMaxResults(pageSize); // set pageSize
				query.setFirstResult(Page.getStartOfPage(pageNum, pageSize)); // set
				return query.list();
			}

		});
	}

	/**
	 * Get total numbers
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public int findTotalRecords(String sql, Object[] params) {
		List list = findObjectListBySql(sql, params);
		Object o = list.get(0);
		if (o instanceof BigDecimal) {
			return ((BigDecimal) o).intValue();
		} else {
			return ((Integer) list.get(0)).intValue();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.dao.EntityDao#getById(java.lang.Class,
	 * java.io.Serializable, boolean)
	 */
	public T getById(Class<T> entityClass, Serializable id, boolean cache) {
		this.getHibernateTemplate().setCacheQueries(cache);
		return this.get(entityClass, id);

	}

	/**
	 * reflesh the Hibernate cache.
	 */
	public void reflesh(Object o) {
		this.getHibernateTemplate().refresh(o);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.dao.EntityDao#loadAll(java.lang.Class)
	 */
	public List loadAll(Class clz) {
		return this.getAll(clz);
	}

	/**
	 * evict object from session factory.
	 */
	public void evict(Class clz) {
		this.getSessionFactory().evict(clz);
	}

	/**
	 * reflesh to second cache.
	 */
	public void reflesh2Cache(Class clz) {
		this.getSessionFactory().evict(clz);
		this.getAll(clz, false);
	}

	/**
	 * commit to DB.
	 */
	public void commit() throws ApplicationException {
		this.getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				session.connection().commit();
				return session;
			}

		});
	}
	
	/**
	 * Flush the Hibernate session.
	 */
	public void flush() {
		getHibernateTemplate().flush();
	}

}
