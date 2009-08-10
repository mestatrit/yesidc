package com.yesibc.job51.common.support;

import java.util.List;

import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.model.Code;

public class Address {
	
	public static void put2Contries(List<Code> codes) {
		for (Code code : codes) {
			BaseCode.CONTRIES.put(code.getCode(), code);
			put2Provinces(code.getChildren());
		}
	}

	private static void put2Provinces(List<Code> codes) {
		for (Code code : codes) {
			BaseCode.PROVINCES.put(code.getCode(), code);
			put2cities(code.getChildren());
		}
	}

	private static void put2cities(List<Code> codes) {
		for (Code code : codes) {
			BaseCode.CITIES.put(code.getCode(), code);
		}
	}
}
