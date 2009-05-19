/**
 * $Id: CollectionUtils.java,v 1.2 2009/02/05 08:44:07 abel Exp $
 */

package com.yesibc.core.utils;

import java.util.Collection;

/**
 * CollectionUtils.
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-10-18 上午11:54:05
 */
@SuppressWarnings("unchecked")
public class CollectionUtils {

	private CollectionUtils() {
	}


	/**
	 * Judge collection's empty.
	 * @param collection
	 * @return boolean
	 */
	public static boolean isEmpty(Collection collection) {
		return collection == null || collection.isEmpty();
	}
}