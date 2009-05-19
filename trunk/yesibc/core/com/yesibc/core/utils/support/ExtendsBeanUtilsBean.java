/**
 * $Id: ExtendsBeanUtilsBean.java,v 1.3 2007/11/16 06:53:40 abel Exp $
 */

package com.yesibc.core.utils.support;

import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.beanutils.ContextClassLoaderLocal;
import org.apache.commons.beanutils.ConvertUtilsBean;
import org.apache.commons.beanutils.Converter;
import org.apache.commons.beanutils.DynaBean;
import org.apache.commons.beanutils.DynaClass;
import org.apache.commons.beanutils.DynaProperty;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.beanutils.PropertyUtilsBean;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.utils.XFireUtils;


import javax.xml.bind.JAXBElement;
import javax.xml.namespace.QName;

/**
 * @author David.ye o_olle_e@hotmail.com create time: Oct 21, 2007 11:01:19 AM
 */
@SuppressWarnings("unchecked")
public class ExtendsBeanUtilsBean extends BeanUtilsBean {

	static int DEPTH = 8;
	static boolean debug = false;

	protected static final Log log = LogFactory
			.getLog(ExtendsBeanUtilsBean.class);

	/**
	 * Creates the default instance used when the context classloader is unavailable
	 * ContextClassLoaderLocal:beansByClassLoader
	 */
	private static final ContextClassLoaderLocal beansByClassLoader = new ContextClassLoaderLocal() {
		protected Object initialValue() {
			return new ExtendsBeanUtilsBean();
		}
	};

	public synchronized static ExtendsBeanUtilsBean getInstance() {
		return (ExtendsBeanUtilsBean) beansByClassLoader.get();
	}

	/**
	 * constructor
	 */
	public ExtendsBeanUtilsBean() {
		super(new ConvertUtilsBean(), new PropertyUtilsBean());
	}


	/**
	 * Copy between Xfire stub object and common object.
	 * @param dest
	 * @param orig
	 * @param qnameURI  QName's url. It can be null. 
	 * @param depth
	 * @return Object.
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public Object extendCopyPropertiesForXFire(Object dest, Object orig, String qnameURI,
			int depth) throws IllegalAccessException, InvocationTargetException {
		if (depth > DEPTH) {
			return dest;
		}

		// Validate existence of the specified beans
		if (dest == null) {
			throw new IllegalArgumentException("No destination bean specified");
		}
		if (orig == null) {
			throw new IllegalArgumentException("No origin bean specified");
		}
		if (log.isDebugEnabled()) {
			log.debug("ExtendsBeanUtils.copyProperties(" + dest + ", " + orig
					+ ")");
		}

		// Copy the properties, converting as necessary
		if (orig instanceof DynaBean) {
			DynaProperty origDescriptors[] = ((DynaBean) orig).getDynaClass()
					.getDynaProperties();
			for (int i = 0; i < origDescriptors.length; i++) {
				String name = origDescriptors[i].getName();
				if (getPropertyUtils().isWriteable(dest, name)) {
					Object value = ((DynaBean) orig).get(name);
					Object ov = null;
					if (value != null && value instanceof JAXBElement) {
						JAXBElement v = (JAXBElement) value;
						ov = XFireUtils.getValue(v);
						copyProperty(qnameURI,dest, name, ov, depth + 1);
					} else {
						copyProperty(qnameURI,dest, name, value, depth + 1);
					}
				}
			}
		} else if (orig instanceof Map) {
			Iterator names = ((Map) orig).keySet().iterator();
			while (names.hasNext()) {
				String name = (String) names.next();
				if (getPropertyUtils().isWriteable(dest, name)) {
					Object value = ((Map) orig).get(name);
					Object ov = null;
					if (value != null && value instanceof JAXBElement) {
						JAXBElement v = (JAXBElement) value;
						ov = XFireUtils.getValue(v);
						copyProperty(qnameURI,dest, name, ov, depth + 1);
					} else {
						copyProperty(qnameURI,dest, name, value, depth + 1);
					}
				} else if (dest instanceof Map) {
					Object value = ((Map) orig).get(name);
					Object destInMap = null;
					try {
						if (value != null
								&& value.getClass().getName().startsWith(
										"java.lang")) {
							destInMap = value;
						} else {
							Object ov = null;
							if (value != null && value instanceof JAXBElement) {
								JAXBElement v = (JAXBElement) value;
								ov = XFireUtils.getValue(v);
								destInMap = copyProperties(ov,qnameURI, depth + 1);
							} else {
								destInMap = copyProperties(value,qnameURI, depth + 1);
							}
						}
						((Map) dest).put(name, destInMap);
					} catch (Exception ex) {
						ex.printStackTrace();
						System.err.println("####ERROR useing null,copy error.");
						((Map) dest).put(name, destInMap);
					}

				}
			}
		} else if (orig instanceof java.util.Collection) {
			List values = new ArrayList();
			Iterator items = ((Collection) orig).iterator();
			while (items.hasNext()) {
				Object item = items.next();
				Object copyItem = null;
				try {
					copyItem = item.getClass().newInstance();

					Object ov = null;
					if (item != null && item instanceof JAXBElement) {
						JAXBElement v = (JAXBElement) item;
						ov = XFireUtils.getValue(v);
						extendCopyPropertiesForXFire(copyItem, ov, qnameURI,depth + 1);
					} else {
						extendCopyPropertiesForXFire(copyItem, item,qnameURI, depth + 1);
					}
					values.add(copyItem);
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			dest = values;
			log(" aaareplace with java.util.Map." + dest);
		} else {
			/* if (orig is a standard JavaBean) */
			PropertyDescriptor origDescriptors[] = getPropertyUtils()
					.getPropertyDescriptors(orig);
			for (int i = 0; i < origDescriptors.length; i++) {
				String name = origDescriptors[i].getName();
				if ("class".equals(name)) {
					continue; // No point in trying to set an object's class
				}
				if (getPropertyUtils().isReadable(orig, name)
						&& getPropertyUtils().isWriteable(dest, name)) {
					try {
						Object value = getPropertyUtils().getSimpleProperty(
								orig, name);

						Object ov = null;
						if (value != null && value instanceof JAXBElement) {
							JAXBElement v = (JAXBElement) value;
							ov = XFireUtils.getValue(v);
							copyProperty(qnameURI,dest, name, ov, depth + 1);
						} else {
							copyProperty(qnameURI,dest, name, value, depth + 1);
						}

					} catch (NoSuchMethodException e) {
						// Should not happen
					}
				}
			}
		}
		log(" replace with java.util.Map." + dest);
		return dest;

	}

	/**
	 * Copy value to object's name.
	 * @param qnameURI
	 * @param bean
	 * @param name
	 * @param value
	 * @param depth
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public void copyProperty(String qnameURI, Object bean, String name, Object value, int depth)
			throws IllegalAccessException, InvocationTargetException {
		if (depth > DEPTH || value == null) {
			return;
		}
		if (value instanceof java.util.Collection) {
			List values = new ArrayList();
			Iterator items = ((Collection) value).iterator();
			while (items.hasNext()) {
				Object item = items.next();
				Object copyItem = null;
				try {
					copyItem = item.getClass().newInstance();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
				extendCopyPropertiesForXFire(copyItem, item,qnameURI, depth + 1);
				values.add(copyItem);
			}
			value = values;
			log("replace with java.util.ArrayList.");
		}
		// try {
		// if (value.getClass().getName().startsWith("cn.cetelem")) {
		// Object dest = this.copyProperties(value, depth + 1);
		// setProperty(bean, name, dest);
		// return;
		// }
		// } catch (Exception ex) {
		// ex.printStackTrace();
		// log("value=" + value);
		// }
		// log(depth + " value=" + value);
		// Trace logging (if enabled)
		if (log.isTraceEnabled()) {
			StringBuffer sb = new StringBuffer("  copyProperty(");
			sb.append(bean);
			sb.append(", ");
			sb.append(name);
			sb.append(", ");
			if (value == null) {
				sb.append("<NULL>");
			} else if (value instanceof String) {
				sb.append((String) value);
			} else if (value instanceof String[]) {
				String values[] = (String[]) value;
				sb.append('[');
				for (int i = 0; i < values.length; i++) {
					if (i > 0) {
						sb.append(',');
					}
					sb.append(values[i]);
				}
				sb.append(']');
			} else {
				sb.append(value.toString());
			}
			sb.append(')');
			log.trace(sb.toString());
		}

		// Resolve any nested expression to get the actual target bean
		Object target = bean;
		int delim = name.lastIndexOf(PropertyUtils.NESTED_DELIM);
		if (delim >= 0) {
			try {
				target = getPropertyUtils().getProperty(bean,
						name.substring(0, delim));
			} catch (NoSuchMethodException e) {
				return; // Skip this property setter
			}
			name = name.substring(delim + 1);
			if (log.isTraceEnabled()) {
				log.trace("    Target bean = " + target);
				log.trace("    Target name = " + name);
			}
		}

		// Declare local variables we will require
		String propName = null; // Simple name of target property
		Class type = null; // Java type of target property
		int index = -1; // Indexed subscript value (if any)
		String key = null; // Mapped key value (if any)

		// Calculate the target property name, index, and key values
		propName = name;
		int i = propName.indexOf(PropertyUtils.INDEXED_DELIM);
		if (i >= 0) {
			int k = propName.indexOf(PropertyUtils.INDEXED_DELIM2);
			try {
				index = Integer.parseInt(propName.substring(i + 1, k));
			} catch (NumberFormatException e) {
				;
			}
			propName = propName.substring(0, i);
		}
		int j = propName.indexOf(PropertyUtils.MAPPED_DELIM);
		if (j >= 0) {
			int k = propName.indexOf(PropertyUtils.MAPPED_DELIM2);
			try {
				key = propName.substring(j + 1, k);
			} catch (IndexOutOfBoundsException e) {
				;
			}
			propName = propName.substring(0, j);
		}
		
		// Calculate the target property type
		if (target instanceof DynaBean) {
			DynaClass dynaClass = ((DynaBean) target).getDynaClass();
			DynaProperty dynaProperty = dynaClass.getDynaProperty(propName);
			if (dynaProperty == null) {
				return; // Skip this property setter
			}
			type = dynaProperty.getType();
		} else {
			PropertyDescriptor descriptor = null;
			try {
				descriptor = getPropertyUtils().getPropertyDescriptor(target,
						name);
				if (descriptor == null) {
					return; // Skip this property setter
				}
			} catch (NoSuchMethodException e) {
				return; // Skip this property setter
			}
			type = descriptor.getPropertyType();
			if (type == null) {
				// Most likely an indexed setter on a POJB only
				if (log.isTraceEnabled()) {
					log.trace("    target type for property '" + propName
							+ "' is null, so skipping ths setter");
				}
				return;
			}
		
		}
		if (log.isTraceEnabled()) {
			log.trace("    target propName=" + propName + ", type=" + type
					+ ", index=" + index + ", key=" + key);
		}


		
		Object finalValue = null;
		// Convert the specified value to the required type and store it
		if (index >= 0) { // Destination must be indexed
			Converter converter = getConvertUtils().lookup(
					type.getComponentType());
			if (converter != null) {
				log.trace("        USING CONVERTER " + converter);
				value = converter.convert(type, value);
			}
			try {
				if(type!=null && type.getName().indexOf("JAXBElement")>-1){
					QName qn = new QName(qnameURI,propName);
					JAXBElement jaxbElement = new JAXBElement(qn, value.getClass(), value);
					finalValue = jaxbElement;
				}else{
					finalValue = value;
				}	
				getPropertyUtils().setIndexedProperty(target, propName, index,
						finalValue);
			} catch (NoSuchMethodException e) {
				throw new InvocationTargetException(e, "Cannot set " + propName);
			}
		} else if (key != null) { // Destination must be mapped
			// Maps do not know what the preferred data type is,
			// so perform no conversions at all
			try {
				if(type!=null && type.getName().indexOf("JAXBElement")>-1){
					QName qn = new QName(qnameURI,propName);
					JAXBElement jaxbElement = new JAXBElement(qn, value.getClass(), value);
					finalValue = jaxbElement;
				}else{
					finalValue = value;
				}					
				getPropertyUtils().setMappedProperty(target, propName, key,
						value);
			} catch (NoSuchMethodException e) {
				throw new InvocationTargetException(e, "Cannot set " + propName);
			}
		} else { // Destination must be simple
			Converter converter = getConvertUtils().lookup(type);
			if (converter != null) {
				log.trace("        USING CONVERTER " + converter);
				value = converter.convert(type, value);
			}
			try {
				if(type!=null && type.getName().indexOf("JAXBElement")>-1){
					QName qn = new QName(qnameURI,propName);
					JAXBElement jaxbElement = new JAXBElement(qn, value.getClass(), value);
					finalValue = jaxbElement;
				}else{
					finalValue = value;
				}				
				getPropertyUtils().setSimpleProperty(target, propName, finalValue);
			} catch (NoSuchMethodException e) {
				throw new InvocationTargetException(e, "Cannot set " + propName);
			}
		}

	}

	/**
	 * Nested copy.
	 * @param orig
	 * @param qnameURI
	 * @param depth
	 * @return
	 * @throws Exception
	 */
	public Object copyProperties(Object orig,String qnameURI, int depth) throws Exception {

		Object dest = null;
		try {
			dest = orig.getClass().newInstance();
		} catch (Exception ex) {
			return orig;
		}
		try {
			dest = ExtendsBeanUtilsBean.getInstance()
					.extendCopyPropertiesForXFire(dest, orig, qnameURI,depth);
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new Exception(ex.getMessage());
		}
		return dest;
	}

	/**
	 * log only for this class
	 * @param message
	 */
	private void log(String message) {
		if (debug) {
			System.out.println(" [DEBUG] " + message);
		}
	}

}
