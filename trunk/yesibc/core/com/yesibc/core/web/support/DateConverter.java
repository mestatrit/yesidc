/**
 * $Id: DateConverter.java,v 1.1 2007/10/22 01:46:23 abel Exp $
 */

package com.yesibc.core.web.support;

import java.text.SimpleDateFormat;

import org.apache.commons.beanutils.Converter;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * A format of Date Converter. It is used by StrutsAction through Apache BeanUtils.
 * The default date format is "yyyy-MM-dd". The format can be changed by the method of Constructor.
 *
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午11:54:05
 * @see Converter
 */
@SuppressWarnings("unchecked")
public class DateConverter implements Converter {
	private static final Log log = LogFactory.getLog(DateConverter.class);

	private SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

	public DateConverter(String formatPattern) {
		if (StringUtils.isNotBlank(formatPattern)) {
			format = new SimpleDateFormat(formatPattern);
		}
	}

	public Object convert(Class arg0, Object value) {
		try {
			String dateStr = (String) value;

			if (StringUtils.isNotBlank(dateStr)) {
				return format.parse(dateStr);
			}
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
		return null;
	}

}
