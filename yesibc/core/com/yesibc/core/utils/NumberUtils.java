/**
 * $Id: NumberUtils.java,v 1.4 2009/01/05 09:51:07 abel Exp $
 */

package com.yesibc.core.utils;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.yesibc.core.exception.ApplicationException;

/**
 * Calculate with high resolution.
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午11:02:42
 */
public class NumberUtils {
	/**
	 * Change numeric string to int.
	 * 
	 * @param str
	 * 
	 * @return int
	 */

	public static int parseInt(String str) {
		try {

			if (StringUtils.isInt(str)) {
				str = str.trim();
				return Integer.parseInt(str);
			} else {
				return 0;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
			return 0;
		}
	}

	/**
	 * 字符串分割符号
	 */
	public static final String SEPARATOR = ",";

	private NumberUtils() {

	}

	/**
	 * addition.
	 * 
	 * @param l1
	 * @param l2
	 * @return Long
	 */
	public static Long addByLong(Long l1, Long l2) {
		if (l2 == null) {
			l2 = new Long(0);
		}
		if (l1 == null) {
			l1 = new Long(0);
		}
		BigDecimal b1 = new BigDecimal(l1.longValue());
		BigDecimal b2 = new BigDecimal(l2.longValue());
		return b1.add(b2).longValue();
	}

	/**
	 * addition.
	 * 
	 * @param v1
	 * @param v2
	 * @return double
	 */
	public static double add(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.add(b2).doubleValue();
	}

	/**
	 * subtraction
	 * 
	 * @param v1
	 * @param v2
	 * @return double
	 */
	public static double subtract(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(Double.toString(v1));
		BigDecimal b2 = new BigDecimal(Double.toString(v2));
		return b1.subtract(b2).doubleValue();
	}

	/**
	 * multiplication.
	 * 
	 * @param v1
	 * @param v2
	 * @return double
	 */
	public static double multiply(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.multiply(b2).doubleValue();
	}

	/**
	 * multiplication.
	 * 
	 * @param v1
	 * @param v2
	 * @return double
	 */
	public static double multiply(Double v1, Double v2) {
		BigDecimal b1 = new BigDecimal(v1.toString());
		BigDecimal b2 = new BigDecimal(v2.toString());
		return b1.multiply(b2).doubleValue();
	}

	/**
	 * multiplication.Provide scale.
	 * 
	 * @param scale
	 *            double
	 * @return double
	 */
	public static double multiply(double v1, double v2, int scale) {
		if (scale < 0) {
			throw new IllegalArgumentException("The scale must be a positive integer or zero");
		}
		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.multiply(b2).setScale(scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}

	/**
	 * multiplication.Provide scale.
	 * 
	 * @param scale
	 *            double
	 * @return double
	 */
	public static double multiply(Double v1, Double v2, int scale) {
		if (scale < 0) {
			throw new IllegalArgumentException("The scale must be a positive integer or zero");
		}
		BigDecimal b1 = new BigDecimal(v1.toString());
		BigDecimal b2 = new BigDecimal(v2.toString());
		return b1.multiply(b2).setScale(scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}

	/**
	 * division.
	 * 
	 * @return double
	 * 
	 * @see #divide(double, double, int)
	 */
	public static double divide(double v1, double v2) {
		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.divide(b2).doubleValue();
	}

	/**
	 * division.Provide scale.
	 * 
	 * @param v1
	 *            dividend
	 * @param v2
	 *            divisor
	 * @param scale
	 * @return double
	 */
	public static double divide(double v1, double v2, int scale) {
		if (scale < 0) {
			throw new IllegalArgumentException("The scale must be a positive integer or zero");
		}

		BigDecimal b1 = new BigDecimal(v1);
		BigDecimal b2 = new BigDecimal(v2);
		return b1.divide(b2, scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}

	/**
	 * Round by scale.
	 * 
	 * @param v
	 *            input number
	 * @param scale
	 * @return double
	 */
	public static double round(double v, int scale) {
		if (scale < 0) {
			throw new IllegalArgumentException("The scale must be a positive integer or zero");
		}
		BigDecimal b = new BigDecimal(v);
		return b.setScale(scale, BigDecimal.ROUND_HALF_UP).doubleValue();
	}

	/**
	 * Change string to int. For example:034-->34,23.3--->23,0023.4--23
	 * 
	 * @param str1
	 * 
	 * @return int
	 * @throws ApplicationException
	 */
	public static int getNumToInt(String str) throws ApplicationException {
		try {
			return Integer.parseInt(str);
		} catch (Exception ex) {
			throw new ApplicationException("|" + str + "| parse error! ", ex);
		}
	}

	/**
	 * 把一个带分割符的字串转换成 Long[] 数组，并以 asc 排序
	 * 
	 * @param String
	 * @return Long[]
	 */
	public static Long[] phaseArraysToLong(String arrays) {
		String temp;
		List<String> list = new ArrayList<String>();
		while (arrays.length() > 0 && arrays.indexOf(SEPARATOR) > 0) {
			temp = arrays.substring(0, arrays.indexOf(SEPARATOR));
			arrays = arrays.substring(arrays.indexOf(SEPARATOR) + 1, arrays.lastIndexOf(SEPARATOR) + 1);
			list.add(temp);
		}
		Long[] ids = new Long[list.size()];
		for (int i = 0; i < list.size(); i++) {
			ids[i] = Long.valueOf(list.get(i));
		}
		Arrays.sort(ids);
		return ids;
	}

	/**
	 * 函数名：trimDecimal()<br>
	 * 功能：去掉表示数字的字串小数点后面的部分，<br>
	 * 只保留小数点前面的部分
	 * 
	 * @param String
	 * @return String
	 */
	public static String trimDecimal(String numStr) {
		if (numStr.indexOf(".") < 0) {
			return numStr.trim();
		}
		return numStr.substring(0, numStr.indexOf("."));
	}

	public static void main(String[] args) {
		Long l1 = new Long(599999999);
		Long l2 = new Long(66666);

		System.out.println(addByLong(l1, l2));
		System.out.println(divide(1000, 11, 5));
		
		DecimalFormat df = new DecimalFormat("###.00");  
		System.out.println(df.format((double)294554848.0/1024)); 
		System.out.println(df.format(294554848/1024)); 
		
	}
}
