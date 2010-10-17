package com.yesitc.baixing.web;

import java.util.HashMap;
import java.util.Map;

import com.yesibc.core.spring.SpringContext;
import com.yesiic.webswith.model.WebElements;
import com.yesitc.baixing.service.DBService;

/**
 * 1.初始化基础数据 2.初始化全国各城市/地区里各分类的链接
 * 
 * @author Abel
 * 
 */
public class InitBasicData {

	public final static String KEY_TYPES = "types";
	public final static String KEY_AREAS = "areas";
	public final static String KEY_AREAS_BJ = "beijing";
	public final static String KEY_AREAS_SH = "shanghai";

	private static Map<String, Map<String, WebElements>> ALL = null;
	private static Map<String, WebElements> AREA_SH = null;
	private static Map<String, WebElements> AREA_BJ = null;
	private static Map<String, WebElements> AREA_COMMON = null;

	private static Map<String, Map<String, WebElements>> getAll() {
		if (ALL == null) {
			initAll();
		}
		return ALL;
	}

	private static void initAll() {
		DBService dBService = (DBService) SpringContext.getBean("dBService");
		ALL = dBService.initAllBase();
	}

	private static void initSpecialArea() {
		AREA_SH = new HashMap<String, WebElements>();
		AREA_BJ = new HashMap<String, WebElements>();
		AREA_COMMON = new HashMap<String, WebElements>();

		for (Map.Entry<String, WebElements> entry : getAreas().entrySet()) {
			if (isOK(entry.getValue(), KEY_AREAS_BJ)) {
				AREA_BJ.put(entry.getKey(), entry.getValue());
			} else if (isOK(entry.getValue(), KEY_AREAS_SH)) {
				AREA_SH.put(entry.getKey(), entry.getValue());
			} else {
				if (filter(entry.getValue())) {
					continue;
				}
				AREA_COMMON.put(entry.getKey(), entry.getValue());
			}
		}

	}

	private static boolean filter(WebElements value) {
		if (KEY_AREAS_BJ.equals(value.getCode())) {
			return true;
		} else if (KEY_AREAS_SH.equals(value.getCode())) {
			return true;
		}
		return false;
	}

	private static boolean isOK(WebElements we, String keyAreasBj) {
		WebElements parent = we.getParent();
		while (parent != null) {
			if (keyAreasBj.equals(parent.getCode())) {
				return true;
			} else {
				parent = parent.getParent();
			}
		}
		return false;
	}

	public static Map<String, WebElements> getAreaBj() {
		if (AREA_BJ == null) {
			initSpecialArea();
		}
		return AREA_BJ;
	}

	public static Map<String, WebElements> getAreaSh() {
		if (AREA_SH == null) {
			initSpecialArea();
		}
		return AREA_SH;
	}

	public static Map<String, WebElements> getAreaOthers() {
		if (AREA_COMMON == null) {
			initSpecialArea();
		}
		return AREA_COMMON;
	}

	public static Map<String, WebElements> getAreas() {
		return getAll().get(KEY_AREAS);
	}

	public static Map<String, WebElements> getTypes() {
		return getAll().get(KEY_TYPES);
	}

	public WebElements getAreaByCode(String key) {
		return getAll().get(KEY_AREAS).get(key);
	}

	public WebElements getTypeByCode(String key) {
		return getAll().get(KEY_TYPES).get(key);
	}

	public String getAreaNameByCode(String key) {
		return getAll().get(KEY_AREAS).get(key).getName();
	}

	public String getTypeNameByCode(String key) {
		return getAll().get(KEY_TYPES).get(key).getName();
	}

	public String getAreaMemoByCode(String key) {
		return getAll().get(KEY_AREAS).get(key).getMemo();
	}

	public String getTypeMemoByCode(String key) {
		return getAll().get(KEY_TYPES).get(key).getMemo();
	}

	public static void main(String[] args) {
		Map<String, Map<String, WebElements>> all = getAll();
		System.out.println(all.size());
		System.out.println(getAreaBj().size());
		System.out.println(getAreaSh().size());
	}

}
