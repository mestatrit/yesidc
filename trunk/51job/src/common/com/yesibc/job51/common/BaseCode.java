package com.yesibc.job51.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.support.Address;
import com.yesibc.job51.company.ErrorHandler;
import com.yesibc.job51.dao.BaseCodeDao;
import com.yesibc.job51.model.Code;

public class BaseCode {

	public final static String ADDRESS = "address";
	public final static String WORK_YEAR = "work.year";
	public final static String SALARY_YEARLY = "salary.yearly";
	public final static String SALARY_MONTHLY = "salary.monthly";
	public final static String INDUSTRY = "industry";
	public final static String FUNCTION = "function";
	public final static String JOB_NATURE = "nature";
	public final static String SPECIALITY = "speciality";
	public final static String EDULEVEL = "eduLevel";
	public static final String LANGUAGE = "language";
	public static final String LEVEL = "level";
	public static final String SKILLS = "skills";
	public static final String APPENDIX = "appendix";

	public static final Long CODE_LEVEL_TOP = new Long(0);
	public static final Long CODE_LEVEL_FIRST = new Long(1);
	public static final Long CODE_LEVEL_SECOND = new Long(2);
	public static final Long CODE_LEVEL_THIRD = new Long(3);

	public static BaseCodeDao baseCodeDao = (BaseCodeDao) SpringContext
			.getBean("baseCodeDao");

	public static Map<String, Code> TOPS = new HashMap<String, Code>();
	public static Map<String, Code> PROVINCES = new HashMap<String, Code>();
	public static Map<String, Code> CONTRIES = new HashMap<String, Code>();
	public static Map<String, Code> CITIES = new HashMap<String, Code>();
	public static List<Code> TOP_CODES = refreshAll();

	private static List<Code> refreshAll() {
		// System.out.println("456");
		// TOP_CODES=new ArrayList<Code>();
		// TOP_CODES.add(new Code());
		// if(true){
		// return TOP_CODES;
		// }else{
		// return null;
		// }

		List<Code> codes = baseCodeDao.findByNameValue(Code.class, "codeLevel",
				CODE_LEVEL_TOP, "sortList", true);
		if (codes == null || codes.isEmpty()) {
			ErrorHandler.errorLogAndMail("Error failed!getTop");
			throw new NestedRuntimeException("Error failed!getTop");
		}

		put2Maps(codes);

		return codes;
	}

	private static void put2Maps(List<Code> codes) {
		for (Code code : codes) {
			TOPS.put(code.getCode(), code);
			if (ADDRESS.equals(code.getCode())) {
				Address.put2Contries(code.getChildren());
			}
		}
	}

	public static void main(String[] args) {
		try {
			System.out.println(TOP_CODES.size());
			System.out.println(TOP_CODES.size());
			System.out.println(TOP_CODES.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * TODO: 效率可提高
	 * @param str
	 * @return
	 */
	public static Map<Long, Code> getAddress(String str) {
		if (StringUtils.isEmpty(str)) {
			return null;
		}

		Map<Long, Code> map = new HashMap<Long, Code>();
		Code c = null;
		for (Map.Entry<String, Code> entry : CONTRIES.entrySet()) {
			c = (Code) entry.getValue();
			if (str.indexOf(c.getCname()) > -1) {
				map.put(CODE_LEVEL_FIRST, c);
			}
		}

		for (Map.Entry<String, Code> entry : PROVINCES.entrySet()) {
			c = (Code) entry.getValue();
			if (str.indexOf(c.getCname()) > -1) {
				map.put(CODE_LEVEL_SECOND, c);
			}
		}

		for (Map.Entry<String, Code> entry : CITIES.entrySet()) {
			c = (Code) entry.getValue();
			if (str.indexOf(c.getCname()) > -1) {
				map.put(CODE_LEVEL_THIRD, c);
			}
		}

		return map;
	}

}
