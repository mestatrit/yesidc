/**
 * $Id: CommonHandlerImpl.java,v 1.0  Oct 18, 2007 1:32:03 PM Abel Exp $
*/

package com.yesibc.core.web;

import java.io.Serializable;
import java.util.List;

import com.yesibc.core.utils.GenericsUtils;


/**
 * @author Abel.Ye o_olle_e@hotmail.com
 * create time: Oct 18, 2007 1:32:03 PM
 */
@SuppressWarnings("unchecked")
public class CommonHandlerImpl<T> implements CommonHandler<T> {

	protected Class<T> entityClass;

	/**
	 * Set T.class to entityClass.
	 */
	public CommonHandlerImpl() {
		entityClass = GenericsUtils.getSuperClassGenricType(getClass());
	}


	protected Class<T> getEntityClass() {
		return entityClass;
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.accounting.client.common.CommonHandler#findAll()
	 */
	public List<T> findAll() {
		return null;
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.accounting.client.common.CommonHandler#get(java.io.Serializable)
	 */
	public T get(Serializable id) {
		return null;
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.accounting.client.common.CommonHandler#remove(java.lang.Object)
	 */
	public void remove(Object o) {
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.accounting.client.common.CommonHandler#removeById(java.io.Serializable)
	 */
	public void removeById(Serializable id) {
	}

	/* (non-Javadoc)
	 * @see cn.cetelem.accounting.client.common.CommonHandler#save(java.lang.Object)
	 */
	public void save(Object o) {
	}

}
