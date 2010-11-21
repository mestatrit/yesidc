package com.yesiic.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.yesibc.core.utils.CellUtils;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.core.utils.ReadProperties;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.core.utils.ThreadPool;

public class ClawerUtils {

	private static String ENCODE = "GB2312";
	private static ReadProperties sourProperties;
	private static ReadProperties serverConfProperties;
	/**
	 * 前面有QQ两个字,长度5~10，10后面必须为非数字
	 */
	private static Pattern QQ_PATTERN = Pattern.compile("([Q|q]{2}[^0-9]{0,10})[\\d]{5,11}\\D?");
	private static Pattern TEL_PATTERN = Pattern.compile("([\\d]{3,4}[-]?)[\\d]{7,8}\\D?");
	private static Pattern MOBILE_PATTERN = Pattern.compile("([\\d]{11}?)|([\\d]{1,6}[-|\\s]){2,4}[\\d]{1,6}\\D?"); // 
	private static String[] NAMES = { "先生", "小姐" };

	public static Map<String, String> getQQ(String html) {
		Matcher m = QQ_PATTERN.matcher(html);
		Map<String, String> map = new HashMap<String, String>();
		String temp = null;
		while (m.find()) {
			temp = m.group();
			map.put(StringUtils.getNum(temp), temp);
		}
		return map;
	}

	public static ReadProperties getCodeValConf() {
		if (sourProperties == null) {
			sourProperties = ReadProperties.getInst("codeval");
		}
		return sourProperties;
	}

	public static ReadProperties getServConf() {
		if (serverConfProperties == null) {
			serverConfProperties = ReadProperties.getInst("server");
		}
		return serverConfProperties;
	}

	public static String getValByKey(String key) {
		return getCodeValConf().getValuesByKey("codeval", key);
	}

	public static String getServerConfByKey(String key) {
		return getServConf().getValuesByKey("server", key);
	}

	public static String removeSpace(String str) {
		if (str == null) {
			return "";
		}
		str = str.replaceAll(" ", "");
		str = str.trim();
		String[] filters = { "\n", ClawerConstants.FILTER_SPACE };
		str = filter(str, filters);
		return str;
	}

	public static String getOrignText(String str) {
		if (str == null) {
			return "";
		}
		str = str.replaceAll(" ", "");
		str = str.trim();
		String[] filters = { ClawerConstants.CHAR_COLON, "\n", ClawerConstants.FILTER_SPACE };
		str = filter(str, filters);
		return str;
	}

	public static String removeSpaceAndFilter(String str) {
		if (str == null) {
			return "";
		}
		str = str.replaceAll(" ", "");
		str = str.trim();
		String[] filters = { ClawerConstants.CHAR_COLON, "\n", ClawerConstants.FILTER_SPACE,
				ClawerConstants.FILTER_SALARY1, ClawerConstants.FILTER_SALARY2, ClawerConstants.FILTER_SALARY3 };
		str = filter(str, filters);
		return str;
	}

	public static String removeSpecial(String str) {
		if (str == null) {
			return "";
		}
		str = str.replaceAll(" ", "");
		str = str.trim();
		str = filter(str, ClawerConstants.FILTER_SPECIAL);
		return str;
	}

	public static String filter(String str, String[] filters) {
		for (String filter : filters) {
			str = str.replaceAll(filter, "");
		}
		return str;
	}

	public static String filterFirst(String str, String[] filters) {
		for (String filter : filters) {
			str = str.replaceFirst(filter, "");
		}
		return str;
	}

	public static String openFile(String szFileName) {
		try {
			BufferedReader bis = new BufferedReader(new InputStreamReader(new FileInputStream(new File(szFileName)),
					ENCODE));
			String szContent = "";
			String szTemp;

			while ((szTemp = bis.readLine()) != null) {
				szContent += szTemp + "\n";
			}
			bis.close();
			return szContent;
		} catch (Exception e) {
			return "";
		}
	}

	public static void excuteThreads(Thread thread) {
		ThreadPool.loadPool(ClawerConstants.THREADS_NUMBER).execute(thread);
	}

	public static String[] splitByTag(String str, String[] tag) {
		String[] sa = null;
		boolean split = false;
		for (String temp : tag) {
			if (str.indexOf(temp) > -1) {
				split = true;
				sa = str.split(temp);
				break;
			}
		}

		if (!split) {
			sa = new String[] { str };
		}

		return sa;
	}

	public static Map<String, String> getTelNo(String content, Map<String, String> filter) {
		Matcher m = TEL_PATTERN.matcher(content);
		Map<String, String> map = new HashMap<String, String>();
		String temp = null;
		boolean have = true;
		if (CollectionUtils.isEmpty(filter)) {
			have = false;
		}
		String tempNum = null;
		while (m.find()) {
			temp = m.group();
			if (have) {
				tempNum = StringUtils.getNum(temp);
				if (filter.containsKey(tempNum)) {
					continue;
				}
			}
			tempNum = temp;
			//System.out.println("temp.substring(temp.length())=="+StringUtils.isNumberString(temp.substring(temp.length())));
			if (!StringUtils.isNumberString(temp.substring(temp.length()))) {
				tempNum = temp.substring(0, temp.length()-1);
			}
			map.put(tempNum, temp);
		}
		return map;
	}

	public static Map<String, String> getMobile(String content, Map<String, String> filter) {
		Matcher m = MOBILE_PATTERN.matcher(content);
		Map<String, String> map = new HashMap<String, String>();
		String temp = null;
		String tempNum = null;
		boolean have = true;
		if (CollectionUtils.isEmpty(filter)) {
			have = false;
		}

		while (m.find()) {
			temp = m.group();
			tempNum = StringUtils.getNum(temp);
			if (have) {
				if (filter.containsKey(tempNum)) {
					continue;
				}
			}
			if (tempNum.length() == 11) {
				if(CellUtils.checkMobile(tempNum)){
					map.put(tempNum, temp);
				}
			}
		}
		return map;
	}

	public static String getName(String content) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String url = "发票，上海025-5039291牌照02-82392913 02552392913 QQ50392913111在QQ6239齐qq:6239291，138-1700-97-09 QQ503929wdddd";
		// url = "-1234.3MhZ";
		try {
			Map<String, String> temp = getQQ(url);
			for (Map.Entry<String, String> entry : temp.entrySet()) {
				System.out.println("getKey=" + entry.getKey());
			}
			System.out.println("======");
			Map<String, String> temp1 = getMobile(url, temp);
			for (Map.Entry<String, String> entry : temp1.entrySet()) {
				System.out.println("getKey1=" + entry.getKey());
			}
			System.out.println("======");
			Map<String, String> temp2 = getTelNo(url, temp);
			for (Map.Entry<String, String> entry : temp2.entrySet()) {
				System.out.println("getKey2=" + entry.getKey());
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
