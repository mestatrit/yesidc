package com.yesibc.job51.common.support;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.Code;
import com.yesibc.job51.web.support.LogHandler;

public class Address extends BaseCode {

	/**
	 * @param str
	 * @return
	 */
	public static Map<Long, Code> getAddress(String str) {
		if (TOP_CODES == null) {
			refreshAll();
		}
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
			have = false;
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
					break;
				}
			}
		}

		have = false;
		for (Map.Entry<String, Code> entry : PROVINCES.entrySet()) {
			have = false;
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
					break;
				}
			}
		}

		have = false;
		for (Map.Entry<String, Code> entry : CITIES.entrySet()) {
			have = false;
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
					break;
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
				temp1 = code.getCname().substring(0, (code.getCname().length() - nation.length()));

				if (temp.equals(temp1)) {
					code.setCname(temp);
				}
			}

			BaseCode.PROVINCES.put(code.getCode(), code);

			// LogHandler.info("Start put cities to Province:" +
			// code.getCname());
			put2cities(code.getChildren());
			// LogHandler.info("Endign put cities to Province:" +
			// code.getCname());
		}
	}

	private static void put2cities(List<Code> codes) {

		// if (codes == null) {
		// LogHandler.info("null cityes!");
		// } else {
		// LogHandler.info("codes=" + codes.size());
		// }

		int i = 0;
		String temp = null;
		String temp1 = null;
		for (Code code : codes) {
			if (StringUtils.isEmpty(code.getCname())) {
				continue;
			}

			// LogHandler.info("city=" + code.getCname());
			for (String city : ClawerConstants.CITY_FILTERS) {
				if (code.getCname().indexOf(city) < 0) {
					continue;
				}

				i = code.getCname().lastIndexOf(city);
				if (i < 1) {
					continue;
				}
				temp = code.getCname().substring(0, i);
				temp1 = code.getCname().substring(0, (code.getCname().length() - city.length()));

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
		LogHandler.info("ttt");
	}

	@Override
	public Code getCode(String code, Long level) {
		if (CODE_LEVEL_SECOND.equals(level)) {
			return CONTRIES.get(code);
		} else if (CODE_LEVEL_THIRD.equals(level)) {
			return PROVINCES.get(code);
		} else if (CODE_LEVEL_FOURTH.equals(level)) {
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
