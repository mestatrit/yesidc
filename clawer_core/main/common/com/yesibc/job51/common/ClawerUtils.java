package com.yesibc.job51.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

import com.yesibc.core.utils.ReadProperties;
import com.yesibc.core.utils.ThreadPool;

public class ClawerUtils {

	private static String ENCODE = "GB2312";
	private static ReadProperties sourProperties = ReadProperties.getInst("codeval");
	private static ReadProperties serverConfProperties = ReadProperties.getInst("server");

	public static String getValByKey(String key) {
		return sourProperties.getValuesByKey("codeval", key);
	}

	public static String getServerConfByKey(String key) {
		return serverConfProperties.getValuesByKey("server", key);
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

	public static String[] splitByTag(String str,String[] tag) {
		String[] sa = null;
		boolean split = false;
		for (String temp : tag) {
			if(str.indexOf(temp) > -1){
				split = true;
				sa = str.split(temp);
				break;
			}
		}
		
		if(!split){
			sa = new String[] {str};
		}		
		
		return sa;
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String s = "086-" + "		021-" + "		52306918;";
		System.out.println(s);
		System.out.println(s.length());
		s = removeSpace(s);
		System.out.println(s);
		System.out.println(s.length());

	}

}
