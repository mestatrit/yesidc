package com.yesiic.common;

import java.util.List;
import java.util.Map;

import com.yesiic.base.model.Code;
import com.yesiic.common.support.Address;
import com.yesiic.common.support.AddressFilters;
import com.yesiic.common.support.Appellation;
import com.yesiic.common.support.FromWhere;

public class BaseCodeHolder {

	static BaseCode fromWhere = null;
	static BaseCode address = null;
	static BaseCode appellation = null;
	static BaseCode addressFilters = null;

	public static BaseCode getBaseCode(String type) {
		if (BaseCode.FROM_WHERE.equals(type)) {
			if (fromWhere == null) {
				return new FromWhere();
			} else {
				return fromWhere;
			}
		} else if (BaseCode.ADDRESS.equals(type)) {
			if (address == null) {
				return new Address();
			} else {
				return address;
			}
		} else if (BaseCode.APPELLATION.equals(type)) {
			if (appellation == null) {
				return new Appellation();
			} else {
				return appellation;
			}
		} else if (BaseCode.ADDRESS_FILTER.equals(type)) {
			if (addressFilters == null) {
				return new AddressFilters();
			} else {
				return addressFilters;
			}
		} else {
			return null;
		}
	}

	public static Code getAddress(String code, Long level) {
		return getBaseCode(BaseCode.ADDRESS).getCode(code, level);
	}

	public static Code getFromWhere(String code, Long level) {
		return getBaseCode(BaseCode.FROM_WHERE).getCode(code, level);
	}

	public static Code getAppellation(String code, Long level) {
		return getBaseCode(BaseCode.APPELLATION).getCode(code, level);
	}

	public static Code getAddressFilter(String code, Long level) {
		return getBaseCode(BaseCode.APPELLATION).getCode(code, level);
	}

	public static Map<String, Code> getAddresses() {
		return getBaseCode(BaseCode.ADDRESS).getCodes();
	}

	public static Map<String, Code> getFromWheres() {
		return getBaseCode(BaseCode.FROM_WHERE).getCodes();
	}

	public static Map<String, Code> getAppellations() {
		return getBaseCode(BaseCode.APPELLATION).getCodes();
	}

	public static Map<String, Code> getAddressFilters() {
		return getBaseCode(BaseCode.ADDRESS_FILTER).getCodes();
	}

	public static List<Code> getAddressList() {
		return getBaseCode(BaseCode.ADDRESS).getCodeList();
	}

	public static List<Code> getFromWhereList() {
		return getBaseCode(BaseCode.FROM_WHERE).getCodeList();
	}

	public static List<Code> getAppellationList() {
		return getBaseCode(BaseCode.APPELLATION).getCodeList();
	}

	public static List<Code> getAddressFilterList() {
		return getBaseCode(BaseCode.ADDRESS_FILTER).getCodeList();
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	}

}
