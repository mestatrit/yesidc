package com.yesibc.job51.common;

import com.yesibc.job51.model.Code;

public class ClawerConstants {

	// public final static boolean TEST = true;
	public final static boolean TEST_DAO = false;

	public final static boolean TEST_WEB = false;

	public final static boolean SHOW_FRAME = false;

	public final static int TEST_WEB_NUM = 4;

	public final static String PROC_LOG = "*process*";

	public final static String FROM_WHERE_51JOB = "51job";

	public final static String ADDRESS_CHINA_CODE = "156";

	public final static String CREATE_USER = "YTB";

	public final static String UPDATE_USER = "YTB";

	public final static long WAITING_TIME = 10000;

	public final static String[] EMAIL_SPLITS = { ";", "," };

	public final static String EMAIL_ERROR_SUBJECT = "Error from Project 51job!";

	public static Code FROM_WHERE_51JOB_CODE = new Code();
	public static Code ADDRESS_CHINA = new Code();

	/**
	 * <pre>
	 * #基 本 信 息
	 * basic.info=\u57FA\u672C\u4FE1\u606F
	 * #自 我 评 价
	 * self.evaluation=\u81EA\u6211\u8BC4\u4EF7
	 * #求 职 意 向
	 * job.intent=\u6C42\u804C\u610F\u5411
	 * #工 作 经 验
	 * job.experience=\u5DE5\u4F5C\u7ECF\u9A8C
	 * #项 目 经 验
	 * project.experience=\u9879\u76EE\u7ECF\u9A8C
	 * #教 育 经 历
	 * edu.experience=\u6559\u80B2\u7ECF\u5386
	 * #培 训 经 历
	 * training.experience=\u57F9\u8BAD\u7ECF\u5386
	 * #证 书
	 * certification=\u8BC1\u4E66
	 * #语 言 能 力
	 * language.level=\u8BED\u8A00\u80FD\u529B
	 * #IT 技 能
	 * IT.skills=IT\u6280\u80FD
	 * #附 加 信 息
	 * attachment=\u9644\u52A0\u4FE1\u606F
	 * </pre>
	 */
	public final static String BASIC_INFO = ClawerUtils.getValByKey("basic.info");
	public final static String SELF_EVALUATION = ClawerUtils.getValByKey("self.evaluation");
	public final static String JOB_INTENT = ClawerUtils.getValByKey("job.intent");
	public final static String JOB_EXPERIENCE = ClawerUtils.getValByKey("job.experience");
	public final static String PROJECT_EXPERIENCE = ClawerUtils.getValByKey("project.experience");
	public final static String EDU_EXPERIENCE = ClawerUtils.getValByKey("edu.experience");
	public final static String TRAINING_EXPERIENCE = ClawerUtils.getValByKey("training.experience");
	public final static String CERTIFICATION = ClawerUtils.getValByKey("certification");
	public final static String LANGUAGE_LEVEL = ClawerUtils.getValByKey("language.level");
	public final static String IT_SKILLS = ClawerUtils.getValByKey("IT.skills");
	public final static String ATTACHMENT = ClawerUtils.getValByKey("attachment");
	public final static String RECONNECT_CUT_NAME = ClawerUtils.getValByKey("reconnect.cut");
	public final static String RECONNECT_CUT_TAG = "Connect(this.form,'Disconnect_pppoe')";
	public final static String RECONNECT_RECONN_TAG = "Connect(this.form,'Connect_pppoe')";
	public final static String RECONNECT_RECONN_NAME = ClawerUtils.getValByKey("reconnect.reconn");
	public final static String VAL = "_val";
	public final static String RECONNECT_IP_TAG = ClawerUtils.getValByKey("reconnect.ip.tag");

	/**
	 * <pre>
	 * basic.info.name=\u59D3\u540D
	 * basic.info.sex=\u6027\u522B
	 * basic.info.birthday=\u51FA\u751F\u65E5\u671F
	 * basic.info.live.addr=\u5C45\u4F4F\u5730
	 * basic.info.current.salary.yearly=\u76EE\u524D\u5E74\u85AA
	 * basic.info.tel.home=\u5BB6\u5EAD\u7535\u8BDD
	 * basic.info.tel.mobile=\u79FB\u52A8\u7535\u8BDD
	 * basic.info.tel.company=\u516C\u53F8\u7535\u8BDD
	 * basic.info.tel.bp=\u5BFB\u547C\u673A
	 * basic.info.self.homepage=\u4E2A\u4EBA\u4E3B\u9875
	 * basic.info.online.contact=\u5728\u7EBF\u8054\u7CFB
	 * basic.info.basic.salary.yearly=\u57FA\u672C\u5DE5\u8D44
	 * basic.info.subsidy=\u8865\u8D34/\u6D25\u8D34
	 * basic.info.bonus=\u5E74\u5EA6\u5956\u91D1/\u4F63\u91D1
	 * basic.info.stock=\u80A1\u7968
	 *</pre>
	 */
	public final static String BASIC_INFO_NAME = ClawerUtils.getValByKey("basic.info.name");
	public final static String BASIC_INFO_SEX = ClawerUtils.getValByKey("basic.info.sex");
	public final static String BASIC_INFO_BIR = ClawerUtils.getValByKey("basic.info.birthday");
	public final static String BASIC_INFO_ADDR_LIVE = ClawerUtils.getValByKey("basic.info.live.addr");
	public final static String BASIC_INFO_ADDR_HK = ClawerUtils.getValByKey("basic.info.domicile");
	public final static String BASIC_INFO_WORK_YEAR = ClawerUtils.getValByKey("basic.info.work.year");
	public final static String BASIC_INFO_ADDR_DETAIL = ClawerUtils.getValByKey("basic.info.addr.detail");
	public final static String BASIC_INFO_ADDR_ZIP = ClawerUtils.getValByKey("basic.info.addr.zip");
	public final static String BASIC_INFO_CRR_SALARY_YEARLY = ClawerUtils
			.getValByKey("basic.info.current.salary.yearly");
	public final static String BASIC_INFO_TEL_HOME = ClawerUtils.getValByKey("basic.info.tel.home");
	public final static String BASIC_INFO_TEL_MOBILE = ClawerUtils.getValByKey("basic.info.tel.mobile");
	public final static String BASIC_INFO_TEL_COMPANY = ClawerUtils.getValByKey("basic.info.tel.company");
	public final static String BASIC_INFO_TEL_BP = ClawerUtils.getValByKey("basic.info.tel.bp");
	public final static String BASIC_INFO_SELF_HP = ClawerUtils.getValByKey("basic.info.self.homepage");
	public final static String BASIC_INFO_ONLINE = ClawerUtils.getValByKey("basic.info.online.contact");
	public final static String BASIC_INFO_BASIC_SALARY = ClawerUtils.getValByKey("basic.info.basic.salary.yearly");
	public final static String BASIC_INFO_SUBSIDY = ClawerUtils.getValByKey("basic.info.subsidy");
	public final static String BASIC_INFO_BONUS = ClawerUtils.getValByKey("basic.info.bonus");
	public final static String BASIC_INFO_STOCK = ClawerUtils.getValByKey("basic.info.stock");

	public final static String FILTER_SALARY1 = ClawerUtils.getValByKey("filter.salary1");
	public final static String FILTER_SALARY2 = ClawerUtils.getValByKey("filter.salary2");
	public final static String FILTER_SALARY3 = ClawerUtils.getValByKey("filter.salary3");
	public final static String FILTER_SPACE = ClawerUtils.getValByKey("filter.space1");
	public final static String[] FILTER_SPECIAL = ClawerUtils.getValByKey("special.filters").split(",");

	/**
	 * <pre>
	 * job.intent.nature=\u5DE5\u4F5C\u6027\u8D28
	 * job.intent.industry=\u5E0C\u671B\u884C\u4E1A
	 * job.intent.addr=\u76EE\u6807\u5730\u70B9
	 * job.intent.salary=\u671F\u671B\u5DE5\u8D44
	 * job.intent.fun=\u76EE\u6807\u804C\u80FD
	 * </pre>
	 */
	public final static String JOB_INTENT_NATURE = ClawerUtils.getValByKey("job.intent.nature");
	public final static String JOB_INTENT_INDUSTRY = ClawerUtils.getValByKey("job.intent.industry");
	public final static String JOB_INTENT_ADDR = ClawerUtils.getValByKey("job.intent.addr");
	public final static String JOB_INTENT_SALARY = ClawerUtils.getValByKey("job.intent.salary");
	public final static String JOB_INTENT_FUN = ClawerUtils.getValByKey("job.intent.fun");

	public final static String SPLIT_CHAR = ClawerUtils.getValByKey("split.char.comma");
	public final static String DEFAULT_USER = "bibiye";
	// "--"
	public final static String TIME_TAG_LINE = ClawerUtils.getValByKey("time.tag.two.horizontal.line");
	// "/"
	public final static String TIME_TAG_DIAGONAL = ClawerUtils.getValByKey("time.tag.diagonal");

	public final static String CHAR_COLON = ClawerUtils.getValByKey("common.char.colon");

	public final static String SKILL_NAME = ClawerUtils.getValByKey("skill.name");

	/**
	 * <pre>
	 * 01 = 兴趣爱好
	 * 02 = 特长
	 * 03 = 职业目标 
	 * 04 = 特殊技能
	 * 5 = 社会活动
	 * 06 = 荣誉
	 * 07 = 宗教信仰
	 * 08 = 推荐信
	 * appendix.interesting=\u5174\u8DA3\u7231\u597D
	 * appendix.specialty=\u7279\u957F
	 * appendix.career.goal=\u804C\u4E1A\u76EE\u6807
	 * appendix.skills=\u7279\u6B8A\u6280\u80FD
	 * appendix.activities=\u793E\u4F1A\u6D3B\u52A8
	 * appendix.glory=\u8363\u8A89
	 * appendix.belief=\u5B97\u6559\u4FE1\u4EF0
	 * appendix.recommendation=\u63A8\u8350\u4FE1
	 * </pre>
	 */
	public final static String APPENDIX_INSTERESTING = ClawerUtils.getValByKey("appendix.interesting");
	public final static String APPENDIX_SPECIALITY = ClawerUtils.getValByKey("appendix.specialty");
	public final static String APPENDIX_CAREER_GOAL = ClawerUtils.getValByKey("appendix.career.goal");
	public final static String APPENDIX_SKILLS = ClawerUtils.getValByKey("appendix.skills");
	public final static String APPENDIX_ACTIVITIES = ClawerUtils.getValByKey("appendix.activities");
	public final static String APPENDIX_GLORY = ClawerUtils.getValByKey("appendix.glory");
	public final static String APPENDIX_BELIEF = ClawerUtils.getValByKey("appendix.belief");
	public final static String APPENDIX_RECOMMENDATION = ClawerUtils.getValByKey("appendix.recommendation");
	public final static String APPENDIX_OTHERS = ClawerUtils.getValByKey("appendix.others");
	public final static String JOBS_PERPAGE_DEFAULT = ClawerUtils.getValByKey("jobs.default.perpage");
	public final static String NEXT_PAGE_IMG = ClawerUtils.getValByKey("nextpage.img");
	public final static String JOB_URL_PREFIX = ClawerUtils.getValByKey("job.url.prefix");
	public final static String OTHER_POSITION = ClawerUtils.getValByKey("other.position");

	public final static String[] APPENDIX_ALL = { APPENDIX_INSTERESTING, APPENDIX_SPECIALITY, APPENDIX_CAREER_GOAL,
			APPENDIX_SKILLS, APPENDIX_ACTIVITIES, APPENDIX_GLORY, APPENDIX_BELIEF, APPENDIX_RECOMMENDATION };

	public final static String NEXTPAGE = ClawerUtils.getValByKey("nextpage");

	public final static int PAGESIZE_COMPANY = 30;
	public final static String WEBRENDERER_ID = ClawerUtils.getServerConfByKey("webrenderer.id");
	public final static String WEBRENDERER_SN = ClawerUtils.getServerConfByKey("webrenderer.sn");
	public static int THREADS_NUMBER = Integer.parseInt(ClawerUtils.getServerConfByKey("threads.number"));
	public final static long COUNT_LOADED = Long.parseLong(ClawerUtils.getServerConfByKey("count.loaded.reconnect"));
	public final static String DIALOG_USERNAME = ClawerUtils.getServerConfByKey("dialog.username");
	public final static String DIALOG_PASSWORD = ClawerUtils.getServerConfByKey("dialog.password");

	public static final String MANUAL_LOG = "manual";
	public static final String LOG_URLS = "logurls";

	/**
	 * <pre>
	 * company.industry=\u516C\u53F8\u884C\u4E1A\uFF1A
	 * company.nature=\u516C\u53F8\u6027\u8D28\uFF1A
	 * company.scale=\u516C\u53F8\u89C4\u6A21\uFF1A
	 * company.homepage=\u516C\u53F8\u7F51\u7AD9\uFF1A
	 * company.zip=\u90AE\u653F\u7F16\u7801\uFF1A
	 * company.fax=\u771F\uFF1A
	 * company.contact.person=\u4EBA\uFF1A
	 * company.tel=\u8BDD\uFF1A
	 * company.gif=http\://images.51job.com/im/2009/search/c/gsjjbt.gif
	 * </pre>
	 */
	public final static String[] COMPANY_LIST_HEADERS = ClawerUtils.getValByKey("company.list.headers").split(",");
	public final static String COMPANY_HOMEPAGE = ClawerUtils.getValByKey("company.homepage");
	public final static String COMPANY_ZIP = ClawerUtils.getValByKey("company.zip");
	public final static String COMPANY_FAX = ClawerUtils.getValByKey("company.fax");
	public final static String COMPANY_CONTACT_PERSON = ClawerUtils.getValByKey("company.contact.person");
	public final static String COMPANY_MOBILE = ClawerUtils.getValByKey("company.mobile");
	public final static String COMPANY_TEL = ClawerUtils.getValByKey("company.tel");
	public final static String COMPANY_GIF = ClawerUtils.getValByKey("company.gif");
	public final static String COMPANY_NO_RESULT = ClawerUtils.getValByKey("company.no.result");
	public final static String COMPANY_ADDRESS = ClawerUtils.getValByKey("company.address");
	public final static String COMPANY_INDUSTRY = ClawerUtils.getValByKey("company.industry");
	public final static String COMPANY_NATURE = ClawerUtils.getValByKey("company.nature");
	public final static String COMPANY_SCALE = ClawerUtils.getValByKey("company.scale");
	public final static String COMPANY_EMAIL = ClawerUtils.getValByKey("company.email");
	public final static String COMPANY_URL_TAG = ClawerUtils.getValByKey("company.url.tag");
	public final static String[] PROVINCE_FILTERS = ClawerUtils.getValByKey("province.filter.list").split(",");
	public final static String[] CITY_FILTERS = ClawerUtils.getValByKey("city.filter.list").split(",");
	public final static String[] FILTERS_ADDRESS = ClawerUtils.getValByKey("filters.address").split(",");

	public static final String ALERT_ERROR = "0001";

	static {
		if (!TEST_DAO) {
			FROM_WHERE_51JOB_CODE = BaseCodeDispatch.getBaseCode(BaseCode.FROM_WHERE).getCode(
					ClawerConstants.FROM_WHERE_51JOB, BaseCode.CODE_LEVEL_FIRST);
			ADDRESS_CHINA = BaseCodeDispatch.getBaseCode(BaseCode.ADDRESS).getCode(ClawerConstants.ADDRESS_CHINA_CODE,
					BaseCode.CODE_LEVEL_SECOND);
		} else {
			FROM_WHERE_51JOB_CODE.setCode("51job");
			FROM_WHERE_51JOB_CODE.setCname("51job");
		}
	}

	public static void main(String[] args) {
		for (String name : PROVINCE_FILTERS)
			System.out.print("aaa=" + name);
	}

}
