package com.yesiic.common;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.CellUtils;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.core.utils.ThreadPool;
import com.yesiic.base.model.Code;
import com.yesiic.base.model.ExtendCode;
import com.yesiic.common.support.Appellation;
import com.yesiic.dao.BaseCodeDao;
import com.yesiic.dao.ExtendCodeDao;

public class ClawerUtils {

	private static String ENCODE = "GB2312";
	private static Log log = LogFactory.getLog(ClawerUtils.class);

	/**
	 * 前面有QQ两个字,长度5~10，10后面必须为非数字
	 */
	private static Pattern QQ_PATTERN = Pattern.compile("([Q|q]{2}[^0-9]{0,10})[\\d]{5,11}\\D?");

	// private static Pattern TEL_PATTERN =
	// Pattern.compile("\\(0\\d{2,3}\\)[- ]?\\d{7,8}|0\\d{2,3}[- ]?\\d{7,8}\\D?");
	private static Pattern TEL_PATTERN = Pattern
			.compile("[^\\dQq-]{1}([0][0-9]{2,3}[-])?([2-9]{1}[0-9]{6,7})([-][0-9]{1,4})?\\D?");
	// private static Pattern TEL_PATTERN =
	// Pattern.compile("([0][2-9]{2,3}[-])?[\\d]{7,8}\\D?");
	private static Pattern MOBILE_PATTERN = Pattern.compile("([\\d]{11}?)|([\\d]{1,6}[-|#|@|\\.]){2,4}[\\d]{1,6}\\D?"); // 
	private static List<Code> NAME_ARRAY = BaseCodeHolder.getAppellationList();
	private static List<Code> ADDR_FILTERS = BaseCodeHolder.getAddressFilterList();
	private static String[] LINK_TAGS = { "联系方式", "联系电话", "请联系", "联系人", "电话", "手机" };

	// private static Pattern MOBILE_PATTERN =
	// Pattern.compile("([\\d]{11}?)|([\\d]{1,6}[^0-9]){2,4}[\\d]{1,6}\\D?"); //

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

	public static Map<String, String> getTelNo(String content, Map<String, String> filters) {
		Matcher m = TEL_PATTERN.matcher(content);
		Map<String, String> map = new HashMap<String, String>();
		String temp = null;
		boolean have = true;
		if (CollectionUtils.isEmpty(filters)) {
			have = false;
		}
		String tempNum = null;
		while (m.find()) {
			boolean filter = false;
			temp = m.group();
			if (have) {
				tempNum = StringUtils.getNum(temp);
				for (Map.Entry<String, String> entry : filters.entrySet()) {
					if (entry.getKey().startsWith(tempNum)) {
						filter = true;
						break;
					}
				}
			}

			if (filter) {
				continue;
			}

			tempNum = temp;
			// System.out.println("temp.substring(temp.length())=="+StringUtils.isNumberString(temp.substring(temp.length())));
			if (!StringUtils.isNumberString(temp.substring(temp.length()))) {
				tempNum = temp.substring(0, temp.length() - 1);
			}
			if (!StringUtils.isNumberString(temp.substring(0))) {
				tempNum = temp.substring(1, temp.length() - 1);
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
				if (CellUtils.checkMobile(tempNum)) {
					map.put(tempNum, temp);
				}
			}
		}
		return map;
	}

	public static Map<String, String> getName(String content) {
		Map<String, String> names = new HashMap<String, String>();
		boolean have = false;
		for (String linkTag : LINK_TAGS) {
			if (content.indexOf(linkTag) > -1) {
				content = content.substring(content.indexOf(linkTag));
				have = true;
				break;
			}
		}
		if (!have) {
			return null;
		}
		for (Code entry : NAME_ARRAY) {
			if (content.indexOf(entry.getCname()) < 0) {
				continue;
			}
			String[] sirs = content.split(entry.getCname());
			if (sirs == null) {
				continue;
			}
			String position = entry.getCode1();
			int i = 0;
			int j = 0;
			for (; i < sirs.length; i++) { // "在在在地张" (先生) "在在在李" (小姐) "在在大在" ""
				String temp = null;
				if (Appellation.POSITION_BK.equals(position)) { // "在在在地张(先生)dsdd"
					if (i % 2 != 0) {
						i++;
						if (i >= sirs.length) {
							break;
						}
					}
					j=sirs[i].length();
					while(true){
						if(j == 1){
							break;
						}
						temp = StringUtils.trim2Empty(sirs[i].substring(j - 1,j));
						if(!StringUtils.isEmpty(temp)){
							break;
						}		
						j--;
					}
					temp = temp + entry.getCname();
					names.put(temp, temp);
				} else if (Appellation.POSITION_FR.equals(position)) { // "在在在小张dddd"
					if (i % 2 == 0) {
						i++;
						if (i >= sirs.length) {
							break;
						}
					}
					j=0;
					while(true){
						if(j>=(sirs[i].length()-1)){
							break;
						}
						temp = StringUtils.trim2Empty(sirs[i].substring(j, j+1));
						if(!StringUtils.isEmpty(temp)){
							break;
						}		
						j++;
					}
					if(temp==null){
						temp = "";
					}
					temp = entry.getCname() + temp;
					names.put(temp, temp);
				}

			}

			if (!names.isEmpty()) {
				return names;
			}
		}

		return null;
	}

	public static String getSex(Map<String, String> names) {
		if (names == null || names.isEmpty()) {
			return ClawerConstants.SEX_UNKNOWN;
		}
		List<Code> codes = NAME_ARRAY;
		for (Map.Entry<String, String> entry : names.entrySet()) {
			for (Code code : codes) {
				if (entry.getKey().indexOf(code.getCname()) > -1) {
					return code.getCname1();
				}
			}
		}
		return ClawerConstants.SEX_UNKNOWN;
	}

	/**
	 * key:
	 * 
	 * @param key
	 * @param parent
	 * @return
	 */
	public static String getTelAreaCode(String key, String parent) {
		return getExtCode(key, parent, ExtendCode.CODE_TYPE_AREA_CODE);
	}

	private static Map<String, Map<String, List<ExtendCode>>> EXT_CODE_TREES = null;

	private static Map<String, List<ExtendCode>> getExtCodes(String key) {
		if (EXT_CODE_TREES == null) {
			initExtCode();
		}
		return EXT_CODE_TREES.get(key);
	}

	private static String getExtCode(String key, String parent, String codeType) {
		if (!CollectionUtils.isEmpty(getExtCodes(key))) {
			List<ExtendCode> ecs = getExtCodes(key).get(codeType);
			if (!CollectionUtils.isEmpty(ecs)) {
				if (ecs.size() == 1) {
					return ecs.get(0).getCode();
				} else {
					if (parent != null) {
						parent = getExtCodeByParent(ecs, parent);
						if (parent != null) {
							return parent;
						}
					}
				}
			}
		}
		ErrorHandler.errorLogAndMail("Can not find area code or zip by Name:" + key + "-" + parent);
		return null;
	}

	private static void initExtCode() {

		ExtendCodeDao extendCodeDao = (ExtendCodeDao) SpringContext.getBean("extendCodeDao");
		List<ExtendCode> ecsTemps = extendCodeDao.queryByFilter(null);

		EXT_CODE_TREES = new HashMap<String, Map<String, List<ExtendCode>>>();
		Map<String, List<ExtendCode>> names = new HashMap<String, List<ExtendCode>>();
		String name = null;
		List<ExtendCode> extCodes = null;
		for (ExtendCode temp : ecsTemps) {
			name = getByFilters(temp.getName());
			if (!EXT_CODE_TREES.containsKey(name)) {
				names = new HashMap<String, List<ExtendCode>>();
				EXT_CODE_TREES.put(name, names);
			}

			if (!EXT_CODE_TREES.get(name).containsKey(temp.getCodeType())) {
				extCodes = new ArrayList<ExtendCode>();
				EXT_CODE_TREES.get(name).put(temp.getCodeType(), extCodes);
			}

			extCodes.add(temp);
		}
		if (CollectionUtils.isEmpty(EXT_CODE_TREES)) {
			log.info("initExtCode=" + EXT_CODE_TREES.size());
		}
	}

	private static String getByFilters(String name) {
		for (Code code : ADDR_FILTERS) {
			if (name.length() > 2 && name.endsWith(code.getCname())) {
				return name.substring(0, (name.length() - code.getCname().length()));
			}
		}
		return null;
	}

	private static String getExtCodeByParent(List<ExtendCode> ecs, String parent) {
		Long temp = null;
		Code code = null;
		BaseCodeDao baseCodeDao = (BaseCodeDao) SpringContext.getBean("baseCodeDao");
		for (ExtendCode ec : ecs) {
			temp = ec.getParent();
			code = baseCodeDao.getById(Code.class, temp);
			if (code != null) {
				if (get2Top(code, parent)) {
					return ec.getCode();
				}
			}
		}
		return null;
	}

	private static boolean get2Top(Code code, String parent) {
		if (code.getCname() != null && code.getCname().indexOf(parent) > -1) {
			return true;
		} else {
			if (code.getParent() != null) {
				return get2Top(code.getParent(), parent);
			}
		}
		return false;
	}

	public static String getZip(String key, String parent) {
		return getExtCode(key, parent, ExtendCode.CODE_TYPE_ZIP);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String url = "联系电话：15009289686  QQ：864536265";
		// url = "-1234.3MhZ";
		try {
			Map<String, String> temp = getQQ(url);
			for (Map.Entry<String, String> entry : temp.entrySet()) {
				System.out.println("getQQ=" + entry.getKey());
			}
			System.out.println("======");
			Map<String, String> temp1 = getMobile(url, temp);
			for (Map.Entry<String, String> entry : temp1.entrySet()) {
				System.out.println("getMobile=" + entry.getKey());
			}
			System.out.println("======");
			Map<String, String> temp2 = getTelNo(url, temp);
			for (Map.Entry<String, String> entry : temp2.entrySet()) {
				System.out.println("getTelNo=" + entry.getKey() + "=" + entry.getValue());
			}
			System.out.println("======");
			String cityName = getTelAreaCode("西安", null);
			System.out.println("===cityName===" + cityName);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
