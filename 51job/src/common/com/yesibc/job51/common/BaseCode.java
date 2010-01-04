package com.yesibc.job51.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.common.support.Address;
import com.yesibc.job51.common.support.FromWhere;
import com.yesibc.job51.company.ErrorHandler;
import com.yesibc.job51.company.LogHandler;
import com.yesibc.job51.dao.BaseCodeDao;
import com.yesibc.job51.model.Code;

public abstract class BaseCode {

	public static BaseCodeDao baseCodeDao = (BaseCodeDao) SpringContext
			.getBean("baseCodeDao");

	public final static String ADDRESS = "address";
	public final static String WORK_YEAR = "work.year";
	public final static String SALARY_YEARLY = "salary.yearly";
	public final static String SALARY_MONTHLY = "salary.monthly";
	public final static String INDUSTRY = "industry";
	public final static String FUNCTION = "function";
	public final static String COMPANY_NATURE = "company.nature";
	public final static String SPECIALITY = "speciality";
	public final static String EDULEVEL = "edu.level";
	public static final String LANGUAGE = "language";
	public static final String LEVEL = "level";
	public static final String SKILLS = "skills";
	public static final String APPENDIX = "appendix";
	public static final String FROM_WHERE = "from.where";
	public static final String COMPANY_SCALE = "company.scale";

	public static final Long CODE_LEVEL_TOP = new Long(0);
	public static final Long CODE_LEVEL_FIRST = new Long(1);
	public static final Long CODE_LEVEL_SECOND = new Long(2);
	public static final Long CODE_LEVEL_THIRD = new Long(3);
	public static final Long CODE_LEVEL_FOURTH = new Long(4);
	public static final Long CODE_LEVEL_FIFTH = new Long(5);
	
	public static Map<String, Code> TOPS = new HashMap<String, Code>();
	public static Map<String, Code> CONTINENTS = new HashMap<String, Code>();
	public static Map<String, Code> CONTRIES = new HashMap<String, Code>();
	public static Map<String, Code> PROVINCES = new HashMap<String, Code>();
	public static Map<String, Code> CITIES = new HashMap<String, Code>();
	public static Map<String, Code> DISTRICTS = new HashMap<String, Code>();
	public static Map<String, Code> FROM_WHERES = new HashMap<String, Code>();

	public static List<Code> TOP_CODES = refreshAll();

	public static int i = 0;

	private static List<Code> refreshAll() {
		// System.out.println("456");
		// TOP_CODES=new ArrayList<Code>();
		// TOP_CODES.add(new Code());
		// if(true){
		// return TOP_CODES;
		// }else{
		// return null;
		// }

		LogHandler.info("Refresh:" + (++i) + "times.");

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
				Address.put2Continents(code.getChildren());
			} else if (FROM_WHERE.equals(code.getCode())) {
				FromWhere.put2Map(code.getChildren());
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

	public static Code getTopCode(String code) {
		return TOPS.get(code);
	}

	public abstract Code getCode(String code, Long level);

}