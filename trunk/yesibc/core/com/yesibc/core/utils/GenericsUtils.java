/**
 * $Id: GenericsUtils.java,v 1.2 2007/11/06 03:10:41 abel Exp $
 */

package com.yesibc.core.utils;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Generics util class.
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午11:02:42
 */
@SuppressWarnings("unchecked")
public class GenericsUtils {
	private static final Log log = LogFactory.getLog(GenericsUtils.class);

	private GenericsUtils() {
	}

	/**
	 * Get the generic parameter type of the super class when declare the class
	 * through reflecting. for example: public BookManager extends GenricManager<Book>
	 * 
	 * @param clazz
	 *            The class to introspect
	 * @return the first generic declaration, or <code>Object.class</code> if
	 *         cannot be determined
	 */
	public static Class getSuperClassGenricType(Class clazz) {
		return getSuperClassGenricType(clazz, 0);
	}

	/**
	 * Get the generic parameter type of the super class when declare the class
	 * through reflecting.
	 * 
	 * @param clazz
	 *            clazz The class to introspect
	 * @param index
	 *            the Index of the generic ddeclaration,start from 0.
	 * @return the index generic declaration, or <code>Object.class</code> if
	 *         cannot be determined
	 */
	public static Class getSuperClassGenricType(Class clazz, int index) {

		Type genType = clazz.getGenericSuperclass();

		if (!(genType instanceof ParameterizedType)) {
			if (log.isDebugEnabled()) {
				log.warn(clazz.getSimpleName()
						+ "'s superclass not ParameterizedType");
			}
			return Object.class;
		}

		Type[] params = ((ParameterizedType) genType).getActualTypeArguments();

		if (index >= params.length || index < 0) {
			if (log.isDebugEnabled()) {
				log.warn("Index: " + index + ", Size of "
						+ clazz.getSimpleName() + "'s Parameterized Type: "
						+ params.length);
			}
			return Object.class;
		}
		if (!(params[index] instanceof Class)) {
			if (log.isDebugEnabled()) {
				log
						.warn(clazz.getSimpleName()
								+ " not set the actual class on superclass generic parameter");
			}
			return Object.class;
		}
		return (Class) params[index];
	}
}
