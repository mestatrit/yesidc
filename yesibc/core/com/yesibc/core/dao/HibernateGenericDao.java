/**
 * $Id: HibernateGenericDao.java,v 1.13 2009/01/05 09:51:08 abel Exp $
 */
package com.yesibc.core.dao;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.beanutils.PropertyUtils;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.impl.CriteriaImpl;
import org.hibernate.metadata.ClassMetadata;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.util.Assert;
import org.springframework.util.ReflectionUtils;

import com.yesibc.core.dao.support.Page;
import com.yesibc.core.utils.BeanUtils;

/**
 * HibernateGenericDao is Hibernate Dao fundation class that support generic
 * type. <p/>
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-13 下午03:41:07
 * @see HibernateDaoSupport
 * @see HibernateEntityDao
 */
@SuppressWarnings("unchecked")
public class HibernateGenericDao extends HibernateDaoSupport {

	/**
	 * Get the object according to id.
	 */
	public <T> T get(Class<T> entityClass, Serializable id) {
		return (T) getHibernateTemplate().get(entityClass, id);
	}

	/**
	 * Get all objects.
	 */
	public <T> List<T> getAll(Class<T> entityClass) {
		return getHibernateTemplate().loadAll(entityClass);
	}

	/**
	 * Get the list of objects,and the list is sorted by the property of
	 * "orderBy".
	 */
	public <T> List<T> getAll(Class<T> entityClass, String orderBy,
			boolean isAsc) {
		Assert.hasText(orderBy);
		if (isAsc)
			return getHibernateTemplate().findByCriteria(
					DetachedCriteria.forClass(entityClass).addOrder(
							Order.asc(orderBy)));
		else
			return getHibernateTemplate().findByCriteria(
					DetachedCriteria.forClass(entityClass).addOrder(
							Order.desc(orderBy)));
	}

	/**
	 * update an object.
	 */
	public void update(Object o) {
		getHibernateTemplate().update(o);
	}

	/**
	 * save an object.
	 */
	public void save(Object o) {
		getHibernateTemplate().save(o);
	}

	/**
	 * save an object.
	 */
	public void saveOrUpdate(Object o) {
		getHibernateTemplate().saveOrUpdate(o);
	}

	/**
	 * Remove an object.
	 */
	public void remove(Object o) {
		getHibernateTemplate().delete(o);
	}

	/**
	 * Remove an object by id.
	 */
	public <T> void removeById(Class<T> entityClass, Serializable id) {
		remove(get(entityClass, id));
	}


	/**
	 * Clear the Hibernate session.
	 */
	public void clear() {
		getHibernateTemplate().clear();
	}

	/**
	 * Create an object of "Query". It can be extended. Such as:
	 * 
	 * <pre>
	 * dao.getQuery(hql).setMaxResult(100).list();
	 * </pre>
	 * 
	 * It can be called like the following：
	 * 
	 * <pre>
	 *         dao.createQuery(hql)
	 *         dao.createQuery(hql,arg0);
	 *         dao.createQuery(hql,arg0,arg1);
	 *         dao.createQuery(hql,new Object[arg0,arg1,arg2])
	 * </pre>
	 * 
	 * @param values
	 *            an array of type .
	 */

	public Query createQuery(String hql, Object... values) {
		Assert.hasText(hql);
		Query query = getSession().createQuery(hql);
		for (int i = 0; i < values.length; i++) {
			query.setParameter(i, values[i]);
		}
		return query;
	}

	/**
	 * Create an object of Criteria.
	 * 
	 * @param criterions
	 * 
	 * an array of Restrictions,see{@link #createQuery(String,Object...)}
	 */
	public <T> Criteria createCriteria(Class<T> entityClass,
			Criterion... criterions) {
		Criteria criteria = getSession().createCriteria(entityClass);
		for (Criterion c : criterions) {
			criteria.add(c);
		}
		return criteria;
	}

	/**
	 * Create an object of Criteria，and is sorted by the property of "orderBy".
	 * 
	 * @see #createCriteria(Class,Criterion[])
	 */
	public <T> Criteria createCriteria(Class<T> entityClass, String orderBy,
			boolean isAsc, Criterion... criterions) {
		Assert.hasText(orderBy);

		Criteria criteria = createCriteria(entityClass, criterions);

		if (isAsc)
			criteria.addOrder(Order.asc(orderBy));
		else
			criteria.addOrder(Order.desc(orderBy));

		return criteria;
	}

	/**
	 * Query by hql.
	 * 
	 * @param values
	 *            an array of type,see{@link #createQuery(String,Object...)}
	 */
	public List find(String hql) {
		Assert.hasText(hql);
		return getHibernateTemplate().find(hql);
	}

	/**
	 * Query by hql.
	 * 
	 * @param values
	 *            an array of type,see{@link #createQuery(String,Object...)}
	 */
	public List find(String hql, Object... values) {
		Assert.hasText(hql);
		return getHibernateTemplate().find(hql, values);
	}

	/**
	 * Query object list by the value and property name.
	 * 
	 * @return object list
	 */
	public <T> List<T> findBy(Class<T> entityClass, String propertyName,
			Object value) {
		Assert.hasText(propertyName);
		return createCriteria(entityClass, Restrictions.eq(propertyName, value))
				.list();
	}

	/**
	 * Query object list by the value and property name,and the list is sorted
	 * by the property of "orderBy".
	 * 
	 * @param entityClass
	 *            Entity class managed by DAO
	 * @param propertyName
	 * @param value
	 * @param orderBy
	 * @param isAsc
	 * @return object list
	 */
	public <T> List<T> findBy(Class<T> entityClass, String propertyName,
			Object value, String orderBy, boolean isAsc) {
		Assert.hasText(propertyName);
		Assert.hasText(orderBy);
		return createCriteria(entityClass, orderBy, isAsc,
				Restrictions.eq(propertyName, value)).list();
	}

	/**
	 * Query an object by the value and property name,
	 * 
	 * @return an object or null if not found.
	 */
	public <T> T findUniqueBy(Class<T> entityClass, String propertyName,
			Object value) {
		Assert.hasText(propertyName);
		return (T) createCriteria(entityClass,
				Restrictions.eq(propertyName, value)).uniqueResult();
	}

	/**
	 * Query by paging. Use <code>Criteria</code> that have set query
	 * condition and sorting.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return Page.
	 */
	public <T> Page<T> pagedQuery(Class<T> entityClass, Criteria criteria,
			int pageNo, int pageSize) {
		Assert.notNull(criteria);
		Assert.isTrue(pageNo >= 1, "pageNo should start from 1");
		Assert.isTrue(pageSize >= 1, "pageSize should greater than 1");
		int totalCount = getTotalCountByCriteria(criteria);

		if (totalCount < 1) {
			return new Page<T>(pageSize, 1, 0, 1, 0, new ArrayList<T>(),
					entityClass);
		}

		int startIndex = Page.getStartOfPage(pageNo, pageSize);
		List<T> list = criteria.setFirstResult(startIndex).setMaxResults(
				pageSize).list();

		return new Page<T>(pageSize, pageNo, Page.getTotalPageCount(totalCount,
				pageSize), startIndex, totalCount, list, entityClass);
	}

	/**
	 * @param criteria
	 * @return int
	 * @throws InternalError
	 */
	public int getTotalCountByCriteria(Criteria criteria) throws InternalError {
		CriteriaImpl impl = (CriteriaImpl) criteria;

		Projection projection = impl.getProjection();
		List<CriteriaImpl.OrderEntry> orderEntries;
		try {
			orderEntries = (List) BeanUtils.forceGetProperty(impl,
					"orderEntries");
			BeanUtils.forceSetProperty(impl, "orderEntries", new ArrayList());
		} catch (Exception e) {
			throw new InternalError(" Runtime Exception impossibility throw ");
		}

		int totalCount = (Integer) criteria.setProjection(
				Projections.rowCount()).uniqueResult();

		criteria.setProjection(projection);
		if (projection == null) {
			criteria.setResultTransformer(CriteriaSpecification.ROOT_ENTITY);
		}

		try {
			BeanUtils.forceSetProperty(impl, "orderEntries", orderEntries);
		} catch (Exception e) {
			throw new InternalError(" Runtime Exception impossibility throw ");
		}
		return totalCount;
	}

	/**
	 * Judge whether the value of the property is unique.
	 * 
	 * @param uniquePropertyNames
	 *            The field list in entity.Split by ",". For example:
	 *            "name,password"
	 */
	public <T> boolean isUnique(Class<T> entityClass, Object entity,
			String uniquePropertyNames) {
		Assert.hasText(uniquePropertyNames);
		Criteria criteria = createCriteria(entityClass).setProjection(
				Projections.rowCount());
		String[] nameList = uniquePropertyNames.split(",");
		try {
			for (String name : nameList) {
				criteria.add(Restrictions.eq(name, PropertyUtils.getProperty(
						entity, name)));
			}

			String idName = getIdName(entityClass);

			Serializable id = getId(entityClass, entity);

			if (id != null)
				criteria.add(Restrictions.not(Restrictions.eq(idName, id)));
		} catch (Exception e) {
			ReflectionUtils.handleReflectionException(e);
		}
		return (Integer) criteria.uniqueResult() == 0;
	}

	/**
	 * Get the value of the primary key of the entity.
	 */
	public Serializable getId(Class entityClass, Object entity)
			throws NoSuchMethodException, IllegalAccessException,
			InvocationTargetException {
		Assert.notNull(entity);
		Assert.notNull(entityClass);
		return (Serializable) PropertyUtils.getProperty(entity,
				getIdName(entityClass));
	}

	/**
	 * Get the name of the primary key of the entity.
	 */
	public String getIdName(Class clazz) {
		Assert.notNull(clazz);
		ClassMetadata meta = getSessionFactory().getClassMetadata(clazz);
		Assert.notNull(meta, "Class " + clazz
				+ " not define in hibernate session factory.");
		String idName = meta.getIdentifierPropertyName();
		Assert.hasText(idName, clazz.getSimpleName()
				+ " has no identifier property define.");
		return idName;
	}

	/**
	 * Remove the clause of "select" from hql without thinking of "union"
	 * 
	 * @see #pagedQuery(String,int,int,Object[])
	 */
	public static String removeSelect(String hql) {
		Assert.hasText(hql);
		int beginPos = hql.toLowerCase().indexOf("from");
		Assert.isTrue(beginPos != -1, " hql : " + hql
				+ " must has a keyword 'from'");
		return hql.substring(beginPos);
	}

	/**
	 * Remove the clause of "orderby" from hql without thinking of "union"
	 * 
	 * @see #pagedQuery(String,int,int,Object[])
	 */
	public static String removeOrders(String hql) {
		Assert.hasText(hql);
		Pattern p = Pattern.compile("order\\s*by[\\w|\\W|\\s|\\S]*",
				Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(hql);
		StringBuffer sb = new StringBuffer();
		while (m.find()) {
			m.appendReplacement(sb, "");
		}
		m.appendTail(sb);
		return sb.toString();
	}

	/**
	 * @param hql
	 * @param values
	 * @return int
	 */
	public int getTotalCountByHql(String hql, Object... values) {
		String countQueryString = " select count (*) "
				+ removeSelect(removeOrders(hql));
		List<Long> countlist = getHibernateTemplate().find(countQueryString,
				values);
		int totalCount = ((Long) countlist.get(0)).intValue();
		return totalCount;
	}

	/**
	 * @param hql
	 * @param values
	 * @return int
	 */
	public int getTotalCountByHql1(String hql, Object[] values) {
		String countQueryString = " select count (*) "
				+ removeSelect(removeOrders(hql));
		List<Long> countlist = getHibernateTemplate().find(countQueryString,
				values);
		int totalCount = ((Long) countlist.get(0)).intValue();
		return totalCount;
	}

	/**
	 * Query by paging. Use <code>Criteria</code> that have set query
	 * condition and sorting.
	 * 
	 * @param pageNo
	 *            page number,start from 1.
	 * @return Page.
	 */
	public <T> List<T> listByPage(Criteria criteria, int pageNo, int pageSize) {
		Assert.notNull(criteria);
		Assert.isTrue(pageNo >= 1, "pageNo should start from 1");
		int totalCount = getTotalCountByCriteria(criteria);

		if (totalCount < 1)
			return new ArrayList<T>();

		int startIndex = Page.getStartOfPage(pageNo, pageSize);
		return criteria.setFirstResult(startIndex).setMaxResults(pageSize)
				.list();
	}

}