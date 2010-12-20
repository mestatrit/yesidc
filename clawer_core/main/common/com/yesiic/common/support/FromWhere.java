package com.yesiic.common.support;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yesiic.base.model.Code;
import com.yesiic.common.BaseCode;

public class FromWhere extends BaseCode {

	private static Map<String, Code> FROM_WHERES = new HashMap<String, Code>();
	private static List<Code> FROM_WHERE_LIST = new ArrayList<Code>();

	@Override
	public Code getCode(String code, Long level) {
		if (TOP_CODES == null) {
			refreshAll();
		}
		return FROM_WHERES.get(code);
	}

	public static void put2Map(List<Code> children) {
		for (Code code : children) {
			FROM_WHERES.put(code.getCode(), code);
		}
	}

	@Override
	public Map<String, Code> getCodes() {
		if (TOP_CODES == null) {
			refreshAll();
		}
		return FROM_WHERES;
	}

	@Override
	public List<Code> getSubCodeList() {
		return FROM_WHERE_LIST;
	}
}
