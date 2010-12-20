package com.yesiic.common.support;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yesiic.base.model.Code;
import com.yesiic.common.BaseCode;

public class AddressFilters extends BaseCode {
	
	private static Map<String, Code> ADDRESS_FILTERS = new HashMap<String, Code>();
	private static List<Code> ADDRESS_FILTER_LIST = new ArrayList<Code>();

	@Override
	public Code getCode(String code, Long level) {
		if (TOP_CODES == null) {
			refreshAll();
		}
		return ADDRESS_FILTERS.get(code);
	}

	public static void put2Map(List<Code> children) {
		for (Code code : children) {
			ADDRESS_FILTERS.put(code.getCname(), code);
		}
	}

	@Override
	public Map<String, Code> getCodes() {
		if (TOP_CODES == null) {
			refreshAll();
		}
		return ADDRESS_FILTERS;
	}

	@Override
	public List<Code> getSubCodeList() {
		return ADDRESS_FILTER_LIST;
	}
}
