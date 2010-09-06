package com.yesiic.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.core.spring.SpringContext;
import com.yesiic.base.model.Code;
import com.yesiic.common.support.Address;
import com.yesiic.common.support.FromWhere;
import com.yesiic.dao.BaseCodeDao;


public abstract class BaseCode {

	protected static Log log = LogFactory.getLog(BaseCode.class);
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

	public static List<Code> TOP_CODES = null;

	public static boolean loaded = false;

	public static Integer i = 0;

	public BaseCode() {
		if (!loaded) {
			synchronized (i) {
				if (!loaded) {
					refreshAll();
				}
			}
		}
	}

	protected static void refreshAll() {

		LogHandler.info("Refresh i:" + (++i) + "times.");

		if (ClawerConstants.TEST_DAO) {
			TOP_CODES = new ArrayList<Code>();
			TOP_CODES.add(new Code());
			loaded = true;
		} else {

			BaseCodeDao baseCodeDao = (BaseCodeDao) SpringContext.getBean("baseCodeDao");

			TOP_CODES = baseCodeDao.findByNameValue(Code.class, "codeLevel", CODE_LEVEL_TOP, "sortList", true);
			if (TOP_CODES == null || TOP_CODES.isEmpty()) {
				ErrorHandler.errorLogAndMail("Error failed!getTop");
				throw new NestedRuntimeException("Error failed!getTop");
			}
			put2Maps();
			loaded = true;
		}
	}

	private static void put2Maps() {
		for (Code code : TOP_CODES) {
			TOPS.put(code.getCode(), code);
			if (ADDRESS.equals(code.getCode())) {
				Address.put2Continents(code.getChildren());
			} else if (FROM_WHERE.equals(code.getCode())) {
				FromWhere.put2Map(code.getChildren());
			}
		}
	}

	@SuppressWarnings("static-access")
	public static void main(String[] args) {
		try {
			for (int o = 0; o < 50; o++) {
				new Thread() {
					public void run() {
						BaseCode b = new Address();
						System.out.println(b.getTopCode("tt"));
					}
				}.start();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Code getTopCode(String code) {
		return TOPS.get(code);
	}

	public abstract Code getCode(String code, Long level);

}
