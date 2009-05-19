/**
 * $Id: EntityDao.java,v 1.12 2008/11/28 08:49:16 abel Exp $
 */

package com.yesibc.core.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.Criterion;

import com.yesibc.core.dao.support.Page;
import com.yesibc.core.exception.ApplicationException;

/**
 * This interface describes DAO common operation.
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午11:00:50
 */
@SuppressWarnings("unchecked")
public interface EntityDao<T> {

	/**
	 * Get all.
	 * 
	 * @see HibernateGenericDao#getAll(Class)
	 */
	List<T> findAll(Class<T> entityClass);

	/**
	 * update an object.
	 */
	public void update(Object o);

	/**
	 * save an object.
	 */
	public void save(Object o);

	/**
	 * save an object.
	 */
	public void saveOrUpdate(Object o);

	/**
	 * Remove an object.
	 */
	void remove(Object o);

	/**
	 * Remove the object according id.
	 * 
	 * @see HibernateGenericDao#removeById(Class,Serializable)
	 */
	void removeById(Serializable id);

	/**
	 * Flush the Hibernate session.
	 */
	public void flush();

	/**
	 * evict object from session factory.
	 */
	public void evict(Class clz);

	/**
	 * reflesh the Hibernate cache.
	 */
	public void reflesh(Object o);

	/**
	 * reflesh to second cache.
	 */
	public void reflesh2Cache(Class clz);

	/**
	 * Clear the Hibernate session.
	 */
	public void clear();

	/**
	 * Get the object list according to the value of the property
	 * 
	 * @return the object list
	 * @see HibernateGenericDao#findBy(Class,String,Object)
	 */
	public List<T> findByHql(String hql);

	/**
	 * Get the object list according to the value of the property
	 * 
	 * @return the object list
	 * @see HibernateGenericDao#findBy(Class,String,Object)
	 */
	public List<T> findByNameValue(Class<T> entityClass, String propertyName,
			Object value);

	/**
	 * Get the object list according to the value of the property, and sort by
	 * the field of "orderBy".
	 * 
	 * @return the object list
	 * @see HibernateGenericDao#findBy(Class,String,Object,String,boolean)
	 */
	public List<T> findByNameValue(Class<T> entityClass, String propertyName,
			Object value, String orderBy, boolean isAsc);

	/**
	 * Get an object according to the value of the property
	 * 
	 * @return an object or null
	 * @see HibernateGenericDao#findUniqueBy(Class,String,Object)
	 */
	public T findUniqueBy(String propertyName, Object value);

	/**
	 * The method describe whether the value of the entity's uniquePropertyNames
	 * is unique.
	 * 
	 * @param uniquePropertyNames
	 *            The field list in entity.Split by ",". For example:
	 *            "name,password"
	 * @see HibernateGenericDao#isUnique(Class,Object,String)
	 */
	public boolean isUnique(Object entity, String uniquePropertyNames);

	/**
	 * Query by paging.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 */
	public Page<T> pagedQuery(Class<T> entityClass, String hql, int pageNo,
			int pageSize, Object... values);

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>,
	 * entityClass and sorting parameter.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return Page.
	 */
	public Page<T> pagedQuery(Class<T> entityClass, int pageNo, int pageSize,
			String orderBy, boolean isAsc, Criterion... criterions);

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>
	 * and entityClass.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return Page.
	 */
	public Page<T> pagedQuery(Class<T> entityClass, int pageNo, int pageSize,
			Criterion... criterions);

	/**
	 * Get the object according to id.
	 */
	public T getById(Class<T> entityClass, Serializable id);

	/**
	 * Get the object according to id.
	 */
	public T getById(Class<T> entityClass, Serializable id, boolean cache);

	/**
	 * @author andy.gao
	 * @param id
	 * @return
	 */
	public T getById(Serializable id);

	/**
	 * Get the name of the primary key of the entity.
	 */
	public String getIdName(Class clazz);

	/**
	 * Query by paging.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public List<T> listByPage(Class<T> entityClass, String hql, int pageNo,
			int pageSize, Object... values);

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>,
	 * entityClass and sorting parameter.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public List<T> listByPage(Class<T> entityClass, int pageNo, int pageSize,
			String orderBy, boolean isAsc, Criterion... criterions);

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>
	 * and entityClass.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public List<T> listByPage(Class<T> entityClass, int pageNo, int pageSize,
			Criterion... criterions);

	/**
	 * Get data according to params & cache If cache is true,the cache works.
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public List findObjectList(final String hql, final Object[] params,
			final boolean cache);

	/**
	 * Get data by cache set
	 * 
	 * @param clz
	 * @param cache
	 * @return
	 */
	public List getAll(final Class clz, final boolean cache);

	/**
	 * Get data by cache set
	 * 
	 * @param clz
	 * @param cache
	 * @return
	 */
	public List loadAll(final Class clz);

	public void evict(Object o);

	public void merge(Object o);

	public boolean contains(Object o);

	public void commit() throws ApplicationException;
}
