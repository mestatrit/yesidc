/**
 *$Id: BaseDAO.java,v 1.2 2006/05/18 05:53:40 davidye Exp $
 */
package com.yesibc.core.dao;

import java.io.Serializable;
import java.util.List;

/**
 * This class serves as the Base class for all other DAOs - namely to hold
 * common methods that they might all use. Can be used for standard CRUD
 * operations.It do not use generic.
 * </p>
 * 
 * @author david.ye email: o_olle_e@hotmail.com
 * 
 */
@SuppressWarnings("unchecked")
public interface BaseDAO {

	public Object get(Serializable id, Class clz);

	public List getAll(Class clz);

	public void save(Object o);

	public void update(Object o);

	public void remove(Serializable id, Class clz);

	public void remove(Object o);

	public List find(String hsql);

	public List findObjectList(final String hql, final Object[] params,
			final boolean cache);

	public List getAll(Class clz,boolean cache);

}
