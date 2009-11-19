/**
 * $Id: StringUtils.java,v 1.15 2009/02/05 08:46:02 abel Exp $
 */

package com.yesibc.core.utils;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.ArrayUtils;

/**
 * Common operation with String.
 * <p/>
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午11:02:42
 */
@SuppressWarnings("unchecked")
public final class StringUtils {

	public static String[] SPECIAL_CHAR_ARRAY = { ".", "*", "+", "|", "(", ")",
			"[" };

	/**
	 * The constants is used to number change.
	 */
	public static String[] STANDARD_STR = { "分", "角", "", "", "拾", "佰", "仟",
			"萬", "拾", "佰", "仟", "億", "拾", "佰", "仟", "萬", "拾", "佰", "仟", "億",
			"拾", "佰" };

	public static String[] NUMBER_STR = { "元", "零", "壹", "貳", "叁", "肆", "伍",
			"陆", "柒", "捌", "玖" };

	public static String[] KEY_STR = { "零拾", "零佰", "零仟", "零零零", "零零", "零角零分",
			"零分", "零角", "零億零萬零元", "億零萬零元", "零億零萬", "零萬零元", "萬零元", "零億", "零萬",
			"零元", "零零" };

	public static String[] MAP_STR = { "零", "零", "零", "零", "零", "正", "正", "零",
			"億元", "億元", "億", "萬元", "萬元", "億", "萬", "元", "零" };

	public static double MAX_VALUE = Long.MAX_VALUE / 100.0;

	public static double MIN_VALUE = Long.MIN_VALUE / 100.0;

	public static final String BLANK = "";

	/**
	 * Change chinese numbers to Arabic numerals
	 * 
	 * @param C
	 *            chinese numbers
	 * @return Arabic numerals
	 */
	public static String CToN(String C) {
		if (C == null) {
			return "";
		}
		String result = "";
		String cStr = "Ｏ○ｏ０１２３４５６７８９一二三四五六七八九oO";
		String nStr = "000012345678912345678900";
		char temp;
		for (int i = 0; i < C.length(); i++) {
			temp = C.charAt(i);
			if (cStr.indexOf(String.valueOf(temp)) >= 0) {
				result = result
						+ String.valueOf(nStr.charAt(cStr.indexOf(String
								.valueOf(temp))));
			} else if (String.valueOf(temp).equals("十")) {
				if (i >= C.length() - 1
						|| cStr.indexOf(String.valueOf(C.charAt(i + 1))) < 0) {
					result += "0";
				}
				if (i == 0 || cStr.indexOf(String.valueOf(C.charAt(i - 1))) < 0) {
					result += "1";
				}
			} else {
				result += temp;
			}
		}
		return result;
	}

	/**
	 * Change Arabic numerals to chinese numbers
	 * 
	 * @param N
	 *            Arabic numerals
	 * @return chinese numbers
	 */
	public static String NToC(String N) {
		if (N == null) {
			return "";
		}
		String result = "";
		String cStr = "一二三四五六七八九十零";
		String nStr = "12345678900";
		char temp;
		for (int i = 0; i < N.length(); i++) {
			temp = N.charAt(i);
			if (nStr.indexOf(String.valueOf(temp)) >= 0) {
				result = result
						+ String.valueOf(cStr.charAt(nStr.indexOf(String
								.valueOf(temp))));
			} else {
				result += temp;
			}
		}
		return result;
	}

	/**
	 * delete chinese blank from str
	 * 
	 * @param str
	 *            String
	 * @return String
	 */
	public static String delCNBlank(String str) {
		if (str == null) {
			return "";
		}
		StringBuffer strBuf = new StringBuffer();
		str = str.trim();
		for (int i = 0; i < str.length(); i++) {
			if ("　".equals(String.valueOf(str.charAt(i)))) { // chinese blank
				strBuf.append(" "); // English blank
			}
			if (!"　".equals(String.valueOf(str.charAt(i)))) { // chinese blank
				strBuf.append(str.charAt(i));
			}
		}
		return strBuf.toString();
	}

	/**
	 * If input string is null or "null",return blank.
	 * 
	 * @param s1
	 *            input string
	 * @return "" or input string.
	 */
	public static String nullToSpaceNoTrim(String s1) {

		if (s1 == null || s1.equals("null")) {
			return "";
		}
		return s1;
	}

	/**
	 * If input string is null or "null",return blank.
	 * 
	 * @param s1
	 *            input string
	 * @return "" or input string.
	 */
	public static String nullToSpaceTrim(String s1) {

		if (s1 == null || s1.equals("null")) {
			return "";
		}
		return s1.trim();
	}

	/**
	 * If input string is null or "null",return blank.
	 * 
	 * @param s1
	 *            input string
	 * @return "" or input string.
	 */
	public static String trim2Empty(String s1) {

		if (s1 == null || s1.equals("null")) {
			return "";
		} else {
			s1 = s1.trim();
		}
		return s1;
	}

	/**
	 * If input string is null or space,return blank.
	 * 
	 * @param s1
	 *            input string
	 * @return "" or input string.
	 */
	public static boolean isEmpty(String s1) {

		if (s1 == null || "".equals(s1.trim())) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * Change null or blank to zero
	 * 
	 * @param s1
	 * 
	 * @return "0" or string
	 */
	public static String nullToZero(String s1) {
		if (s1 == null || s1.equals("")) {
			return "0";
		}
		return s1.trim();
	}

	/**
	 * If is not a number,change to "0".
	 * 
	 * @param s1
	 * @return
	 */
	public static long StringTolong(String s1) {
		if (isNums(s1)) {
			return Long.parseLong(s1);
		}
		return Long.parseLong("0");
	}

	/**
	 * change string to long
	 * 
	 * @param s1
	 * @return
	 */
	public static long stringTolong(String s1) {
		if (isNums(s1)) {
			if (s1.indexOf(".") > -1) {
				s1 = s1.substring(0, s1.indexOf("."));
			}
			return Long.parseLong(s1);
		}
		return Long.parseLong("0");
	}

	/**
	 * Change " to “
	 * 
	 * @param str
	 * 
	 * @return String
	 */
	public static String forTuiJianCard(String str) {
		String chrs = "";
		try {
			int l = str.length();
			for (int i = 0; i < l; i++) {
				char chr = str.charAt(i);
				switch (chr) {
				case '"':
					chrs = chrs + "“";
					break;
				case '\\':
					chrs = chrs + "\\\\";
					break;

				default:
					chrs = chrs + chr;
				}
			}

		} catch (Exception ex) {
			return null;
		}
		str = chrs;
		return chrs;
	}

	/**
	 * Change to html
	 * 
	 * @param str
	 * 
	 * @return
	 */
	public static String toHtml(String str) {
		String chrs = "";
		try {
			int l = str.length();
			for (int i = 0; i < l; i++) {
				char chr = str.charAt(i);
				switch (chr) {
				case '<':
					chrs = chrs + "&lt;";
					break;
				case '>':
					chrs = chrs + "&gt;";
					break;
				case '"':
					chrs = chrs + "&quot;";
					break;
				default:
					chrs = chrs + chr;
				}
			}

		} catch (Exception ex) {
			return null;
		}
		str = chrs;
		return chrs;
	}

	/**
	 * Change String array to int array.
	 * 
	 * @param strArray
	 * 
	 * @return int array.
	 */
	public int[] strArray2IntArray(String[] strArray) {
		if (strArray == null) {
			return null;
		}
		int[] intArray = new int[strArray.length];
		try {
			for (int i = 0; i < strArray.length; i++) {
				intArray[i] = Integer.parseInt(strArray[i]);
			}
		} catch (Exception ex) {
			System.out.println(ex.toString());
		}
		return intArray;
	}

	/**
	 * Change array to string
	 * 
	 * @param array1
	 * 
	 * @return string that split with "'"
	 */
	public static String arrayToStr(String[] array1) {
		String sResult = "";
		if (array1 == null) {
			return sResult;
		}
		for (int i = 0; i < array1.length; i++) {
			if ("".equals(sResult)) {
				sResult = array1[i];
			} else {
				sResult += "," + array1[i];
			}
		}
		return sResult;
	}

	/**
	 * Change array to string with split Char
	 * 
	 * @param array1
	 * 
	 * @param splitChar
	 * 
	 * @return
	 */
	public static String arrayToStr(String[] array1, String splitChar) {
		String sResult = "";
		if (array1 == null) {
			return sResult;
		}
		for (int i = 0; i < array1.length; i++) {
			if ("".equals(sResult)) {
				sResult = array1[i];
			} else {
				sResult += splitChar + array1[i];
			}
		}
		return sResult;
	}

	/**
	 * Change int array to string .
	 * 
	 * @param array1
	 * 
	 * @return
	 */
	public static String arrayToStr(int[] array1) {
		return arrayToStr(array1, ",");
	}

	/**
	 * Change int array to string with split Char.
	 * 
	 * @param array1
	 * 
	 * @param splitChar
	 * 
	 * @return
	 */
	public static String arrayToStr(int[] array1, String splitChar) {
		String sResult = "";
		if (array1 == null) {
			return sResult;
		}
		for (int i = 0; i < array1.length; i++) {
			if ("".equals(sResult)) {
				sResult = String.valueOf(array1[i]);
			} else {
				sResult += splitChar + String.valueOf(array1[i]);
			}
		}
		return sResult;
	}

	/**
	 * Change Long array to string.
	 * 
	 * @param Long
	 *            []
	 * @return String
	 */
	public static String arrayToStr(Long[] ids, String splitChar) {
		StringBuffer buff = new StringBuffer("");
		if (ids == null) {
			return "";
		}
		for (int i = 0; i < ids.length; i++) {
			buff.append(String.valueOf(ids[i])).append(splitChar);
		}
		return buff.toString();
	}

	/**
	 * Get number from string.
	 * 
	 * @param str
	 * @return string
	 */
	public static String getNum(String str) {
		try {
			if (str == null || (str.trim()).length() < 1) {
				return "";
			}
			String temp = "0123456789";
			String tempString = "";
			String string = "";
			for (int i = 0; i < str.length(); i++) {
				tempString = str.substring(i, i + 1);
				if (temp.indexOf(tempString) > -1) {
					string += tempString;
				}
			}
			return string;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "";
		}
	}

	/**
	 * Get count of split char from string.
	 * 
	 * @param sList
	 * 
	 * @param splitChar
	 * 
	 * @return int
	 */
	public static int getCharNum(String sList, String splitChar) {
		if (sList == null || sList.equals("") || splitChar == null
				|| splitChar.equals("")) {
			return -1;
		}
		int StringAtLocal = sList.indexOf(splitChar);
		int StartLocal = 0;
		int iCount = 0;
		while (StringAtLocal >= 0) {
			StartLocal = StringAtLocal + splitChar.length();
			StringAtLocal = sList.indexOf(splitChar, StartLocal);
			iCount++;
		}
		return iCount;
	}

	/**
	 * Judge whether a char is between form 0 to 9.
	 * 
	 * @param cCheck
	 * 
	 * @see isNums
	 * @return true or false
	 */
	public static boolean isDigit(char cCheck) {
		return (('0' <= cCheck) && (cCheck <= '9'));
	}

	/**
	 * 函数名称：getNumToInt 函数功能：把一个字符串的前length位加值（inscrease）
	 * 
	 * @param str1
	 *            数字字符串
	 * @param length
	 *            设定字符串的长度
	 * @param inscrease
	 *            转换成数字後的增加值
	 * @exception IsDigit
	 *                返回"-1"
	 * @return 则返回字符串，否则返回-1
	 */
	public static String getChangeFormatString(String str1, int length,
			int increase) {
		try {
			if (length < 1) {
				return str1;
			}
			if (str1 == null) {
				str1 = "";
			}
			if (str1.length() > length) {
				return str1;
			}
			int maxNum = NumberUtils.getNumToInt(str1);
			if (maxNum == -1) {
				return str1;
			}
			maxNum += increase;
			if (maxNum <= 0) {
				return str1;
			}
			String retStr = String.valueOf(maxNum);
			for (int i = 0; i < length - String.valueOf(maxNum).length(); i++) {
				retStr = "0" + retStr;
			}
			if (str1.length() > length) {
				retStr += str1.substring(length, str1.length());
			}
			return retStr;
		} catch (Exception ex) {
			ex.printStackTrace();
			return "";
		}
	}

	/**
	 * Replace blanks or newline tags with certain characters.
	 * 
	 * @return String
	 */
	public static String returnToBr(String s) {
		if (s == null || s.equals("")) {
			return s;
		}
		StringBuffer stringbuffer = new StringBuffer();
		for (int i = 0; i < s.length(); i++) {
			if (s.charAt(i) == '\n') {
				stringbuffer = stringbuffer.append("<br>");
			} else if (s.charAt(i) == '\r') {
				stringbuffer = stringbuffer.append("&nbsp;");
			} else if (s.charAt(i) == ' ') {
				stringbuffer = stringbuffer.append("&nbsp;");
			} else {
				stringbuffer.append(s.substring(i, i + 1));

			}
		}
		String s1 = stringbuffer.toString();
		return s1;
	}

	/**
	 * Remove the blanks from double end of string.
	 * 
	 * @param str
	 * @return String
	 */
	public static String trim(String str) {
		if (str == null) {
			return null;
		}
		str = str.trim();
		if (str == null) {
			return null;
		}
		return str;
	}

	/**
	 * Change string to Chinese character set.
	 * 
	 * @param str
	 * @return
	 */
	public static String CS2(String str) {
		try {
			if (str == null) {
				return null;
			}
			str = str.trim();
			if (str == null) {
				return null;
			}
			str = new String(str.getBytes("8859_1"), "GBK");
		} catch (Exception e) {
			System.out.println(e);
		}
		return str;
	}

	/**
	 * Change string's character set from one to another.
	 * 
	 * @param str
	 * @param srcCharset
	 * @param ObjCharset
	 * @return String
	 */
	public static String charsetChange(String str, String srcCharset,
			String ObjCharset) {
		try {
			if (str != null) {
				str = new String(str.getBytes(srcCharset), ObjCharset);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}

	/**
	 * Change the special tag to HTML language.
	 * 
	 * @param str
	 * 
	 * @return String
	 */
	public static String toHtml2(String str) {
		try {
			char ch;
			int length = 0;
			String temp = "";
			if (str != null) {
				str = str.trim();
				if (str.length() != 0) {
					length = str.length();
					for (int i = 0; i < length; i++) {
						ch = str.charAt(i);
						switch (ch) {
						case (char) 13:
							temp = temp + "<br>";
							break;
						case (char) 34:
							temp = temp + "&quot;";
							break;
						case (char) 32:
							if (i < length) {
								if (str.charAt(i + 1) == ((char) 32)
										|| str.charAt(i + 1) == ((char) 9)
										|| str.charAt(i - 1) == ((char) 32)
										|| str.charAt(i - 1) == ((char) 9)) {
									temp = temp + "&nbsp;";
								} else {
									temp = temp + " ";
								}
							} else {
								temp = temp + "&nbsp;";
							}
							break;
						case (char) 9:
							temp = temp + "&nbsp;";
							break;
						case '<':
							temp = temp + "&lt;";
							break;
						case '>':
							temp = temp + "&gt;";
							break;
						default:
							temp = temp + ch;
						}
					}
				}
				str = temp;
			} else {
				str = "";
			}
			return str;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	/**
	 * Get the length of a string that parses to bytes.
	 * 
	 * @param s
	 * 
	 * @return int
	 */
	public static int absoluteLength(String s) {
		if (s == null) {
			return 0;
		}
		try {
			return new String(s.getBytes("GBK"), "8859_1").length();
		} catch (Exception e) {
			return s.length();
		}
	}

	/**
	 * Judge a character is Ascill or others（such as Chinese, Japanese or Korea）
	 * 
	 * @param char c
	 * @return boolean, if true,c is Ascill
	 */
	public static boolean isLetter(char c) {
		int k = 0x80;
		return c / k == 0 ? true : false;
	}

	/**
	 * calculate the byte length of a string taking Chinese as two bytes exp.
	 * "test" is 4 "测试" is 4
	 * 
	 * @param src
	 * @return the byte length
	 */
	public static int byteLength(String src) {
		if (src == null)
			return 0;

		char[] chars = src.toCharArray();
		int result = 0;
		for (char c : chars) {
			if (c > 127)
				result++;
			result++;
		}
		return result;
	}

	/**
	 * calculate the byte length of a string according UTF-8
	 * 
	 * @param src
	 * @return byte length of a string exp. "test" is 4 "测试" is 6
	 */
	public static int byteLengthUtf(String src) {
		if (src == null)
			return 0;

		char[] chars = src.toCharArray();
		int result = 0;
		for (char c : chars) {
			if (c > 127)
				result += 3;
			else
				result++;
		}
		return result;
	}

	/**
	 * Add "\n" to string
	 * 
	 * @param s
	 * @param len
	 *            : the length of a line
	 * @return new string
	 */
	public List<String> newline(String s, int len) {
		if (s == null) {
			return null;
		}

		try {

			List<String> ls = new ArrayList<String>();

			char ch;
			char ch1 = 13;

			int len2 = s.length();

			for (int i = 0; i < len2;) {
				int tempLen = 0;
				String newStr = "";
				while (tempLen < len && i < len2) {
					ch = s.charAt(i++);
					if (ch == ch1) {
						break;
					} else if (ch < 32) {
						continue;
					} else if (ch <= 256) {
						if (ch == '\\') {
							if (tempLen == len - 2) {
								tempLen--;
							} else {
								tempLen++;
							}
						} else {
							tempLen++;
						}
					} else if (ch > 256) {
						tempLen = tempLen + 2;
					}

					if (tempLen < len - 1) {
						newStr += ch;

					} else {
						newStr += ch;
						if (i < len2 && s.charAt(i) == ch1) {
							i++;
						}
						break;
					}
				}
				ls.add(newStr);
			}
			return ls;
		} catch (Exception ex) {
			return null;
		}
	}

	/**
	 * Add string to a set.
	 * 
	 * @param str
	 * @param delim
	 * @return Set
	 */
	public static Set stringTokenizer(String str, String delim) {
		if (str == null || "".equals(str)) {
			return new HashSet();
		}
		StringTokenizer st = new StringTokenizer(str, delim);
		Set afterCutSet = new HashSet();
		while (st.hasMoreTokens()) {
			String str1 = nullToZero(st.nextToken());
			afterCutSet.add(new Long(str1));
		}
		return afterCutSet;
	}

	/**
	 * Add string to a list.
	 * 
	 * @param str
	 * @param delim
	 * @return
	 */
	public static List strTokenizer(String str, String delim) {
		if (str == null || "".equals(str)) {
			return new ArrayList();
		}
		StringTokenizer st = new StringTokenizer(str, delim);
		List afterCutList = new ArrayList();
		while (st.hasMoreTokens()) {
			String str1 = nullToZero(st.nextToken());
			afterCutList.add(new Long(str1));
		}
		return afterCutList;
	}

	/**
	 * get os string
	 * 
	 * @return String
	 */
	public static String getOSName() {
		return (String) System.getProperties().get("os.name");
	}

	/**
	 * Get real path according current path.
	 * 
	 * @param clz
	 * @param cutPath
	 * @param makePath
	 * @return RealPath
	 * @throws Exception
	 */
	public static String getRealPath(Class clz, String cutPath, String makePath) {
		try {
			Class clzObj = clz.newInstance().getClass();
			String strClassName = clzObj.getName();
			String strClassFileName = strClassName.substring(strClassName
					.lastIndexOf(".") + 1, strClassName.length());
			URL url = null;
			url = clzObj.getResource(strClassFileName + ".class");
			String strURL = url.toString();

			strURL = strURL.substring(strURL.indexOf("/") + 1);

			if (cutPath == null || "".equals(cutPath)) {
				strURL = strURL.substring(0, strURL.lastIndexOf("/") + 1);
			} else {
				strURL = strURL.substring(0, strURL.lastIndexOf(cutPath));
			}

			if (makePath != null) {
				strURL = strURL + makePath + "/";
			}

			File file = new File(strURL);
			if (!file.exists()) {
				file.mkdirs();
			}
			return strURL;
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	/**
	 * Add string a flag by intervals.
	 * 
	 * @param data
	 * @param intervals
	 * @param flag
	 * @return String
	 */
	public static String addFlagsToStr(String data, int intervals, String flag) {
		if (data == null || data.length() <= intervals || intervals < 1
				|| flag == null || "".equals(flag)) {
			return data;
		}
		String result = "";
		int i = 1;
		int len = data.length();
		int prix = len % intervals;
		if (prix > 0) {
			result = data.substring(0, prix);
			for (; len > i * intervals; i++) {
				result = result
						+ flag
						+ data.substring((i - 1) * intervals + prix, i
								* intervals + prix);
			}
		} else {
			result = data.substring(0, intervals);
			for (; len > i * intervals; i++) {
				result = result + flag
						+ data.substring(i * intervals, (i + 1) * intervals);
			}
		}
		return result;
	}

	/**
	 * 函数名称： 数字金额转换成中外大写金额
	 * 
	 */
	public static String addCommasToDecimalStr(String data, int intervals,
			String flag) {
		if (data.indexOf(".") < 0) {
			return addFlagsToStr(data, intervals, flag);
		}
		StringBuffer buff = new StringBuffer();
		buff.append(
				addFlagsToStr(data.substring(0, data.indexOf(".")), intervals,
						flag)).append(".").append(
				data.substring(data.indexOf(".") + 1, data.length()));
		return buff.toString();
	}

	/**
	 * 函数名称： 数字金额转换成中外大写金额
	 * 
	 */
	public static String changeLNum2UNum(double src) {
		if (src == 0.0)
			return "零元正";
		else if (src > MAX_VALUE || src < MIN_VALUE)
			return "溢出";

		String result = "";

		boolean isNegative = (src < 0) ? true : false;
		long source = Math.round(src * 100.0);
		if (isNegative)
			source = -source;

		StringBuffer sb = new StringBuffer(64);

		String str = Long.toString(source);
		int length = str.length() + 1;
		if (length < 4) {
			sb.append("0/00".substring(0, 5 - length)).append(str).toString();
			length = 4;
		} else {
			sb.append(str.substring(0, length - 3)).append("/").append(
					str.substring(length - 3)).toString();
		}

		StringBuffer resultBuffer = new StringBuffer(64);
		char a;
		for (int i = 0; i < length; i++) {
			a = sb.charAt(i);
			resultBuffer.append(NUMBER_STR[a - '/']).append(
					STANDARD_STR[length - i - 1]);
		}

		result = resultBuffer.toString();

		for (int i = 0; i < KEY_STR.length; i++)
			result = result.replaceAll(KEY_STR[i], MAP_STR[i]);

		if (result.startsWith("元"))
			result = result.substring(1);

		if (isNegative) {
			resultBuffer.delete(0, resultBuffer.length());
			result = resultBuffer.append("負").append(result).toString();
		}

		return result;
	}

	/**
	 * Add chars to string from left.
	 * 
	 * @param str
	 *            Original string.
	 * @param totalWidth
	 *            The return value's length.
	 * @param paddingChar
	 *            The char will be padded to string.
	 * @return string
	 */
	public static String padLeft(String str, int totalWidth, char paddingChar) {
		if (absoluteLength(str) >= totalWidth)
			return str;
		str = trim(str);
		int k = totalWidth - absoluteLength(str);
		for (; k > 0; k--)
			str = paddingChar + str;
		return str;
	}

	/**
	 * Get substring according to length. If str.length > substring.length, add
	 * symbol to the right of substring.
	 * 
	 * @param str
	 * @param length
	 * @param symbol
	 * @return String object.
	 */
	public static String contentOmit(String str, int length, String symbol) {

		String returnStr = null;
		if (str == null) {
			str = "";
		}
		if (symbol == null) {
			symbol = "";
		}

		returnStr = limitLength(str, length - byteLength(symbol)) + symbol;
		return returnStr;
	}

	public static String limitLength(String s, int length) {
		StringBuffer buf = new StringBuffer();
		int bytes = 0;
		for (int i = 0; i < s.length() && bytes < length; i++) {
			char c = s.charAt(i);
			if (c > 255) {
				if (bytes + 2 > length)
					break;
				bytes += 2;
			} else {
				bytes++;
			}
			buf.append(c);
		}
		return buf.toString();
	}

	/**
	 * Check whether string matches the format of email.
	 * 
	 * @param checkString
	 * @return
	 */
	public static boolean isEmail(String checkString) {
		String regString = "([a-zA-Z_0-9]+)@([a-zA-Z0-9]+)\\.([a-zA-Z]+)";
		return regexCheck(checkString, regString);
	}

	/**
	 * Check whether string is int.
	 * 
	 * @param numberString
	 * @return boolean
	 */
	public static boolean isInt(String numberString) {
		String regexStr = "-*" + "\\d*";
		return regexCheck(numberString, regexStr);
	}

	/**
	 * Check whether string is make from double.
	 * <p>
	 * isNumber("0"): false ;
	 * </p>
	 * <p>
	 * isNumber("213"): true ;
	 * </p>
	 * <p>
	 * isNumber("124312a"): false
	 * </p>
	 * <p>
	 * isNumber("124312a.13"): false
	 * </p>
	 * <p>
	 * isNumber("12.431.213"): false
	 * </p>
	 * <p>
	 * isNumber("124312.13"): true
	 * </p>
	 * 
	 * @param numberString
	 * @return
	 */
	public static boolean isNums(String numberString) {
		String regexStr = "-*" + "\\d*" + "." + "\\d*";
		return regexCheck(numberString, regexStr);
	}

	/**
	 * check if a string contains only 0-9
	 * 
	 * @param numberString
	 * @return
	 */
	public static boolean isNumberString(String numberString) {
		if (numberString == null)
			return false;
		char[] chars = numberString.toCharArray();
		for (char c : chars) {
			if (c < '0' || c > '9')
				return false;
		}
		return true;
	}

	/**
	 * Check whether url is right.
	 * 
	 * @param checkString
	 * @return
	 */
	public static boolean isURL(String url) {
		String regString = "http://([\\w-]+\\.)+[\\w-]+(/[\\w-   ./?%&=]*)?";
		return regexCheck(url, regString);
	}

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

	public static void testReg() {

		Pattern p = Pattern.compile("[.,\"\\?!:']");// 增加对应的标点

		Matcher m = p
				.matcher("I am a, I am \"Hello\" I. ok? hello! hello: ok.");

		String first = m.replaceAll(" ");

		System.out.println(first);

		p = Pattern.compile(" {2,}");// 去除多余空格

		m = p.matcher(first);

		String second = m.replaceAll(" ");

		System.out.println(second);// second为最终

	}

	/**
	 * 
	 * get sub string
	 * 
	 * @param str
	 * 
	 * @param byteBeginIndex
	 * 
	 * @param byteEndIndex
	 * 
	 * @return sub string
	 * 
	 */
	public static String subStringByByte(String str, int byteBeginIndex,
			int byteEndIndex) {

		if (str == null || "".equals(str) || byteBeginIndex > byteEndIndex) {
			return "";
		}

		String result = "";
		int charLength = 0;
		int tempIndex1 = 0;
		int tempIndex2 = 0;
		int charBeginIndex = -1;
		int charEndIndex = -1;

		if (byteEndIndex > byteBeginIndex && byteBeginIndex >= 0) {
			for (int i = 0; i < str.length(); i++) {
				charLength = str.substring(i, i + 1).getBytes().length;
				tempIndex1 = tempIndex2;
				tempIndex2 += charLength;

				if (byteBeginIndex >= tempIndex1 && byteBeginIndex < tempIndex2) {
					charBeginIndex = i;
				}

				if (byteEndIndex >= tempIndex1 && byteEndIndex < tempIndex2) {
					charEndIndex = byteEndIndex == tempIndex1 ? i : i + 1;
					break;
				}
			}

			charEndIndex = charEndIndex == -1 ? (charBeginIndex == -1 ? 0 : str
					.length()) : charEndIndex;
			charBeginIndex = charBeginIndex == -1 ? 0 : charBeginIndex;
			result = str.substring(charBeginIndex, charEndIndex);
		}

		return result;
	}

	/**
	 * To SBC case.
	 * 
	 * The code of spacer of SBC is 12288，DBC is 32. The value between of other
	 * characters of DBC code(33-126) and SBC code(65281-65374)is 65248.
	 * 
	 * @param input
	 *            String
	 * @return String SBC case.
	 */
	public static String ToSBC(String input) {
		if (input == null) {
			return input;
		}
		char[] c = input.toCharArray();
		for (int i = 0; i < c.length; i++) {
			if (c[i] == 32) {
				c[i] = (char) 12288;
				continue;
			}
			if (c[i] < 127) {
				c[i] = (char) (c[i] + 65248);
			}
		}
		return new String(c);
	}

	/**
	 * to DBC case
	 * 
	 * The code of spacer of SBC is 12288，DBC is 32. The value between of other
	 * characters of DBC code(33-126) and SBC code(65281-65374)is 65248.
	 * 
	 * @param input
	 *            String
	 * @return String DBC case
	 */
	public static String ToDBC(String input) {
		if (input == null) {
			return input;
		}
		char[] c = input.toCharArray();
		for (int i = 0; i < c.length; i++) {
			if (c[i] == 12288) {
				c[i] = (char) 32;
				continue;
			}
			if (c[i] > 65280 && c[i] < 65375) {
				c[i] = (char) (c[i] - 65248);
			}
		}
		return new String(c);
	}

	public static boolean isChinese(char c) {
		Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);
		if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A
				|| ub == Character.UnicodeBlock.GENERAL_PUNCTUATION
				|| ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION
				|| ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) {
			return true;
		}
		return false;
	}

	public static boolean isLetter(String strName) {
		strName = strName.replaceAll(" ", "");
		return strName.matches("^[a-zA-Z]+$");
	}

	public static boolean isChinese(String strName) {
		char[] ch = strName.toCharArray();
		for (int i = 0; i < ch.length; i++) {
			char c = ch[i];
			if (isChinese(c) != true) {
				return false;
			}
		}
		return true;

	}

	/**
	 * @param input
	 * @param regex
	 * @return
	 */
	public static String[] split(String input, String regex) {
		if (trim2Empty(input).equals(""))
			return null;
		if (ArrayUtils.indexOf(SPECIAL_CHAR_ARRAY, regex) > -1) {
			regex = "\\" + regex;
		}
		return input.split(regex);
	}

/**
	* <pre>
	* Given a string, this method replaces all occurrences of 
	*  '<' with '<', all occurrences of '>' with 
	*  '>', and (to handle cases that occur inside attribute 
	*  values), all occurrences of double quotes with 
	*  '"' and all occurrences of '&' with '&'. 
	*  Without such filtering, an arbitrary string 
	*  could not safely be inserted in a Web page. 
	*  </pre>
*/
	public static String filter(String input) {
		if (!hasSpecialChars(input)) {
			return (input);
		}
		StringBuffer filtered = new StringBuffer(input.length());
		char c;
		for (int i = 0; i < input.length(); i++) {
			c = input.charAt(i);
			if (c == '<') {
				filtered.append("<");
			} else if (c == '>') {
				filtered.append(">");
			} else if (c == '"') {
				filtered.append("\"");
			} else if (c == '&') {
				filtered.append("&");
			} else {
				filtered.append(c);
			}
		}
		return (filtered.toString());
	}

	/**
	 * @param input
	 * @return
	 */
	public static boolean hasSpecialChars(String input) {
		boolean flag = false;
		if ((input != null) && (input.length() > 0)) {
			char c;
			for (int i = 0; i < input.length(); i++) {
				c = input.charAt(i);
				switch (c) {
				case '<':
					flag = true;
					break;
				case '>':
					flag = true;
					break;
				case '"':
					flag = true;
					break;
				case '&':
					flag = true;
					break;
				}
			}
		}
		return flag;
	}

	public static String gbToUtf8(String str)
			throws UnsupportedEncodingException {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < str.length(); i++) {
			String s = str.substring(i, i + 1);
			if (s.charAt(0) > 0x80) {
				byte[] bytes = s.getBytes("Unicode");
				String binaryStr = "";
				for (int j = 2; j < bytes.length; j += 2) {
					// the first byte
					String hexStr = getHexString(bytes[j + 1]);
					String binStr = getBinaryString(Integer.valueOf(hexStr, 16));
					binaryStr += binStr;
					// the second byte
					hexStr = getHexString(bytes[j]);
					binStr = getBinaryString(Integer.valueOf(hexStr, 16));
					binaryStr += binStr;
				}
				// convert unicode to utf-8
				String s1 = "1110" + binaryStr.substring(0, 4);
				String s2 = "10" + binaryStr.substring(4, 10);
				String s3 = "10" + binaryStr.substring(10, 16);
				byte[] bs = new byte[3];
				bs[0] = Integer.valueOf(s1, 2).byteValue();
				bs[1] = Integer.valueOf(s2, 2).byteValue();
				bs[2] = Integer.valueOf(s3, 2).byteValue();
				String ss = new String(bs, "UTF-8");
				sb.append(ss);
			} else {
				sb.append(s);
			}
		}
		return sb.toString();
	}

	private static String getHexString(byte b) {
		String hexStr = Integer.toHexString(b);
		int m = hexStr.length();
		if (m < 2) {
			hexStr = "0" + hexStr;
		} else {
			hexStr = hexStr.substring(m - 2);
		}
		return hexStr;
	}

	private static String getBinaryString(int i) {
		String binaryStr = Integer.toBinaryString(i);
		int length = binaryStr.length();
		for (int l = 0; l < 8 - length; l++) {
			binaryStr = "0" + binaryStr;
		}
		return binaryStr;
	}

	public static String parseOutHTML(String input) {
		if (input == null || input.trim().equals("")) {
			return "";
		}
		String str = input.replaceAll("\\&[a-zA-Z]{1,10};", "").replaceAll(
				"<[^>]*>", "");
		str = str.replaceAll("[(/>)<]", "");
		return str;
	}

	/**
	 * @param args
	 * @throws UnsupportedEncodingException
	 */
	public static void main(String[] args) throws UnsupportedEncodingException {
		// Pattern p = Pattern.compile("[0]");
		// Matcher m = p.matcher("00330055");
		// String s = m.replaceAll("");
		// System.out.print(s);
		// testReg();

		System.out.println("1="+isEmail("sdf@163.com"));
		System.out.println("2="+isEmail("2sdf@163.com"));
		System.out.println("3="+isEmail("sdf@163.3com"));
		System.out.println("4="+isEmail("sdf@163..com"));
		System.out.println("5="+isEmail("sdf@163.com"));
		System.out.println("6="+isEmail("sdf@@163.com"));
		System.out.println(padLeft("1", 3, '0'));
		System.out.println(isNums("a-43.342"));
		String s = "ab度度";
		String s1 = subStringByByte(s, 0, 0);
		System.out.println(s1);
		String s2 = subStringByByte(s, 0, 1);
		System.out.println(s2);
		String s3 = subStringByByte(s, 0, 2);
		System.out.println(s3);
		String s4 = subStringByByte(s, 0, 3);
		System.out.println(s4);
		String s5 = subStringByByte(s, 0, 4);
		System.out.println(s5);
		String s6 = subStringByByte(s, 0, 5);
		System.out.println(s6);
		String s7 = subStringByByte(s, 0, 6);
		System.out.println(s7);
		String s8 = subStringByByte(s, 0, 7);
		System.out.println(s8);
		String s9 = subStringByByte(s, 1, 3);
		System.out.println(s9);

		System.out.println(padLeft("abc", 0, '0'));
		// System.out.println(l.get);

		// System.out.println(s.length());
		// System.out.println(s.getBytes("UTF-8").length);
		// System.out.println(absoluteLength(s));

		System.out.println(getRealPath(StringUtils.class, "bin", ""));
		System.out.println(getRealPath(StringUtils.class, "", null));
	}
}
