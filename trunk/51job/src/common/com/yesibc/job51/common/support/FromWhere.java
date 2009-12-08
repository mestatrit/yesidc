package com.yesibc.job51.common.support;

import java.util.List;

import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.model.Code;

public class FromWhere extends BaseCode {

	@Override
	public Code getCode(String code, Long level) {
		return FROM_WHERES.get(code);
	}

	public static void put2Map(List<Code> children) {
		for (Code code : children) {
			FROM_WHERES.put(code.getCode(), code);
		}		
	}

}
