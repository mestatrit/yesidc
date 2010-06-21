package com.yesidc.email.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

import com.yesibc.core.utils.ReadProperties;

public class EmailUtils {

	private static String ENCODE = "GB2312";
	private static ReadProperties sourProperties = ReadProperties.getInst("codeval");
	private static ReadProperties serverConfProperties = ReadProperties.getInst("server");

	public static String getValByKey(String key) {
		return sourProperties.getValuesByKey("codeval", key);
	}

	public static String getServerConfByKey(String key) {
		return serverConfProperties.getValuesByKey("server", key);
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

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String s = "086-" + "		021-" + "		52306918;";
		System.out.println(s);
		System.out.println(s.length());
		System.out.println(s);
		System.out.println(s.length());

	}

}
