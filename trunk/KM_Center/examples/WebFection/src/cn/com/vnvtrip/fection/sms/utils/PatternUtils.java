package cn.com.vnvtrip.fection.sms.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 
 * @author longgangbai
 * 
 */
public class PatternUtils {

	public static PatternUtils p = null;

	private PatternUtils() {

	}

	/**
	 * 
	 * @return
	 */
	public static PatternUtils getInstance() {
		if (p == null) {
			p = new PatternUtils();
		}
		return p;
	}

	/**
	 * 
	 * @return
	 */
	public static boolean checkMobile(String mobile) {
		return checkRegex(mobile, "^1[3,5]{1}[0-9]{1}[0-9]{8}$");
	}

	/**
	 * 
	 * @return
	 */
	public static boolean checkHttpUrl(String mobile) {
		String strRegex = "^(?<!=http://)([\\w-]+\\.)+[\\w-]+(/[\\w-\\./?%=]*)?";
		return checkRegex(mobile, strRegex);
	}

	/**
	 * 
	 * @param str
	 * @param regex
	 * @return
	 */
	private static boolean checkRegex(String str, String regex) {
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(str);
		return matcher.matches();
	}

}
