/**
 * $Id: BeanUtils.java,v 1.13 2009/02/05 08:46:02 abel Exp $
 */

package com.yesibc.core.utils;

import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.Assert;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.support.ExtendsBeanUtilsBean;

/**
 * Extends Apache Commons BeanUtils. Provide the reflect function that is no
 * mentioned in Apache Commons BeanUtils.
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午11:54:05
 */
@SuppressWarnings("unchecked")
public class BeanUtils extends org.apache.commons.beanutils.BeanUtils {

	protected static final Log logger = LogFactory.getLog(BeanUtils.class);

	private BeanUtils() {
	}

	public static boolean executeTimeControlMethod(Runnable runable,
			long timeout) {
		// 创建一个使用单个 worker 线程的 Executor
		ExecutorService service = Executors.newSingleThreadExecutor();
		// 提交一个 Runnable 任务用于执行，跟踪一个或多个异步任务执行状况而生成 Future 的方法。
		// submit(Runnable task, T result) task - 要提交的任务 result - 返回的结果
		Future result = service.submit(runable, 1);
		try {
			// get(long timeout, TimeUnit unit) 等待timeout时间之后，检索其结果
			// 正常的应该返回submit方法传入的result
			if (result.get(timeout, TimeUnit.MILLISECONDS) != null)
				return true;
			// 也可以通过cancel(boolean mayInterruptIfRunning) 取消对此任务的执行
			// 当调用 cancel 时，如果调用成功，而此任务尚未启动，则此任务将永不运行。

			// 试图停止所有正在执行的活动任务，暂停处理正在等待的任务，并返回等待执行的任务列表。
			service.shutdownNow();
		} catch (Exception e) {
		}
		return false;
	}

	/**
	 * Change the type upward,and get DeclaredField of the object.
	 * 
	 * @throws NoSuchFieldException
	 * 
	 */
	public static Field getDeclaredField(Object object, String propertyName)
			throws NoSuchFieldException {
		Assert.notNull(object);
		Assert.hasText(propertyName);
		return getDeclaredField(object.getClass(), propertyName);
	}

	/**
	 * Change the type upward,and get DeclaredField of the object.
	 * 
	 * @throws NoSuchFieldException
	 * 
	 */
	public static Field getDeclaredField(Class clazz, String propertyName)
			throws NoSuchFieldException {
		Assert.notNull(clazz);
		Assert.hasText(propertyName);
		for (Class superClass = clazz; superClass != Object.class; superClass = superClass
				.getSuperclass()) {
			try {
				return superClass.getDeclaredField(propertyName);
			} catch (NoSuchFieldException e) {
			}
		}
		throw new NoSuchFieldException("No such field: " + clazz.getName()
				+ '.' + propertyName);
	}

	/**
	 * Get the value of the object's property over the limit of "private" and
	 * "protected".
	 * 
	 * @throws NoSuchFieldException
	 * 
	 */
	public static Object forceGetProperty(Object object, String propertyName)
			throws NoSuchFieldException {
		Assert.notNull(object);
		Assert.hasText(propertyName);

		Field field = getDeclaredField(object, propertyName);

		boolean accessible = field.isAccessible();
		field.setAccessible(true);

		Object result = null;
		try {
			result = field.get(object);
		} catch (IllegalAccessException e) {
			logger.info("error wont' happen");
		}
		field.setAccessible(accessible);
		return result;
	}

	/**
	 * Set the value of the object's property over the limit of "private" and
	 * "protected".
	 * 
	 * @throws NoSuchFieldException
	 * 
	 */
	public static void forceSetProperty(Object object, String propertyName,
			Object newValue) throws NoSuchFieldException {
		Assert.notNull(object);
		Assert.hasText(propertyName);

		Field field = getDeclaredField(object, propertyName);
		boolean accessible = field.isAccessible();
		field.setAccessible(true);
		try {
			field.set(object, newValue);
		} catch (IllegalAccessException e) {
			logger.info("Error won't happen");
		}
		field.setAccessible(accessible);
	}

	/**
	 * Call the method of the object over the limit of "private" and
	 * "protected".
	 * 
	 * @throws NoSuchMethodException
	 * 
	 */
	public static Object invokeMethod(Object object, String methodName,
			Object... params) throws Exception {
		Assert.notNull(object);
		Assert.hasText(methodName);
		Class[] types = new Class[params.length];
		for (int i = 0; i < params.length; i++) {
			types[i] = params[i].getClass();
		}

		Class clazz = object.getClass();
		Method method = null;
		for (Class superClass = clazz; superClass != Object.class; superClass = superClass
				.getSuperclass()) {
			try {
				method = superClass.getDeclaredMethod(methodName, types);
				break;
			} catch (NoSuchMethodException e) {
				throw e;
			}
		}

		if (method == null)
			throw new NoSuchMethodException("No Such Method:"
					+ clazz.getSimpleName() + methodName);

		boolean accessible = method.isAccessible();
		method.setAccessible(true);
		Object result = null;
		try {
			result = method.invoke(object, params);
		} catch (Exception e) {
			throw e;
		}
		method.setAccessible(accessible);
		return result;
	}

	/**
	 * Call the method of the object over the limit of "private" and
	 * "protected".
	 * 
	 * @throws Throwable
	 * 
	 */
	public static Object invokeMethodThrowTargetException(Object object,
			String methodName, Object... params) throws Throwable {
		Assert.notNull(object);
		Assert.hasText(methodName);
		Class[] types = new Class[params.length];
		for (int i = 0; i < params.length; i++) {
			types[i] = params[i].getClass();
		}

		Class clazz = object.getClass();
		Method method = null;
		for (Class superClass = clazz; superClass != Object.class; superClass = superClass
				.getSuperclass()) {
			try {
				method = superClass.getDeclaredMethod(methodName, types);
				break;
			} catch (NoSuchMethodException e) {
				throw e;
			}
		}

		if (method == null)
			throw new NoSuchMethodException("No Such Method:"
					+ clazz.getSimpleName() + methodName);

		boolean accessible = method.isAccessible();
		method.setAccessible(true);
		Object result = null;
		try {
			result = method.invoke(object, params);
		} catch (InvocationTargetException e) {
			throw e.getTargetException();
		}
		method.setAccessible(accessible);
		return result;
	}

	/**
	 * Call the method of the object over the limit of "private" and
	 * "protected".
	 * 
	 * @throws NoSuchMethodException
	 * 
	 */
	public static Object invokeMethod(Object object, String methodName)
			throws Exception {
		Assert.notNull(object);
		Assert.hasText(methodName);

		Class clazz = object.getClass();
		Method method = null;
		for (Class superClass = clazz; superClass != Object.class; superClass = superClass
				.getSuperclass()) {
			try {
				method = superClass.getDeclaredMethod(methodName);
				break;
			} catch (NoSuchMethodException e) {
				throw e;
			}
		}

		if (method == null)
			throw new NoSuchMethodException("No Such Method:"
					+ clazz.getSimpleName() + "." + methodName);

		boolean accessible = method.isAccessible();
		method.setAccessible(true);
		Object result = null;
		try {
			result = method.invoke(object);
		} catch (Exception e) {
			throw e;
		}
		method.setAccessible(accessible);
		return result;
	}

	/**
	 * Call the method of the object over the limit of "private" and
	 * "protected".
	 * 
	 * @throws Throwable
	 * 
	 */
	public static Object invokeMethodThrowTargetException(Object object,
			String methodName) throws Throwable {
		Assert.notNull(object);
		Assert.hasText(methodName);

		Class clazz = object.getClass();
		Method method = null;
		for (Class superClass = clazz; superClass != Object.class; superClass = superClass
				.getSuperclass()) {
			try {
				method = superClass.getDeclaredMethod(methodName);
				break;
			} catch (NoSuchMethodException e) {
				throw e;
			}
		}

		if (method == null)
			throw new NoSuchMethodException("No Such Method:"
					+ clazz.getSimpleName() + "." + methodName);

		boolean accessible = method.isAccessible();
		method.setAccessible(true);
		Object result = null;
		try {
			result = method.invoke(object);
		} catch (InvocationTargetException e) {
			throw e.getTargetException();
		}
		method.setAccessible(accessible);
		return result;
	}

	/**
	 * Get the list of fields by the type of fields.
	 */
	public static List<Field> getFieldsByType(Object object, Class type) {
		List<Field> list = new ArrayList<Field>();
		Field[] fields = object.getClass().getDeclaredFields();
		for (Field field : fields) {

			if (field.getType().isAssignableFrom(type)) {
				list.add(field);
			}
		}
		return list;
	}

	/**
	 * Get the field type by field name.
	 */
	public static Class getPropertyType(Class type, String name)
			throws NoSuchFieldException {
		return getDeclaredField(type, name).getType();
	}

	/**
	 * Get the getter method name of the field.
	 */
	public static String getGetterName(Class type, String fieldName) {
		Assert.notNull(type, "Type required");
		Assert.hasText(fieldName, "FieldName required");

		if (type.getName().equals("boolean")) {
			return "is" + StringUtils.capitalize(fieldName);
		} else {
			return "get" + StringUtils.capitalize(fieldName);
		}
	}

	/**
	 * Get the getter method name of the field. If there is no the method,return
	 * null.
	 */
	public static Method getGetterMethod(Class type, String fieldName) {
		try {
			return type.getMethod(getGetterName(type, fieldName));
		} catch (NoSuchMethodException e) {
			logger.error(e.getMessage(), e);
		}
		return null;
	}

	/**
	 * @param dest
	 * @param orig
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public static Object exCopyProperties(Object orig, Object dest)
			throws IllegalAccessException, InvocationTargetException {

		return ExtendsBeanUtilsBean.getInstance().extendCopyPropertiesForXFire(
				dest, orig, null, 0);
	}

	/**
	 * @param dest
	 * @param orig
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public static Object copyPropertiesFromXFireStub(Object orig, Object dest)
			throws IllegalAccessException, InvocationTargetException {

		return ExtendsBeanUtilsBean.getInstance().extendCopyPropertiesForXFire(
				dest, orig, null, 0);
	}

	/**
	 * @param orig
	 * @param dest
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public static void copyProperties(Object orig, Object dest)
			throws IllegalAccessException, InvocationTargetException {
		ExtendsBeanUtilsBean.getInstance().extendCopyPropertiesForXFire(dest,
				orig, null, 0);
	}

	/**
	 * @param dest
	 * @param orig
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public static Object copyProperties2XFireStub(Object orig, Object dest,
			String qnameURI) throws IllegalAccessException,
			InvocationTargetException {

		return ExtendsBeanUtilsBean.getInstance().extendCopyPropertiesForXFire(
				dest, orig, qnameURI, 0);
	}

	/**
	 * @param owner
	 * @param methodName
	 * @param args
	 * @return
	 * @throws Exception
	 */
	public static Object invokePublicMethod(Object owner, String methodName,
			Object[] args) throws Exception {
		Class ownerClass = owner.getClass();
		Class[] argsClass = null;
		if (args != null && args.length > 0) {
			int j = args.length;
			argsClass = new Class[j];
			for (int i = 0; i < j; i++) {
				if (args[i] == null) {
					argsClass[i] = null;
				} else {
					argsClass[i] = args[i].getClass();
				}
			}
		}
		Method method = ownerClass.getMethod(methodName, argsClass);
		return method.invoke(owner, args);
	}

	/**
	 * @param owner
	 * @param methodName
	 * @param args
	 * @return
	 * @throws Throwable
	 */
	public static Object invokePublicMethodThrowTargetException(Object owner,
			String methodName, Object[] args) throws Throwable {
		Class ownerClass = owner.getClass();
		Class[] argsClass = null;
		if (args != null && args.length > 0) {
			int j = args.length;
			argsClass = new Class[j];
			for (int i = 0; i < j; i++) {
				if (args[i] == null) {
					argsClass[i] = null;
				} else {
					argsClass[i] = args[i].getClass();
				}
			}
		}
		Method method = ownerClass.getMethod(methodName, argsClass);

		try {
			return method.invoke(owner, args);
		} catch (InvocationTargetException e) {
			throw e.getTargetException();
		}
	}

	/**
	 * <pre>
	 * set values to dest from origin according to filter
	 * </pre>
	 * 
	 * @throws ApplicationException
	 */
	public static void copySimpleProperties(Object dest, Object origin,
			boolean copyNull) throws Exception {

		Class<?> getClz2 = origin.getClass();
		Class<?> setClz1 = dest.getClass();

		PropertyDescriptor[] setDescs = null;
		PropertyDescriptor[] getDescs = null;
		try {
			setDescs = Introspector.getBeanInfo(setClz1)
					.getPropertyDescriptors();
			getDescs = Introspector.getBeanInfo(getClz2)
					.getPropertyDescriptors();
		} catch (IntrospectionException e1) {
			throw new Exception(e1);
		}
		String setName = "";
		String getName = "";
		Method read = null;
		Object objectRead = null;
		Method write = null;
		for (PropertyDescriptor setDesc : setDescs) {
			setName = setDesc.getDisplayName();
			if ("class".equals(setName)) {
				continue;
			}

			write = setDesc.getWriteMethod();

			for (PropertyDescriptor getDesc : getDescs) {
				read = getDesc.getReadMethod();
				if (read == null) {
					continue;
				}
				getName = getDesc.getDisplayName();
				if (!setName.equalsIgnoreCase(getName)) {
					continue;
				}

				try {
					objectRead = read.invoke(origin, new Object[] {});

					if (!copyNull) {
						if (objectRead == null) {
							break;
						}
					}

					write.invoke(dest, objectRead);
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				}
				break;
			}
		}
	}

	/**
	 * 
	 * @param cls
	 * @return
	 */
	public static List<Method> getMethods(Class cls) {
		ArrayList<Method> ms = new ArrayList<Method>();
		ms.addAll(Arrays.asList(cls.getDeclaredMethods()));
		Class superClass = cls.getSuperclass();
		ms.addAll(Arrays.asList(superClass.getDeclaredMethods()));
		return ms;
	}

	public static void main(String[] args) {
		try {
			System.out.println(getPropertyType(BeanUtils.class, "logger"));
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		}
	}

}