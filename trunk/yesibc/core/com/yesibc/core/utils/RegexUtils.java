package com.yesibc.core.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexUtils {

	/**
	 * Check whether string matches regex.
	 * 
	 * @param checkString
	 * @param regexStr
	 * @return boolean
	 */
	public static boolean regexCheck(String checkString, String regexStr) {
		Pattern pattern = Pattern.compile(regexStr);
		Matcher matcher = pattern.matcher(checkString);
		return matcher.find();
	}

	/**
	 * Check whether string matches regex.
	 * 
	 * @param checkString
	 * @param regexStr
	 * @return boolean
	 */
	public static boolean regexCheck(Pattern pattern, String str) {
		Matcher matcher = pattern.matcher(str);
		return matcher.find();
	}

}
