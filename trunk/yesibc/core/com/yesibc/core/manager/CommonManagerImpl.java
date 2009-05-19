/**
 * $Id: CommonManagerImpl.java,v 1.8 2008/11/28 09:36:22 abel Exp $
 */

package com.yesibc.core.manager;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.criterion.Criterion;

import com.yesibc.core.dao.EntityDao;
import com.yesibc.core.dao.support.Page;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.GenericsUtils;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-13 下午03:41:07
 */
@SuppressWarnings("unchecked")
public class CommonManagerImpl<T> implements CommonManager<T> {

	protected Class<T> entityClass;

	private EntityDao<T> entityDao;

	public void setEntityDao(EntityDao<T> entityDao) {
		this.entityDao = entityDao;
	}

	/**
	 * EntityClass is endowed the generic type of T.class in the construct
	 * function.
	 */
	public CommonManagerImpl() {
		entityClass = GenericsUtils.getSuperClassGenricType(getClass());

	}

	/**
	 * get entityClass
	 */
	protected Class<T> getEntityClass() {
		return entityClass;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#get(java.io.Serializable)
	 */
	public T get(Serializable id) {
		return entityDao.getById(entityClass, id);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#getAll()
	 */
	public List<T> findAll() {
		return entityDao.findAll(entityClass);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#remove(java.lang.Object)
	 */
	public void remove(Object o) {
		Object newo = null;
		try {
			newo = entityClass.newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}

		if (newo != null) {
			try {
				BeanUtils.copyProperties(newo, o);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}
		entityDao.remove(newo);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#removeById(java.io.Serializable)
	 */
	public void removeById(Serializable id) {
		Object o = this.get(id);
		entityDao.remove(o);
	}

	/**
	 * update an object.
	 */
	public void update(Object o) {
		entityDao.update(o);
	}

	/**
	 * save an object.
	 */
	public void save(Object o) {
		entityDao.save(o);
	}

	/**
	 * save an object.
	 */
	public void saveOrUpdate(Object o) {
		entityDao.saveOrUpdate(o);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#findBy(java.lang.String,
	 *      java.lang.Object)
	 */
	public List<T> findBy(String propertyName, Object value) {
		return entityDao.findByNameValue(entityClass, propertyName, value);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#findBy(java.lang.String,
	 *      java.lang.Object, java.lang.String, boolean)
	 */
	public List<T> findBy(String propertyName, Object value, String orderBy,
			boolean isAsc) {
		return entityDao.findByNameValue(entityClass, propertyName, value,
				orderBy, isAsc);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#findUniqueBy(java.lang.String,
	 *      java.lang.Object)
	 */
	public T findUniqueBy(String propertyName, Object value) {
		return entityDao.findUniqueBy(propertyName, value);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#isUnique(java.lang.Object,
	 *      java.lang.String)
	 */
	public boolean isUnique(Object entity, String uniquePropertyNames) {
		return entityDao.isUnique(entity, uniquePropertyNames);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#clear()
	 */
	public void clear() {
		entityDao.clear();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.service.CommonService#flush()
	 */
	public void flush() {
		entityDao.flush();
	}

	public String getIdName(Class clazz) {
		return entityDao.getIdName(clazz);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#listByPage(java.lang.String,
	 *      int, int, java.lang.Object[])
	 */
	public List<T> listByPage(String hql, int pageNo, int pageSize,
			Object... values) {
		return entityDao.listByPage(entityClass, hql, pageNo, pageSize, values);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#listByPage(int, int,
	 *      java.lang.String, boolean, org.hibernate.criterion.Criterion[])
	 */
	public List<T> listByPage(int pageNo, int pageSize, String orderBy,
			boolean isAsc, Criterion... criterions) {
		return entityDao.listByPage(entityClass, pageNo, pageSize, orderBy,
				isAsc, criterions);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#listByPage(int, int,
	 *      org.hibernate.criterion.Criterion[])
	 */
	public List<T> listByPage(int pageNo, int pageSize, Criterion... criterions) {
		return entityDao.listByPage(entityClass, pageNo, pageSize, criterions);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#pagedQuery(java.lang.String,
	 *      int, int, java.lang.Object[])
	 */
	public Page<T> pagedQuery(String hql, int pageNo, int pageSize,
			Object... values) {
		return entityDao.pagedQuery(entityClass, hql, pageNo, pageSize, values);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#pagedQuery(int, int,
	 *      java.lang.String, boolean, org.hibernate.criterion.Criterion[])
	 */
	public Page<T> pagedQuery(int pageNo, int pageSize, String orderBy,
			boolean isAsc, Criterion... criterions) {
		return entityDao.pagedQuery(entityClass, pageNo, pageSize, orderBy,
				isAsc, criterions);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#pagedQuery(int, int,
	 *      org.hibernate.criterion.Criterion[])
	 */
	public Page<T> pagedQuery(int pageNo, int pageSize, Criterion... criterions) {
		return entityDao.pagedQuery(entityClass, pageNo, pageSize, criterions);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#evict(java.lang.Object)
	 */
	public void evict(Object o) {
		entityDao.evict(o);
	}

	public void merge(Object o) {
		entityDao.merge(o);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#contains(java.lang.Object)
	 */
	public boolean contains(Object o) {
		return entityDao.contains(o);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#findAllByCache(boolean)
	 */
	public List<T> findAllByCache(boolean cache) {
		return entityDao.getAll(entityClass, cache);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#loadAll()
	 */
	public List<T> loadAll(Class clz) {
		return entityDao.loadAll(clz);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#getObjectByCache(Serializable,
	 *      boolean)
	 */
	public T getObjectByCache(Serializable id, boolean cache) {
		return entityDao.getById(entityClass, id, cache);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.cetelem.core.manager.CommonManager#commit()
	 */
	public void commit() throws ApplicationException {
		this.entityDao.commit();
	}

	/**
	 * reflesh to second cache.
	 */
	public void reflesh2Cache(Class clz) {
		this.entityDao.reflesh2Cache(clz);
	}
}
