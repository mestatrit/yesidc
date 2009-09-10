package com.yesibc.job51.service.support;

import java.math.BigDecimal;
import java.text.ParseException;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;

import com.yesibc.core.utils.DateUtils;
import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.dao.BaseCodeDao;
import com.yesibc.job51.dao.impl.BaseCodeDaoImpl;
import com.yesibc.job51.model.Person;

public class ParseResumeBasic {

	private static Log log = LogFactory.getLog(ParseResumeBasic.class);

	// SpringContext.getBean("baseCode");
	static BaseCodeDao baseCode = new BaseCodeDaoImpl();

	/**
	 * <pre>
	 * 
	 * </pre>
	 * 
	 * @param p
	 */
	public static void parseBasic(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.BASIC_INFO
				+ ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}
		TableRow[] rows = basicTag.getRows();
		String temp = "";
		for (int i = 0; i < rows.length; i++) {
			TableRow tr = (TableRow) rows[i];
			TableColumn[] td = tr.getColumns();
			if (td == null)
				continue;

			for (int j = 0; j < td.length; j++) {
				temp = ClawerUtils.getOrignText(td[j].toPlainTextString());
				if (ClawerConstants.BASIC_INFO_NAME.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					p.setNameDefault(temp);
				} else if (ClawerConstants.BASIC_INFO_SEX.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					p.setSex(temp);
				} else if (ClawerConstants.BASIC_INFO_BIR.equals(temp)) {
					++j;
					try {
						temp = ClawerUtils.removeSpace(td[j]
								.toPlainTextString());
						if (!"".equals(temp))
							p.setBirthday(DateUtils.stringToDate(temp,
									DateUtils.YMD_CN));
					} catch (ParseException e) {
						log.error("birthday error:", e);
					}
				} else if (ClawerConstants.BASIC_INFO_ADDR_LIVE.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					if (!"".equals(temp))
						p.setAddrLive(baseCode.queryCityByName(temp));
				} else if (ClawerConstants.BASIC_INFO_ADDR_HK.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					if (!"".equals(temp))
						p.setAddrDomicile(baseCode.queryProviceByName(temp));
				} else if (ClawerConstants.BASIC_INFO_WORK_YEAR.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					if (!"".equals(temp))
						p.setWorkYears(baseCode.queryByName(temp,
								BaseCode.WORK_YEAR, 0));
				} else if (ClawerConstants.BASIC_INFO_CRR_SALARY_YEARLY
						.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					if (!"".equals(temp))
						p.setSaralyYear(baseCode.queryByName(temp,
								BaseCode.SALARY_YEARLY, 0));
				} else if (ClawerConstants.BASIC_INFO_ADDR_DETAIL.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					p.setAddrLiveDetail(temp);
				} else if (ClawerConstants.BASIC_INFO_ADDR_ZIP.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					p.setAddrLiveZip(temp);
				} else if (ClawerConstants.BASIC_INFO_TEL_HOME.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					temp = ClawerUtils.removeSpace(temp);
					p.setTelFamily(temp);
				} else if (ClawerConstants.BASIC_INFO_TEL_COMPANY.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					p.setTelCompany(temp);
				} else if (ClawerConstants.BASIC_INFO_TEL_MOBILE.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					p.setTelMobile(temp);
				} else if (ClawerConstants.BASIC_INFO_TEL_BP.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					p.setTelBp(temp);
				} else if (ClawerConstants.BASIC_INFO_SELF_HP.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toPlainTextString());
					p.setHomepageSelf1(temp);
				} else if (ClawerConstants.BASIC_INFO_ONLINE.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpace(td[j].toHtml());
					if (!"".equals(temp)) {
						temp = getLinkWangwang(temp);
						p.setLinkWangwang(temp);
					}
				} else if (ClawerConstants.BASIC_INFO_BASIC_SALARY.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpaceAndFilter(td[j]
							.toPlainTextString());
					if (!"".equals(temp))
						p.setWorkSaralyBasic(new BigDecimal(temp));
				} else if (ClawerConstants.BASIC_INFO_SUBSIDY.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpaceAndFilter(td[j]
							.toPlainTextString());
					if (!"".equals(temp))
						p.setWorkSubsidy(new BigDecimal(temp));
				} else if (ClawerConstants.BASIC_INFO_BONUS.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpaceAndFilter(td[j]
							.toPlainTextString());
					if (!"".equals(temp))
						p.setWorkBonus(new BigDecimal(temp));
				} else if (ClawerConstants.BASIC_INFO_STOCK.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpaceAndFilter(td[j]
							.toPlainTextString());
					if (!"".equals(temp))
						p.setWorkStock(new BigDecimal(temp));
				}
			}
		}

	}

	private static String getLinkWangwang(String temp) {
		if (temp.length() < 6 || temp.indexOf("&uid=") < 0) {
			return "";
		}
		int i = temp.indexOf("&uid=");
		int j = temp.indexOf("&site=");
		temp = temp.substring((i + 5), j);
		return temp;
	}

}
