package com.yesiic.common.support;

import java.util.List;

import com.yesiic.base.model.Code;
import com.yesiic.common.BaseCode;

public class FromWhere extends BaseCode {

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

}
