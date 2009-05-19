/**
 * $Id: CommonHandler.java,v 1.0  Oct 18, 2007 1:28:27 PM Abel Exp $
*/

package com.yesibc.core.web;

import java.io.Serializable;
import java.util.List;

/**
 * @author Abel.Ye o_olle_e@hotmail.com
 * create time: Oct 18, 2007 1:28:27 PM
 */
public interface CommonHandler<T> {
	/**
	 * Get object according to "id".
	 * 
	 */
	T get(Serializable id);

	/**
	 * Get all.
	 * 
	 */
	List<T> findAll();

	/**
	 * Save an object.
	 */
	void save(Object o);

	/**
	 * Remove an object.
	 */
	void remove(Object o);

	/**
	 * Remove the object according id.
	 * 
	 */
	void removeById(Serializable id);
}
