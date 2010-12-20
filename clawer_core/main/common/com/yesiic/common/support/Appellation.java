package com.yesiic.common.support;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yesiic.base.model.Code;
import com.yesiic.common.BaseCode;

public class Appellation extends BaseCode {

	private static Map<String, Code> APPELLATIONS = new HashMap<String, Code>();
	private static List<Code> APPELLATION_LIST = new ArrayList<Code>();

	public final static String POSITION_FR = "Frontal";
	public final static String POSITION_BK = "backend";

	@Override
	public Code getCode(String code, Long level) {
		if (TOP_CODES == null) {
			refreshAll();
		}
		return APPELLATIONS.get(code);
	}

	public static void put2Map(List<Code> children) {
		for (Code code : children) {
			APPELLATIONS.put(code.getCname(), code);
		}
	}

	@Override
	public Map<String, Code> getCodes() {
		if (TOP_CODES == null) {
			refreshAll();
		}
		return APPELLATIONS;
	}

	@Override
	public List<Code> getSubCodeList() {
		return APPELLATION_LIST;
	}
}
