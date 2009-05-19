/**
 * $Id: StringConverter.java,v 1.1 2007/10/22 01:46:23 abel Exp $
 */

package com.yesibc.core.web.support;
import org.apache.commons.beanutils.Converter;

/**
 * A format of String Converter. It is used by StrutsAction through Apache BeanUtils.
 *
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午11:54:05
 * @see Converter
 */

@SuppressWarnings("unchecked")
public final class StringConverter implements Converter {

	public StringConverter() {
	}

	public Object convert(Class type, Object value) {
		if (value == null || "".equals(value.toString())) {
			return (String) null;
		} else {
			return value.toString();
		}
	}
}

