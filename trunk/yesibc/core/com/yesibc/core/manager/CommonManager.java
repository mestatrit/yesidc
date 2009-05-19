/**
 * $Id: CommonManager.java,v 1.7 2008/11/28 09:36:22 abel Exp $
 */

package com.yesibc.core.manager;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.Criterion;

import com.yesibc.core.dao.support.Page;
import com.yesibc.core.exception.ApplicationException;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-13 下午03:40:24
 */
@SuppressWarnings("unchecked")
public interface CommonManager<T> {

	/**
	 * Get object according to "id".
	 * 
	 * @see CommonManagerImpl#getId(Class,Object)
	 */
	T get(Serializable id);

	/**
	 * Get all.
	 * 
	 * @see CommonManagerImpl#findAll(Class)
	 */
	List<T> findAll();

	/**
	 * Get all.
	 * 
	 * @see CommonManagerImpl#loadAll(Class)
	 */
	List<T> loadAll(Class clz);

	/**
	 * Get Object by cache.
	 * 
	 * @see CommonManagerImpl#getObjectByCache(Serializable,cache)
	 */
	T getObjectByCache(Serializable id, boolean cache);

	/**
	 * Get all.
	 * 
	 * @see CommonManagerImpl#findAll(Class)
	 */
	List<T> findAllByCache(boolean cache);

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
	 * @see CommonManagerImpl#removeById(Class,Serializable)
	 */
	void removeById(Serializable id);

	/**
	 * Get the object list according to the value of the property
	 * 
	 * @return the object list
	 * @see CommonManagerImpl#findBy(Class,String,Object)
	 */
	public List<T> findBy(String propertyName, Object value);

	/**
	 * Get the object list according to the value of the property, and sort by
	 * the field of "orderBy".
	 * 
	 * @return the object list
	 * @see CommonManagerImpl#findBy(Class,String,Object,String,boolean)
	 */
	public List<T> findBy(String propertyName, Object value, String orderBy,
			boolean isAsc);

	/**
	 * Get an object according to the value of the property
	 * 
	 * @return an object or null
	 * @see CommonManagerImpl#findUniqueBy(Class,String,Object)
	 */
	public T findUniqueBy(String propertyName, Object value);

	/**
	 * The method describe whether the value of the entity's uniquePropertyNames
	 * is unique.
	 * 
	 * @param uniquePropertyNames
	 *            The field list in entity.Split by ",". For example:
	 *            "name,password"
	 * @see CommonManagerImpl#isUnique(Class,Object,String)
	 */
	public boolean isUnique(Object entity, String uniquePropertyNames);

	/**
	 * Flush the Hibernate session.
	 */
	public void flush();

	/**
	 * Clear the Hibernate session.
	 */
	public void clear();

	public String getIdName(Class clazz);

	/**
	 * Query by paging.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public List<T> listByPage(String hql, int pageNo, int pageSize,
			Object... values);

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>,
	 * entityClass and sorting parameter.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public List<T> listByPage(int pageNo, int pageSize, String orderBy,
			boolean isAsc, Criterion... criterions);

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>
	 * and entityClass.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return List.
	 */
	public List<T> listByPage(int pageNo, int pageSize, Criterion... criterions);

	/**
	 * Query by paging.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 */
	public Page<T> pagedQuery(String hql, int pageNo, int pageSize,
			Object... values);

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>,
	 * entityClass and sorting parameter.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return Page.
	 */
	public Page<T> pagedQuery(int pageNo, int pageSize, String orderBy,
			boolean isAsc, Criterion... criterions);

	/**
	 * Query by paging. Create <code>Criteria</code> by <code>Criterion</code>
	 * and entityClass.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return Page.
	 */
	public Page<T> pagedQuery(int pageNo, int pageSize, Criterion... criterions);

	public void evict(Object o);

	public void merge(Object o);

	public boolean contains(Object o);

	public void commit() throws ApplicationException;

	/**
	 * reflesh to second cache.
	 */
	public void reflesh2Cache(Class clz);

}
