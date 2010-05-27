package com.yesibc.job51.test.dao;

import java.util.ArrayList;
import java.util.List;

import junit.framework.TestCase;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.dao.CompanyDao;
import com.yesibc.job51.model.ComAppend;
import com.yesibc.job51.model.ComContactHeader;
import com.yesibc.job51.model.ComEmail;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.service.CompanyInfoHandlerService;
import com.yesibc.job51.web.search.ProcessContext;
import com.yesibc.job51.web.support.CompanyInfoSupport;

public class TestCompanyDao extends TestCase {

	private static Log log = LogFactory.getLog(TestCompanyDao.class);

	public static CompanyInfoHandlerService companyInfoHandlerService = (CompanyInfoHandlerService) SpringContext
			.getBean("companyInfoHandlerService");
	public static CompanyDao companyDao = (CompanyDao) SpringContext.getBean("companyDao");

	static String str = "'<DIV class=\"jobs_txt\"> <p class=\"txt_font\">摩卡软件有限公司（Mocha Software Co.,Ltd.）"
			+ "随着公司业务的迅猛发展，目前已成为亚太地区最大的软件产品和解决方案提供商之一，我们为客户" + "提供创新的产品、专业的IT解决方案和优质的服务。<br>摩卡软件有限公司，下设近10个事业部。以先"
			+ "进的研发和技术理念，以及求知向上的工作氛围吸引着无数国、内外优秀的行业技术精英——博士、硕士" + "、学士学位的高素质人才600余名，在摩卡实验室，汇聚了一批具有国外研发经验的架构师、设计师，基于"
			+ "J2EE架构设计的摩卡五大产品，包括流程管理、监控软件、搜索引擎、以及手机办公等无线应用领域产品" + "。目前，摩卡软件有限公司自主研发的品牌软件—摩卡产品，已经在中国移动、中国联通以及交通银行"
			+ "等多家世界500强企业成功实施，客户遍布全国范围内的移动通信、金融、政府、民航等各个领域。同时，"
			+ "作为IBM、SUN、Oracle等国际知名企业的重要合作伙伴，在系统集成等方面有近10年的经验积累，拥有强"
			+ "大的技术团队支持WebSphere Portal、SunONE Portal、Oracle Portal以及IBM Tivoli系列产品的实施。"
			+ "<br>作为一家外资企业，摩卡软件在引入国际先进的管理理念的同时，提出被员工高度认同的核心价" + "值观，建立优秀的企业文化。我们的核心价值观是：“以客户为中心；高质量的产品、优质的服"
			+ "务；团结就是力量；不断创新、追求完美。”<br>现诚邀有志之士加盟，公司将为您提供公" + "平开放的工作环境，完善的福利政策，广阔的职业发展空间，科学高效全面基于价值的薪酬和"
			+ "激励机制。我们热切期待着您的加入。<br>公司福利：社会保险、住房公积金、商业医疗保险、"
			+ "意外交通保险、出差补助、手机补助、带薪年、病假、年度体检等等。</p> <p class=\"pot2\"></p>"
			+ "<p class=\"txt_font1\">公司网站：<a href=\"http://www.mochasoft.com.cn/\" target=\"_blank\">h"
			+ "ttp://www.mochasoft.com.cn/</a></p><p class=\"txt_font1\">联&nbsp;系&nbsp;人：姜小姐、王"
			+ "小姐</p><p class=\"txt_font1\">电子邮箱：<a href=\"mailto:job_bj@mochasoft.com.cn&amp;subjec"
			+ "t=%C9%EA%C7%EB%B9%F3%B9%AB%CB%BE%D4%DA51job%B7%A2%B2%BC%B5%C4%D6%B0%CE%BB\" class=\"orange"
			+ "\">job_bj@mochasoft.com.cn</a></p> </DIV>'";

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		log.info("save header!");
		try {
			testUpdateHeader();
			// testSaveHeader();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void testSaveHeader() {
		log.info("save header!111");
		Company com = new Company();
		com.setId(new Long(63));

		ComContactHeader ch = new ComContactHeader();
		ch.setCompany(com);
		ch.setCompanyName(com.getCompanyName());
		CompanyInfoSupport.setComContactHeaderCommon(ch, false);

		log.info("save header!222");

		// List<ComContactHeader> comContactHeaders = new
		// ArrayList<ComContactHeader>();
		// comContactHeaders.add(ch);

		// com.setComContactHeaders(comContactHeaders);

		// List<ComContactHeader> tempContactHeaders =
		// com.getComContactHeaders();
		// if(tempContactHeaders == null){
		// tempContactHeaders = new ArrayList<ComContactHeader>();
		// com.setComContactHeaders(tempContactHeaders);
		// tempContactHeaders.add(ch);
		// }

		// ComEmail ce = new ComEmail();
		// ce.setEmail("1111okok@163.com");
		// // ce.setComContactHeaders(comContactHeaders);
		// CompanyInfoSupport.setComEmailCommon(ce);
		// log.info("save header!333");
		//
		// List<ComEmail> ces = ch.getComEmails();
		// if (ces == null) {
		// ces = new ArrayList<ComEmail>();
		// ces.add(ce);
		// ch.setComEmails(ces);
		// }

		log.info("save header123!");
		companyInfoHandlerService.save(ch);
		log.info("save header!444");
	}

	public static void testUpdateHeader() {
		log.info("save header!111");
		Company com = companyDao.getById(new Long(63));

		log.info("save header!222");

		List<ComContactHeader> comContactHeaders = com.getComContactHeaders();

		// ComContactHeader cchd;
		// for(Iterator<ComContactHeader> it =
		// comContactHeaders.iterator();it.hasNext();){
		// cchd = it.next();
		// if(cchd.getId().equals(new Long(67))){
		// it.remove();
		// }
		// }

		ComEmail ce = new ComEmail();
		ce.setEmail("111okok@163.com");
		ce.setComContactHeaders(comContactHeaders);
		CompanyInfoSupport.setComEmailCommon(ce, true);
		log.info("save header!333");

		for (ComContactHeader cch : comContactHeaders) {
			// List<ComEmail> ces = cch.getComEmails();
			// ces.add(ce);
			cch.setCompany(com);
			cch.setCompanyName("dddddddddd");
			companyInfoHandlerService.update(cch);
			break;
		}

	}

	/**
	 * CompanyInfoSupport 原无header.
	 */
	public static void testUpdateComByNoHeader() {
		Company com = companyDao.getById(new Long(2));
		List<ComContactHeader> comContactHeaders = com.getComContactHeaders();
		if (comContactHeaders == null || comContactHeaders.isEmpty()) {
			log.info("==No comcontact header found.==Company Code[" + com.getCompanyCode() + "] Company Name["
					+ com.getCompanyName());
			comContactHeaders = new ArrayList<ComContactHeader>();
			ComContactHeader ch = new ComContactHeader();
			ch.setCompany(com);
			ch.setCompanyName(com.getCompanyName());
			comContactHeaders.add(ch);
			CompanyInfoSupport.setComContactHeaderCommon(ch, false);
			com.setComContactHeaders(comContactHeaders);
		}

		ComEmail ce = new ComEmail();
		ce.setEmail("ddabc2333@163.com");
		ce.setComContactHeaders(comContactHeaders);
		CompanyInfoSupport.setComEmailCommon(ce, true);

		for (ComContactHeader cch : comContactHeaders) {
			List<ComEmail> ces = cch.getComEmails();
			if (ces == null) {
				ces = new ArrayList<ComEmail>();
				cch.setComEmails(ces);
			}
			ces.add(ce);
		}

		companyInfoHandlerService.update(com);

	}

	/**
	 * CompanyInfoSupport 原无header.
	 */
	public static void testUpdateComByNoHeaders() {
		Company com = companyInfoHandlerService.getById(new Long(2));
		com.setBankAccount("abcdef");

		ProcessContext processContext = new ProcessContext();
		processContext.setLogTitle("ttt");
		// String address = "江苏省苏州市闸北区江场三路213号";
		String address = "上海市闸北区江场三路213号";

		int position = CompanyInfoSupport.setAddress(processContext, com, address);
		System.out.println("position" + position);

		companyInfoHandlerService.update(com);
	}

	public void testGetCompany() {
		List<Company> cs = companyDao.findAll(Company.class);
		System.out.println(cs.size());
	}

	@SuppressWarnings("unused")
	private static void test1() {
		try {
			Company c = new Company();
			System.out.println(str.length());
			System.out.println(StringUtils.absoluteLength(str));
			List<ComAppend> comAppends = new ArrayList<ComAppend>();
			ComAppend ca = new ComAppend();
			ca.setCompany(c);
			ca.setContents(str);
			ca.setLobType(ComAppend.LOB_TYPE_CLOB);
			c.setCompanyName("companyName");
			c.setComAppends(comAppends);
			comAppends.add(ca);
			System.out.print("companyInfoHandlerService:" + companyInfoHandlerService.toString());
			companyDao.save(c);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void testUpdateComByEmail() {
		companyInfoHandlerService.testUpdateComByEmail();
	}

	/**
	 * 原无header.
	 */
	public static void test() {
		companyInfoHandlerService.testUpdateComByNoHeaders();
	}
}
