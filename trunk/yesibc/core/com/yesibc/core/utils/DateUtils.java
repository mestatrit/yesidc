/**
 * $Id: DateUtils.java,v 1.7 2009/02/16 09:07:59 abel Exp $
 */

package com.yesibc.core.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.CoreUtils;

/**
 * @author David.Ye create time: 2006-7-10 14:30:37
 */
public class DateUtils {

	public static final String FULL_YMD = "yyyyMMdd HHmmss";

	private static Log log = LogFactory.getLog(DateUtils.class);

	public static final String FULL_YMD_LINE = "yyyy-MM-dd HH:mm:ss";

	public static final String FULL_YMD_SOLIDUS = "yyyy/MM/dd HH:mm:ss";

	public static final String FULL_YMD_SPACER = "yyyy MM dd HH:mm:ss";

	public static final String DAY_YMD_LINE = "yyyy-MM-dd";

	public static final String DAY_YMD_SOLIDUS = "yyyy/MM/dd";

	public static final String DAY_YMD_SPACER = "yyyy MM dd";

	public static final String DAY_YMD = "yyyyMMdd";

	public static final String FULL_YMDM_LINE = "yyyy-MM-dd HH:mm:ss.SSS";

	public static final String FULL_SECOND_LINE = "yyyy-MM-dd HH:mm:ss";

	public static final String YMD_CN = "yyyy" + CoreUtils.getValByKey("year") + "MM" + CoreUtils.getValByKey("month")
			+ "dd" + CoreUtils.getValByKey("day");

	/**
	 * date add
	 * 
	 * @param date1
	 * @param mins
	 * @param format1
	 *            (yyyy-MM-dd HH:mm:ss)
	 * @return
	 */
	public static String dateAddMin(Date date1, String mins, String format1) {
		String resultDate = "";
		long ldate1 = (long) date1.getTime();
		int iMins = Integer.parseInt(mins);
		ldate1 = ldate1 + iMins * 60 * 1000;
		Date tempDate = new Date(ldate1);
		SimpleDateFormat sFormat = new SimpleDateFormat(format1);
		resultDate = sFormat.format(tempDate);
		if (resultDate == null) {
			resultDate = "";
		}
		return resultDate;

	}

	/**
	 * Days between two date.
	 * 
	 * @param date1
	 * @param date2
	 * @return
	 */
	public static long substractDate(Date date1, Date date2) {
		long day = (date1.getTime() - date2.getTime()) / (24 * 60 * 60 * 1000) > 0 ? (date1.getTime() - date2.getTime())
				/ (24 * 60 * 60 * 1000)
				: (date2.getTime() - date1.getTime()) / (24 * 60 * 60 * 1000);
		return day;
	}

	/**
	 * date add year.
	 * 
	 * @param date1
	 * @param year
	 * @return
	 */
	public static Date dateToAddyears(Date date1, int year) {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.YEAR, year);
		return c.getTime();
	}

	/**
	 * Return current Year
	 * 
	 * @return String
	 */
	public static String getCurrentYear() {
		Calendar c = Calendar.getInstance();
		return String.valueOf(c.get(Calendar.YEAR));
	}

	/**
	 * Return current Year
	 * 
	 * @return int
	 */
	public static int getCurrentYearInt() {
		Calendar c = Calendar.getInstance();
		return c.get(Calendar.YEAR);
	}

	/**
	 * Return current month
	 * 
	 * @return
	 */
	public static String getCurrentWeek() {
		Calendar c = Calendar.getInstance();
		return String.valueOf(c.get(Calendar.WEEK_OF_YEAR) + 1);
	}

	/**
	 * Return current month
	 * 
	 * @return
	 */
	public static String getCurrentMonth() {
		Calendar c = Calendar.getInstance();
		return String.valueOf(c.get(Calendar.MONTH) + 1);
	}

	/**
	 * Return date at lowest time on that day.
	 * 
	 * @return String
	 */
	public static Date getDateStart(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.set(Calendar.HOUR_OF_DAY, 0);
		c.set(Calendar.MINUTE, 0);
		c.set(Calendar.SECOND, 0);
		c.set(Calendar.MILLISECOND, 0);
		return c.getTime();
	}

	/**
	 * Return date at highest time on that day.
	 * 
	 * @return String
	 */
	public static Date getDateEnd(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.set(Calendar.HOUR, 23);
		c.set(Calendar.MINUTE, 59);
		c.set(Calendar.MINUTE, 59);
		c.set(Calendar.MILLISECOND, 999);
		return c.getTime();
	}

	public static Date getNextDay(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(Calendar.DATE, i);

		return gc.getTime();
	}

	/**
	 * Return current day
	 * 
	 * @return String
	 */
	public static String getCurrentDay() {
		Calendar c = Calendar.getInstance();
		return String.valueOf(c.get(Calendar.DAY_OF_MONTH));
	}

	/**
	 * Return day
	 * 
	 * @return int
	 */
	public static int getDaysOfMonth(Date d) {
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		return c.get(Calendar.DAY_OF_MONTH);
	}

	public static Date getNextMonth(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(Calendar.MONTH, i);

		return gc.getTime();
	}

	public static Date getNextHour(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(Calendar.HOUR, i);

		return gc.getTime();
	}

	public static Date getNextYear(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.add(Calendar.YEAR, i);

		return gc.getTime();
	}

	public static Date setMonth(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.set(Calendar.MONTH, i);
		return gc.getTime();
	}

	public static Date setHour(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.set(Calendar.HOUR_OF_DAY, i);
		return gc.getTime();
	}

	public static Date setYear(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.set(Calendar.YEAR, i);
		return gc.getTime();
	}

	public static Date setDay(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.set(Calendar.DAY_OF_MONTH, i);
		return gc.getTime();
	}

	public static Date setMinute(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.set(Calendar.MINUTE, i);
		return gc.getTime();
	}

	public static Date setSecond(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.set(Calendar.SECOND, i);
		return gc.getTime();
	}

	public static Date setMILLISECOND(Date date, int i) {
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc.set(Calendar.MILLISECOND, i);
		return gc.getTime();
	}

	/**
	 * Return Hours
	 * 
	 * @return int
	 */
	public static int getHoursOfDay(Date d) {
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		return c.get(Calendar.HOUR_OF_DAY);
	}

	/**
	 * Return YEAR
	 * 
	 * @return int
	 */
	public static int getYears(Date d) {
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		return c.get(Calendar.YEAR);
	}

	/**
	 * Return YEAR
	 * 
	 * @return int
	 */
	public static int getMonths(Date d) {
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		return c.get(Calendar.MONTH);
	}

	/**
	 * Return MINUTE
	 * 
	 * @return int
	 */
	public static int getMinutes(Date d) {
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		return c.get(Calendar.MINUTE);
	}

	/**
	 * Return SECOND
	 * 
	 * @return int
	 */
	public static int getSeconds(Date d) {
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		return c.get(Calendar.SECOND);
	}

	/**
	 * Return MILLISECOND
	 * 
	 * @return int
	 */
	public static int getMilliSeconds(Date d) {
		Calendar c = Calendar.getInstance();
		c.setTime(d);
		return c.get(Calendar.MILLISECOND);
	}

	/**
	 * Return current hour
	 * 
	 * @return
	 */
	public static String getCurrentHour() {
		Calendar c = Calendar.getInstance();
		return String.valueOf(c.get(Calendar.HOUR_OF_DAY));
	}

	/**
	 * Return current minute
	 * 
	 * @return
	 */
	public static String getCurrentMin() {
		Calendar c = Calendar.getInstance();
		return String.valueOf(c.get(Calendar.MINUTE));
	}

	/**
	 * Return current second
	 * 
	 * @return
	 */
	public static String getCurrentSec() {
		Calendar c = Calendar.getInstance();
		return String.valueOf(c.get(Calendar.SECOND));
	}

	/**
	 * convert date to pattern String
	 * 
	 * @param date
	 * @return
	 */
	public static String dateToString(Date date, String pattern) {
		try {
			if (date == null) {
				return null;
			}
			SimpleDateFormat dateFormat = new SimpleDateFormat(pattern);
			return dateFormat.format(date);
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	/**
	 * This method generates a string representation of a date/time in the
	 * format you specify on input
	 * 
	 * @param pattern
	 *            the date pattern the string is in
	 * @param strDate
	 *            a string representation of a date
	 * @return a converted Date object
	 * @see java.text.SimpleDateFormat
	 * @throws ParseException
	 */
	public static final Date stringToDate(String strDate, String pattern) throws ParseException {
		SimpleDateFormat df = null;
		Date date = null;
		df = new SimpleDateFormat(pattern);

		if (log.isDebugEnabled()) {
			log.debug("converting '" + strDate + "' to date with mask '" + pattern + "'");
		}

		try {
			date = df.parse(strDate);
		} catch (ParseException pe) {
			log.error("ParseException: " + pe);
			throw new ParseException(pe.getMessage(), pe.getErrorOffset());
		}

		return (date);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		Calendar c = Calendar.getInstance();
		// c.set(Calendar.HOUR_OF_DAY, 17);
		// c.set(Calendar.MINUTE, 0);
		// c.set(Calendar.SECOND, 0);
		// c.set(Calendar.MILLISECOND, 0);

		System.out.println(getNextHour(c.getTime(), 1));
		System.out.println(getNextMonth(c.getTime(), 1));
		System.out.println(getYears(c.getTime()));
		System.out.println(getMonths(c.getTime()));
		System.out.println(getDaysOfMonth(c.getTime()));
		System.out.println(getHoursOfDay(c.getTime()));
		System.out.println(getMinutes(c.getTime()));
		System.out.println(getSeconds(c.getTime()));
		System.out.println(getMilliSeconds(c.getTime()));

		System.out.println(dateToString(c.getTime(), FULL_SECOND_LINE));

		System.out.println(getCurrentWeek());

		c.set(Calendar.YEAR, 2009);
		c.set(Calendar.MONTH, 0);
		c.set(Calendar.DAY_OF_MONTH, 1);
		c.set(Calendar.HOUR_OF_DAY, 0);

		System.out.println(c.toString());
		System.out.println(c.get(Calendar.WEEK_OF_YEAR));

		Date today = new Date();
		Date today1 = new Date();

		Date date = DateUtils.getDateStart(today);
		Date date1 = DateUtils.getDateStart(today);

		System.out.println(today1);
		System.out.println(date.equals(date1));
		System.out.println(today.after(date));
		System.out.println(today.before(date));
		System.out.println(!today.before(date));

		System.out.println(dateToString(date, FULL_YMDM_LINE));

	}
}
