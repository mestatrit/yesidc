package com.yesibc.job51.common.support;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.Code;

public class Address extends BaseCode {

	/**
	 * @param str
	 * @return
	 */
	public static Map<Long, Code> getAddress(String str) {
		if (StringUtils.isEmpty(str)) {
			return null;
		}

		Map<Long, Code> map = new HashMap<Long, Code>();

		if (ClawerConstants.TEST_DAO) {
			return map;
		}

		Code c = null;
		boolean have = false;
		for (Map.Entry<String, Code> entry : CONTRIES.entrySet()) {
			c = (Code) entry.getValue();
			if (str.indexOf(c.getCname()) > -1) {
				for (String filter : ClawerConstants.FILTERS_ADDRESS) {
					if (str.indexOf(c.getCname() + filter) > -1) {
						have = true;
						break;
					}
				}
				if (!have) {
					map.put(CODE_LEVEL_SECOND, c);
				}
			}
		}

		have = false;
		for (Map.Entry<String, Code> entry : PROVINCES.entrySet()) {
			c = (Code) entry.getValue();
			if (str.indexOf(c.getCname()) > -1) {
				for (String filter : ClawerConstants.FILTERS_ADDRESS) {
					if (str.indexOf(c.getCname() + filter) > -1) {
						have = true;
						break;
					}
				}
				if (!have) {
					map.put(CODE_LEVEL_THIRD, c);
				}
			}
		}

		have = false;
		for (Map.Entry<String, Code> entry : CITIES.entrySet()) {
			c = (Code) entry.getValue();
			if (str.indexOf(c.getCname()) > -1) {
				for (String filter : ClawerConstants.FILTERS_ADDRESS) {
					if (str.indexOf(c.getCname() + filter) > -1) {
						have = true;
						break;
					}
				}
				if (!have) {
					map.put(CODE_LEVEL_FOURTH, c);
				}
			}
		}

		return map;
	}

	public static void put2Contries(List<Code> codes) {
		for (Code code : codes) {
			if (StringUtils.isEmpty(code.getCname())) {
				continue;
			}

			BaseCode.CONTRIES.put(code.getCode(), code);
			put2Provinces(code.getChildren());
		}
	}

	private static void put2Provinces(List<Code> codes) {
		int i = 0;
		String temp = null;
		String temp1 = null;
		for (Code code : codes) {
			if (StringUtils.isEmpty(code.getCname())) {
				continue;
			}

			for (String nation : ClawerConstants.PROVINCE_FILTERS) {
				if (code.getCname().indexOf(nation) < 0) {
					continue;
				}

				i = code.getCname().lastIndexOf(nation);
				if (i < 1) {
					continue;
				}
				temp = code.getCname().substring(0, i);
				temp1 = code.getCname().substring(0,
						(code.getCname().length() - nation.length()));

				if (temp.equals(temp1)) {
					code.setCname(temp);
				}
			}

			BaseCode.PROVINCES.put(code.getCode(), code);
			put2cities(code.getChildren());
		}
	}

	private static void put2cities(List<Code> codes) {
		int i = 0;
		String temp = null;
		String temp1 = null;
		for (Code code : codes) {
			if (StringUtils.isEmpty(code.getCname())) {
				continue;
			}

			for (String city : ClawerConstants.CITY_FILTERS) {
				if (code.getCname().indexOf(city) < 0) {
					continue;
				}

				i = code.getCname().lastIndexOf(city);
				if (i < 1) {
					continue;
				}
				temp = code.getCname().substring(0, i);
				temp1 = code.getCname().substring(0,
						(code.getCname().length() - city.length()));

				if (temp.equals(temp1)) {
					code.setCname(temp);
				}
			}
			BaseCode.CITIES.put(code.getCode(), code);
			put2districts(code.getChildren());
		}
	}

	private static void put2districts(List<Code> children) {
		for (Code code : children) {
			if (StringUtils.isEmpty(code.getCname())) {
				continue;
			}
			BaseCode.DISTRICTS.put(code.getCode(), code);
		}
	}

	public static void main(String[] args) {

	}

	@Override
	public Code getCode(String code, Long level) {
		if (CODE_LEVEL_FIRST.equals(level)) {
			return CONTRIES.get(code);
		} else if (CODE_LEVEL_SECOND.equals(level)) {
			return PROVINCES.get(code);
		} else if (CODE_LEVEL_THIRD.equals(level)) {
			return CITIES.get(code);
		}
		return null;
	}

	public static void put2Continents(List<Code> children) {
		for (Code code : children) {
			if (StringUtils.isEmpty(code.getCname())) {
				continue;
			}

			BaseCode.CONTINENTS.put(code.getCode(), code);
			put2Contries(code.getChildren());
		}
	}
}
