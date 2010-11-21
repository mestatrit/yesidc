/**
 * $Id: CollectionUtils.java,v 1.2 2009/02/05 08:44:07 abel Exp $
 */

package com.yesibc.core.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
	 * Judge Map empty.
	 * 
	 * @param collection
	 * @return boolean
	 */
	public static boolean isEmpty(Map collection) {
		return collection == null || collection.isEmpty();
	}

	/**
	 * Judge collection's empty.
	 * 
	 * @param collection
	 * @return boolean
	 */
	public static boolean isEmpty(Collection collection) {
		return collection == null || collection.isEmpty();
	}

	/** List order not maintained **/
	public void removeDuplicate(List<Integer> arlList) {
		HashSet<Integer> h = new HashSet<Integer>(arlList);
		arlList.clear();
		arlList.addAll(h);
	}

	/** List order maintained **/
	public void removeDuplicateWithOrder(List arlList) {
		Set set = new HashSet();
		List newList = new ArrayList();
		for (Iterator iter = arlList.iterator(); iter.hasNext();) {
			Object element = iter.next();
			if (set.add(element))
				newList.add(element);
		}
		arlList.clear();
		arlList.addAll(newList);
	}

}