package com.yesiic.common;

import java.text.ParseException;
import java.util.Date;

import com.yesibc.core.utils.DateUtils;
import com.yesiic.base.model.Code;

public class ClawerConstants {

	// public final static boolean TEST = true;
	public static boolean TEST_DAO = false;

	public static boolean TEST_WEB = true;

	public static boolean TEST_WEB_REQUEST = true;

	public static boolean SHOW_FRAME = true;

	public static int TEST_WEB_NUM = 4;

	public static int THREADS_NUMBER = TEST_WEB_NUM;

	public static Date LICENSE_DATE = null;

	static {
		if (!TEST_WEB) {
			THREADS_NUMBER = Integer.parseInt(ClawerUtils.getServerConfByKey("threads.number"));
		}

		try {
			LICENSE_DATE = DateUtils.stringToDate(ClawerUtils.getServerConfByKey("license.date"),
					DateUtils.DAY_YMD_LINE);
		} catch (ParseException e) {
			LICENSE_DATE = new Date();
		}
	}

	public final static String TAG_SPACE = " ";
	public final static String TAG_SPACE_HTML = "&nbsp;";
	public final static String TAG_SPACE_TRIM = "";

	public final static long WAITING_BY_INTERVAL = 2000;
	
	public final static String PROC_LOG = "*-* ";

	public final static String FROM_WHERE_51JOB = "51job";

	public final static String ADDRESS_CHINA_CODE = "156";

	public final static String CREATE_USER = "YTB";

	public final static String UPDATE_USER = "YTB";

	public final static int JOBS_PER_PAGE = 50;

	public final static long WAITING_TIME_SECONDS = 2;

	public final static long WAITING_TIMES = 60;

	public final static long WAITING_TIMES_EXT = 5;

	public final static String[] EMAIL_SPLITS = { ";", ","," " };
	public final static String[] TEL_SPLITS = { ";", ","," " };

	public final static String EMAIL_ERROR_SUBJECT = "Error from Project 51job!";

	public final static long EXPIRED_DAYS = 180;

	/**
	 * punctuation.bracket.left=\u3010 punctuation.bracket.right=\u3011;
	 * punctuation.comma=\uFF0C
	 **/
	public final static String PUNCTUATION_BRACKET_LEFT = ClawerUtils.getValByKey("punctuation.bracket.left");;
	public final static String PUNCTUATION_BRACKET_RIGHT = ClawerUtils.getValByKey("punctuation.bracket.right");;
	public final static String PUNCTUATION_COMMA = ClawerUtils.getValByKey("punctuation.comma");;

	public final static String RECONNECT_CUT_NAME = ClawerUtils.getValByKey("reconnect.cut");
	public final static String RECONNECT_CUT_TAG = "Connect(this.form,'Disconnect_pppoe')";
	public final static String RECONNECT_RECONN_TAG = "Connect(this.form,'Connect_pppoe')";
	public final static String RECONNECT_RECONN_NAME = ClawerUtils.getValByKey("reconnect.reconn");
	public final static String VAL = "_val";
	public final static String RECONNECT_IP_TAG = ClawerUtils.getValByKey("reconnect.ip.tag");



	public final static String FILTER_SALARY1 = ClawerUtils.getValByKey("filter.salary1");
	public final static String FILTER_SALARY2 = ClawerUtils.getValByKey("filter.salary2");
	public final static String FILTER_SALARY3 = ClawerUtils.getValByKey("filter.salary3");
	public final static String FILTER_SPACE = ClawerUtils.getValByKey("filter.space1");
	public final static String[] FILTER_SPECIAL = ClawerUtils.getValByKey("special.filters").split(",");

	public final static String SPLIT_CHAR = ClawerUtils.getValByKey("split.char.comma");
	public final static String DEFAULT_USER = "bibiye";
	// "--"
	public final static String TIME_TAG_LINE = ClawerUtils.getValByKey("time.tag.two.horizontal.line");
	// "/"
	public final static String TIME_TAG_DIAGONAL = ClawerUtils.getValByKey("time.tag.diagonal");

	public final static String CHAR_COLON = ClawerUtils.getValByKey("common.char.colon");

	public final static String SKILL_NAME = ClawerUtils.getValByKey("skill.name");


	public final static String WEBRENDERER_ID = ClawerUtils.getServerConfByKey("webrenderer.id");
	public final static String WEBRENDERER_SN = ClawerUtils.getServerConfByKey("webrenderer.sn");

	public final static long COUNT_LOADED = Long.parseLong(ClawerUtils.getServerConfByKey("count.loaded.reconnect"));
	public final static String DIALOG_USERNAME = ClawerUtils.getServerConfByKey("dialog.username");
	public final static String DIALOG_PASSWORD = ClawerUtils.getServerConfByKey("dialog.password");

	public static final String MANUAL_LOG = "manual";
	public static final String LOG_URLS = "logurls";


	public final static String[] PROVINCE_FILTERS = ClawerUtils.getValByKey("province.filter.list").split(",");
	public final static String[] CITY_FILTERS = ClawerUtils.getValByKey("city.filter.list").split(",");
	public final static String[] FILTERS_ADDRESS = ClawerUtils.getValByKey("filters.address").split(",");

	public final static String JOB_NO_FOUND = ClawerUtils.getValByKey("job.no.found");

	public static final String ALERT_ERROR = "0001";

	public final static Code FROM_WHERE_51JOB_CODE = getFromWhere();
	public final static Code ADDRESS_CHINA = getChina();

	public static Code getChina() {
		if (!TEST_DAO) {
			return BaseCodeDispatch.getBaseCode(BaseCode.ADDRESS).getCode(ClawerConstants.ADDRESS_CHINA_CODE,
					BaseCode.CODE_LEVEL_SECOND);
		} else {
			return new Code();
		}
	}

	public static Code getFromWhere() {
		if (!TEST_DAO) {
			return BaseCodeDispatch.getBaseCode(BaseCode.FROM_WHERE).getCode(ClawerConstants.FROM_WHERE_51JOB,
					BaseCode.CODE_LEVEL_SECOND);
		} else {
			Code code = new Code();
			code.setCode(FROM_WHERE_51JOB);
			code.setCname(FROM_WHERE_51JOB);
			return code;
		}
	}

	public static void main(String[] args) {
		System.out.println("bbb=[" + DateUtils.dateToString(LICENSE_DATE, DateUtils.DAY_YMD_LINE) + "]");
		BaseCodeDispatch.getBaseCode(BaseCode.FROM_WHERE).getCode(ClawerConstants.FROM_WHERE_51JOB,
				BaseCode.CODE_LEVEL_SECOND);
		for (String name : PROVINCE_FILTERS)
			System.out.print("aaa=" + name);
	}

}
