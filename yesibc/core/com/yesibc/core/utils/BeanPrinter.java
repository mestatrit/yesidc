package com.yesibc.core.utils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@SuppressWarnings("unchecked")
public class BeanPrinter {
	public static String printAttributes(Object o, String space) {
		String result = "";
		Class c = o.getClass();
		Field[] fields = c.getDeclaredFields();
		Class[] clz = null;
		Object[] obj = null;
		for (Field filed : fields) {
			String name = filed.getName();
			String l = "" + name.charAt(0);

			try {
				Method m = null;
				Object r = null;
				try {
					String methodName = "get" + l.toUpperCase()
							+ name.substring(1);
					// System.out.println(methodName);
					m = c.getMethod(methodName, clz);
					r = m.invoke(o, obj);
					result = result + m.getName().substring(3) + "=" + r
							+ space;
				} catch (NoSuchMethodException e) {
					try {
						String methodName = "is" + l.toUpperCase()
								+ name.substring(1);
						// System.out.println(methodName);
						m = c.getMethod(methodName, clz);
						r = m.invoke(o, obj);
						result = result + m.getName().substring(2) + "=" + r
								+ space;
					} catch (NoSuchMethodException e1) {
					}
				}
			} catch (SecurityException e) {
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}

		return result;
	}
}
