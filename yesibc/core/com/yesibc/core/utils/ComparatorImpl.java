/**
 * $Id: ComparatorImpl.java,v 1.2 2008/09/12 10:41:38 abel Exp $
 */

package com.yesibc.core.utils;

import java.io.Serializable;
import java.util.Comparator;

/**
 * The Comparator olny support String in Object.
 * 
 * @author Abel.Ye o_olle_e@hotmail.com
 * @version 1.0 create time: 2008-7-23 AM 11:30:22
 * @param <T>
 */
public class ComparatorImpl<T> implements Comparator<T>, Serializable {

	/**
	 * long:serialVersionUID
	 */
	private static final long serialVersionUID = 5353459180999229314L;

	protected Class<T> entityClass;

	private String methodName;
	private boolean asc;

	/**
	 * EntityClass is endowed the generic type of T.class in the construct
	 * function.
	 */
	@SuppressWarnings("unchecked")
	public ComparatorImpl(String methodName, boolean asc) {
		entityClass = GenericsUtils.getSuperClassGenricType(getClass());
		this.methodName = methodName;
		this.asc = asc;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare(T arg0, T arg1) {
		Object o1 = null;
		try {
			o1 = BeanUtils.invokeMethod(arg0, methodName);
		} catch (Exception e) {
			o1 = null;
			e.printStackTrace();
		}
		Object o2 = null;
		try {
			o2 = BeanUtils.invokeMethod(arg1, methodName);
		} catch (Exception e) {
			o2 = null;
			e.printStackTrace();
		}

		if (o1 == null) {
			if (asc) {
				return -1;
			} else {
				return 1;
			}
		} else {
			String o1Str = o1.toString();
			String o2Str = "";
			if (o2 != null) {
				o2Str = o2.toString();
			}
			if (asc) {
				return o1Str.compareTo(o2Str);
			} else {
				return o2Str.compareTo(o1Str);
			}
		}

	}

}
