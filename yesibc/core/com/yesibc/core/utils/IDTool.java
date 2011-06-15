package com.yesibc.core.utils;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Random;

/**
 * <p>
 * Titre :
 * </p>
 * 
 * <p>
 * Description :
 * </p>
 * 
 * <p>
 * Copyright : Copyright (c) 2005
 * </p>
 * 
 * <p>

 * </p>
 * 
 * @author not attributable
 * @version 1.0
 */
public class IDTool {

	private final static int ID_VALID = 0;
	private final static int ID_INVALID_OF_LENGTH = 1;
	private final static int ID_INVALID_OF_DIGIT = 2;
	//private final static int ID_INVALID_OF_AREA = 3;
	private final static int ID_INVALID_OF_BIRTHDAY = 4;
	//private final static int ID_INVALID_OF_SERIALNO = 5;
	private final static int ID_INVALID_OF_VALIDATIONDIGIT = 6;

	/**
	 * validate a personal Id
	 * 
	 * @param perId
	 *            String
	 * @return boolean
	 */
	public static int isValidateId(String perIdSrc) {

		if (perIdSrc == null || !(perIdSrc.length() == 15 || perIdSrc.length() == 18)) {
			return ID_INVALID_OF_LENGTH;
		}

		Date now = new Date();
		if (perIdSrc.length() == 15) {
			// 15 digits Id card
			// number validation
			try {
				Long.valueOf(perIdSrc);
			} catch (NumberFormatException ne) {
				// ne.printStackTrace();
				return ID_INVALID_OF_DIGIT;
			}

			// birthday validation
			String birthdayStr = "19" + perIdSrc.substring(6, 12);
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
			try {
				Date birthday = df.parse(birthdayStr);
				if (birthday.after(now)) {
					return ID_INVALID_OF_BIRTHDAY;
				}

				/*
				 * if (!df.format(birthday).equals(birthdayStr)) { // birthday
				 * format error,month out of index between 1 to 12 , or day out
				 * of index between 1 to 31 return ID_INVALID_OF_BIRTHDAY; }
				 */
				if (!isValidateBirthdayFormat(birthdayStr)) {
					// birthday format error,month out of index between 1 to 12
					// , or day out of index between 1 to 31
					return ID_INVALID_OF_BIRTHDAY;
				}

			} catch (ParseException ex) {
				return ID_INVALID_OF_BIRTHDAY;
			}
		}

		if (perIdSrc.length() == 18) {
			// 18 digits Id card
			// number validation
			try {
				Long.valueOf(perIdSrc.substring(0, 17));
			} catch (NumberFormatException ne) {
				// ne.printStackTrace();
				return ID_INVALID_OF_DIGIT;
			}

			// birthday validation
			String birthdayStr = perIdSrc.substring(6, 14);
			SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
			try {
				Date birthday = df.parse(birthdayStr);
				if (birthday.after(now)) {
					return ID_INVALID_OF_BIRTHDAY;
				}

				/*
				 * if (!df.format(birthday).equals(birthdayStr)) { // birthday
				 * format error,month out of index between 1 to 12 , or day out
				 * of index between 1 to 31 return ID_INVALID_OF_BIRTHDAY; }
				 */
				if (!isValidateBirthdayFormat(birthdayStr)) {
					// birthday format error,month out of index between 1 to 12
					// , or day out of index between 1 to 31
					return ID_INVALID_OF_BIRTHDAY;
				}

			} catch (ParseException ex) {
				return ID_INVALID_OF_BIRTHDAY;
			}

			// Validation Digit Validation
			String validationDigit = getValidationDigit(perIdSrc);
			if (!validationDigit.equalsIgnoreCase(perIdSrc.substring(17, 18))) {
				return ID_INVALID_OF_VALIDATIONDIGIT;
			}
		}
		return ID_VALID;
	}

	/**
	 * Id Card 15 digits convert to 18 digits
	 * 
	 * @param perIDSrc
	 *            String
	 * @return String
	 */
	public static String per15To18(String perIdSrc) {

		StringBuffer perIDNew = new StringBuffer();
		perIDNew.append(perIdSrc.substring(0, 6));
		perIDNew.append("19");
		perIDNew.append(perIdSrc.substring(6, 15));
		perIDNew.append(getValidationDigit(perIDNew.toString()));
		return perIDNew.toString();

	}

	/**
	 * Id Card 18 digits convert to 15 digits
	 * 
	 * @param perIdSrc
	 *            String
	 * @return String
	 */
	public static String per18To15(String perIdSrc) {

		StringBuffer perIDNew = new StringBuffer();
		perIDNew.append(perIdSrc.substring(0, 6));
		perIDNew.append(perIdSrc.substring(8, perIdSrc.length() - 1));
		return perIDNew.toString();

	}

	/**
	 * Get Validation Digit for 15 or 18 digits Id card
	 * 
	 * @param perIDSrc
	 *            String
	 * @return String
	 */
	public static String getValidationDigit(String perIdSrc) {

		int iS = 0;
		int[] iW = new int[] { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 };
		String lastCode = "10X98765432";
		String perID = null;
		if (perIdSrc.length() == 15) {
			StringBuffer perIDNew = new StringBuffer();
			perIDNew.append(perIdSrc.substring(0, 6));
			perIDNew.append("19");
			perIDNew.append(perIdSrc.substring(6, 15));
			perID = perIDNew.toString();
		} else if (perIdSrc.length() == 18) {
			perID = perIdSrc.substring(0, 17);
		} else if (perIdSrc.length() == 17) {
			perID = perIdSrc;
		} else {
			throw new RuntimeException("Wrong IdCard length(must 15 or 18)");
		}
		for (int i = 0; i < 17; i++) {
			iS += Integer.parseInt(perID.substring(i, i + 1)) * iW[i];
		}
		int iY = iS % 11;
		return lastCode.substring(iY, iY + 1);

	}

	/**
	 * getSex
	 * 
	 * @param perIdSrc
	 *            String
	 * @return boolean true:male false:female
	 */
	public static boolean getSex(String perIdSrc) {
		String sex = null;
		if (perIdSrc == null) {
			sex = "1";
		} else if (perIdSrc.length() == 15) {
			sex = perIdSrc.substring(14);
		} else if (perIdSrc.length() == 18) {
			sex = perIdSrc.substring(16, 17);
		} else {
			sex = "1";
		}
		return (Integer.parseInt(sex) % 2 != 0);
	}

	/**
	 * getBirthDay
	 * 
	 * @param perIdSrc
	 *            String
	 * @return String
	 */
	public static String getBirthDay(String perIdSrc) {
		if (perIdSrc == null) {
			return "";
		} else if (perIdSrc.length() == 15) {
			return "19" + perIdSrc.substring(6, 12);
		} else if (perIdSrc.length() == 18) {
			return perIdSrc.substring(6, 14);
		} else {
			return "";
		}
	}

	/**
	 * getAge
	 * 
	 * @param perIdSrc
	 *            String
	 * @return int
	 */
	public static int getAgeById(String perIdSrc) {
		String birthday = getBirthDay(perIdSrc);
		if ("".equals(birthday.trim())) {
			return 0;
		}
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		Date today = new Date();
		int now = Integer.parseInt(df.format(today));
		int age = Integer.parseInt(birthday);
		if (age > now) {
			return 0;
		} else {
			return (now - age) / 10000;
		}
	}

	/**
	 * getAge
	 * 
	 * @param birthday
	 *            String format yyyyMMdd
	 * @return int
	 */
	public static int getAgeByBirthday(String birthday) {
		if (birthday == null || "".equals(birthday.trim())) {
			return 0;
		}
		if (birthday.trim().length() != 8) {
			return 0;
		}
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		Date today = new Date();
		try {
			int now = Integer.parseInt(df.format(today));
			int age = Integer.parseInt(birthday);
			if (age > now) {
				return 0;
			} else {
				return (now - age) / 10000;
			}
		} catch (NumberFormatException ex) {
			return 0;
		}
	}

	/**
	 * validate if enter birthday is equals id's birthday
	 * 
	 * @param perIdSrc
	 *            String
	 * @param birthdaySrc
	 *            String
	 * @return boolean
	 */
	public static boolean isValidateBirthday(String perIdSrc, String birthdaySrc) {

		// Date birthDay = null;
		// Date idBirthday = null;
		if (birthdaySrc != null) {
			// birthdaySrc = birthdaySrc.replaceAll("-", "").replaceAll("/",
			// ""); jdk 1.4 over
			for (int i = 0; i < birthdaySrc.length(); i++) {
				if (birthdaySrc.charAt(i) == '-') {
					if (i == birthdaySrc.length() - 1) {
						birthdaySrc = birthdaySrc.substring(0, i);
					} else {
						birthdaySrc = birthdaySrc.substring(0, i) + birthdaySrc.substring(i + 1);
					}
				}
				if (birthdaySrc.charAt(i) == '/') {
					if (i == birthdaySrc.length() - 1) {
						birthdaySrc = birthdaySrc.substring(0, i);
					} else {
						birthdaySrc = birthdaySrc.substring(0, i) + birthdaySrc.substring(i + 1);
					}
				}

			}
		}

		if (perIdSrc != null && perIdSrc.length() == 15) {
			String birthdayStr = perIdSrc.substring(6, 12);
			if (birthdayStr.equals(birthdaySrc)) {
				return true;
			}

			// SimpleDateFormat df = new SimpleDateFormat("yyMMdd");
			// try {
			// idBirthday = df.parse(birthdayStr);
			// }
			// catch (ParseException ex) {
			// }
		}

		if (perIdSrc != null && perIdSrc.length() == 18) {
			String birthdayStr = perIdSrc.substring(6, 14);
			if (birthdayStr.equals(birthdaySrc)) {
				return true;
			}
			// SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
			// try {
			// idBirthday = df.parse(birthdayStr);
			// }
			// catch (ParseException ex) {
			// }
		}
		return false;

	}

	/**
	 * validate birthday format validation
	 * 
	 * @param birthdaySrc
	 *            String, It is in format of yyMMdd or yyyyMMdd,and year is
	 *            betten 1900 to 1999
	 * @return boolean
	 */
	public static boolean isValidateBirthdayFormat(String birthdaySrc) {
		if (birthdaySrc == null || birthdaySrc.length() == 0
				|| !(birthdaySrc.length() == 6 || birthdaySrc.length() == 8)) {
			return false;
		}
		String birthday = null;
		if (birthdaySrc.length() == 6) {
			birthday = "19" + birthdaySrc;
		} else {
			birthday = birthdaySrc;
		}

		int year = Integer.parseInt(birthday.substring(0, 4));
		int month = Integer.parseInt(birthday.substring(4, 6));
		int day = Integer.parseInt(birthday.substring(6, 8));
		boolean leapYear;
		if (month <= 0 || day <= 0 || month > 12 || day > 31) {
			return false;
		}

		if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {
			leapYear = true;
		} else {
			leapYear = false;
		}

		if (leapYear) {
			if (month == 2 && day > 29) { // leap year
				return false;
			}
		} else {
			if (month == 2 && day > 28) { // not leap year
				return false;
			}
		}
		switch (month) {
		case 1:
			if (day > 31) {
				return false;
			}
			break;
		case 3:
			if (day > 31) {
				return false;
			}
			break;
		case 4:
			if (day > 30) {
				return false;
			}
			break;
		case 5:
			if (day > 31) {
				return false;
			}
			break;
		case 6:
			if (day > 30) {
				return false;
			}
			break;
		case 7:
			if (day > 31) {
				return false;
			}
			break;
		case 8:
			if (day > 31) {
				return false;
			}
			break;
		case 9:
			if (day > 30) {
				return false;
			}
			break;
		case 10:
			if (day > 31) {
				return false;
			}
			break;
		case 11:
			if (day > 30) {
				return false;
			}
			break;
		case 12:
			if (day > 31) {
				return false;
			}
			break;
		default:
			return true;
		}

		return true;
	}

	/**
	 * getRandomPersonId get a random personid
	 * 
	 * @return String
	 */
	public static String getRandomPersonId() {

		String id;
		while (true) {
			id = getRandomId(100000, 999999, 1000, 9999, 1, 12, 1, 31, false, false);

			if (isValidateId(id) == 0) {
				break;
			}
		}
		return id;
	}

	/**
	 * getRandomPersonId get a random person id in special sex
	 * 
	 * @param sexFlag
	 *            boolean, true--> male false-->female
	 * @return String
	 */
	public static String getRandomPersonId(boolean sexFlag) {

		String id;
		while (true) {
			id = getRandomId(100000, 999999, 1000, 9999, 1, 12, 1, 31, sexFlag, true);
			if (isValidateId(id) == 0) {
				break;
			}
		}
		return id;

	}

	/**
	 * getRandomPersonId get a random person id in special year
	 * 
	 * @param minYear
	 *            int,it must between 1000 and 9999,4 digits
	 * @param maxYear
	 *            int,it must between 1000 and 9999,4 digits
	 * 
	 * @return String
	 */
	public static String getRandomPersonId(int minYear, int maxYear) {

		String id;
		while (true) {
			id = getRandomId(100000, 999999, minYear, maxYear, 1, 12, 1, 31, false, false);
			if (isValidateId(id) == 0) {
				break;
			}
		}
		return id;

	}

	/**
	 * getRandomPersonId get a random person id in special year and sex
	 * 
	 * @param minYear
	 *            int,it must between 1000 and 9999,4 digits
	 * @param maxYear
	 *            int,it must between 1000 and 9999,4 digits
	 * @param sexFlag
	 *            boolean, true--> male false-->female
	 * 
	 * @return String
	 */
	public static String getRandomPersonId(int minYear, int maxYear, boolean sexFlag) {

		String id;
		while (true) {
			id = getRandomId(100000, 999999, minYear, maxYear, 1, 12, 1, 31, sexFlag, true);
			if (isValidateId(id) == 0) {
				break;
			}
		}
		return id;

	}

	/**
	 * getRandomPersonId get a random person id in special
	 * area,year,month,day,sex rang
	 * 
	 * @param minArea
	 *            int,it must between 100000 and 999999,6 digits
	 * @param maxArea
	 *            int,it must between 100000 and 999999,6 digits
	 * @param minYear
	 *            int,it must between 1000 and 9999,4 digits
	 * @param maxYear
	 *            int,it must between 1000 and 9999,4 digits
	 * @param minMonth
	 *            int,it must between 1 and 12
	 * @param maxMonth
	 *            int,it must between 1 and 12
	 * @param minDay
	 *            int,it must between 1 and 31
	 * @param maxDay
	 *            int,it must between 1 and 31
	 * @param sexFlag
	 *            boolean, true--> male false-->female
	 * @return String
	 */
	public static String getRandomPersonId(int minArea, int maxArea, int minYear, int maxYear, int minMonth,
			int maxMonth, int minDay, int maxDay, boolean sexFlag) {

		String id;
		while (true) {
			id = getRandomId(minArea, maxArea, minYear, maxYear, minMonth, maxMonth, minDay, maxDay, sexFlag, true);
			if (isValidateId(id) == 0) {
				break;
			}
		}
		return id;

	}

	/**
	 * getRandomPersonId get a random person id in special
	 * area,year,month,day,sex rang
	 * 
	 * @param minArea
	 *            int,it must between 100000 and 999999,6 digits
	 * @param maxArea
	 *            int,it must between 100000 and 999999,6 digits
	 * @param minYear
	 *            int,it must between 1000 and 9999,4 digits
	 * @param maxYear
	 *            int,it must between 1000 and 9999,4 digits
	 * @param minMonth
	 *            int,it must between 1 and 12
	 * @param maxMonth
	 *            int,it must between 1 and 12
	 * @param minDay
	 *            int,it must between 1 and 31
	 * @param maxDay
	 *            int,it must between 1 and 31
	 * @param sexFlag
	 *            boolean, true--> male false-->female
	 * @param isSex
	 *            boolean, true:differentiate sex, false: don't differentiate
	 *            sex
	 * @return String
	 */

	public static String getRandomId(int minArea, int maxArea, int minYear, int maxYear, int minMonth, int maxMonth,
			int minDay, int maxDay, boolean sexFlag, boolean isSex) {

		if (String.valueOf(minArea).length() != 6 || String.valueOf(maxArea).length() != 6
				|| String.valueOf(minYear).length() != 4 || String.valueOf(maxYear).length() != 4
				|| (minArea > maxArea) || (minYear > maxYear) || (minMonth > maxMonth) || (minMonth < 1)
				|| (minMonth > 12) || (maxMonth < 1) || (maxMonth > 12) || (minDay > maxDay) || (minDay < 1)
				|| (minDay > 31) || (maxDay < 1) || (maxDay > 31)) {
			return "";
		}

		String id;

		String area = String.valueOf(randomInt(minArea, maxArea));

		String[] yearL = new String[] {
				String.valueOf(randomInt(Integer.parseInt(String.valueOf(minYear).substring(2)), Integer
						.parseInt(String.valueOf(maxYear).substring(2)))), String.valueOf(randomInt(minYear, maxYear)) };
		String year = yearL[randomInt(0, 1)];

		String month = String.valueOf(randomInt(minMonth, maxMonth));
		if (month.length() < 2) {
			month = "0" + month;
		}

		String day = String.valueOf(randomInt(minDay, maxDay));
		if (day.length() < 2) {
			day = "0" + day;
		}

		if (isSex) {
			String serial = String.valueOf(randomInt(00, 99));
			int n = serial.length();
			if (n < 2) {
				for (int i = n; i < 2; i++) {
					serial += "0";
				}
			}
			int sex = 0;
			boolean flag = true;
			while (flag) {
				sex = randomInt(0, 9);
				if (sexFlag) {
					if (sex % 2 != 0) {
						break;
					}
				} else {
					if (sex % 2 == 0) {
						break;
					}
				}
			}
			id = area + year + month + day + serial + String.valueOf(sex);
		} else {
			String serial = String.valueOf(randomInt(000, 999));
			int n = serial.length();
			if (n < 3) {
				for (int i = n; i < 3; i++) {
					serial += "0";
				}
			}
			id = area + year + month + day + serial;
		}

		if (id.length() != 15) {
			id = id + getValidationDigit(id + "0");
		}

		return id;

	}

	/**
	 * randomInt get random int between min and max
	 * 
	 * @param min
	 *            int
	 * @param max
	 *            int
	 * @return int
	 */
	public static int randomInt(int min, int max) {

		Random ran = new Random();
		int result = 0;

		if (min < 0) {
			min = -min;
		}
		if (max < 0) {
			max = -max;
		}
		if (min == max) {
			return max;
		}
		if (min > max) {
			result = min;
			min = max;
			max = result;
		}

		result = ran.nextInt(max + 1);
		if (result < min) {
			result = min + ran.nextInt(max + 1 - min);
		}

		return result;
	}

	public static void main(String[] args) {

		// System.out.println(IDTool.per15To18("420281810605421"));
		// System.out.println(IDTool.per18To15("420281198106054212"));
		//
		// System.out.println("Validation Digit :" +
		//
		// IDTool.getValidationDigit("420281198106054212"));
		// System.out.println("Validation Digit :" +
		//
		// IDTool.getValidationDigit("420281810605421"));
		//
		// System.out.println(isValidateId("433122196301192239"));
		// System.out.println(isValidateId("420281198106054212"));
		//
		// System.out.println(isValidateBirthdayFormat("19810605"));
		// System.out.println(isValidateBirthdayFormat("810605"));
		//
		// System.out.println(getSex("320116640412948"));
		//
		// System.out.println(getAgeById("320116880929948"));
		// System.out.println(getAgeByBirthday("19810605"));
		//
		String s = "";
		int j = 0;
		for (int i = 0;; i++) {
			s = getRandomPersonId(1946,1950);
			if (s.indexOf("X") > -1 || s.indexOf("x") > -1) {
				j++;
				System.out.println(s);
			}
			if(j>3){
				break;
			}
		}
		// System.out.println(getRandomPersonId(123456,654321,1989,1999,5,9,2,15,true));

	}

}
