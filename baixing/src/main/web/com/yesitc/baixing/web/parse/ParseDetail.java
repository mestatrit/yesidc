package com.yesitc.baixing.web.parse;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.CoreConstants;
import com.yesibc.core.components.http.HtmlParserUtils;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesiic.common.ClawerUtils;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.AbstractDetailParser;
import com.yesiic.person.model.SimPerson;
import com.yesiic.person.model.SimPersonContactInfo;

public class ParseDetail extends AbstractDetailParser {

	private final static String DATA_ID = "content";
	private final static Long BAIXING = new Long(1002);
	private final static String[] DATA_CONTENT_TAG = { "发布时间：", "所在地：" };
	private static Log log = LogFactory.getLog(ParseDetail.class);

	public void parsing(ProcessContext processContext) throws ApplicationException {
		try {
			String content = HtmlParserUtils.getHtmlById(processContext.getHtml(), DATA_ID, CoreConstants.CHARSET_UTF8)
					.toHtml();
			if (content == null) {
				throw new ApplicationException(processContext.getLogTitle() + "getHtmlById-" + DATA_ID + " is null!");
			}

			content = HtmlParserUtils.getHtmlByTag0Txt(processContext.getHtml(), "P", DATA_CONTENT_TAG,
					CoreConstants.CHARSET_UTF8).toHtml();
			if (content == null) {
				throw new ApplicationException(processContext.getLogTitle() + "getHtmlByTag-" + DATA_ID + " is null!");
			}

			processContext.setSimPerson(set2Person(content));

			log.info(processContext.getLogTitle() + "[" + processContext.getTotal() + "]records is got!");

		} catch (Exception e) {
			throw new ApplicationException(e);
		}
	}

	private SimPerson set2Person(String content) {
		Date now = new Date();
		SimPerson simPerson = new SimPerson();
		simPerson.setCreateDate(now);
		simPerson.setUpdateDate(now);

		List<SimPersonContactInfo> simPersonContactInfos = new ArrayList<SimPersonContactInfo>();

		Map<String, String> all = new HashMap<String, String>();
		Map<String, String> qqs = ClawerUtils.getQQ(content);
		if (!CollectionUtils.isEmpty(qqs)) {
			all.putAll(qqs);
			for (Map.Entry<String, String> entry : qqs.entrySet()) {
				simPersonContactInfos.add(getContactInfo(now, simPerson, entry.getKey(),
						SimPersonContactInfo.CONTRACT_TAG_QQ));
			}
		}
		Map<String, String> telNos = ClawerUtils.getTelNo(content, qqs);
		if (!CollectionUtils.isEmpty(telNos)) {
			all.putAll(telNos);
			for (Map.Entry<String, String> entry : telNos.entrySet()) {
				simPersonContactInfos.add(getContactInfo(now, simPerson, entry.getKey(),
						SimPersonContactInfo.CONTRACT_TAG_TEL));
			}
		}
		Map<String, String> mobiles = ClawerUtils.getMobile(content, qqs);
		if (!CollectionUtils.isEmpty(mobiles)) {
			all.putAll(mobiles);
			for (Map.Entry<String, String> entry : mobiles.entrySet()) {
				simPersonContactInfos.add(getContactInfo(now, simPerson, entry.getKey(),
						SimPersonContactInfo.CONTRACT_TAG_MOBILE));
			}
		}

		Map<String, String> names = ClawerUtils.getName(content, all);
		String name = "";
		if (!CollectionUtils.isEmpty(names)) {
			all.putAll(mobiles);
			for (Map.Entry<String, String> entry : names.entrySet()) {
				if ("".equals(name)) {
					name = entry.getKey();
				} else {
					name = name + "," + entry.getKey();
				}
			}
			if (StringUtils.absoluteLength(name) > 50) {
				name = StringUtils.subStringByByte(name, 0, 49);
			}
		}
		simPerson.setNameNick(name);
		simPerson.setSex(ClawerUtils.getSex(names));
		simPerson.setFromWhere(BAIXING);
		return simPerson;
	}

	private SimPersonContactInfo getContactInfo(Date now, SimPerson simPerson, String no, String type) {
		SimPersonContactInfo simPersonContactInfo = new SimPersonContactInfo();
		simPersonContactInfo.setContractNo(no);
		simPersonContactInfo.setSimPerson(simPerson);
		simPersonContactInfo.setType(type);
		simPersonContactInfo.setUpdateDate(now);
		return simPersonContactInfo;
	}

	public static Integer test(String str) {
		if (str == null || str.trim().length() == 0)
			return null;
		final String REGEX = "^.*?(-?\\d+)$";
		Pattern p = Pattern.compile(REGEX, Pattern.DOTALL); // 要想效率高点把它静态化
		Matcher m = p.matcher(str);
		if (!m.matches())
			return null;
		return new Integer(m.group(1));
	}

	public static void main(String[] args) {
		String url = "发票，上海025-5239291牌照02-82392913 025-52392913 0256-52392913在QQ6666666239291齐QQ:6239291全小QQ在xxxxx6239291，联系方式：13162869509联系我时，请一定说2342明在百姓网看到的，谢谢！";
		// url = "-1234.3MhZ";
		try {
			Pattern p = Pattern.compile("[\\d]{11,12}|([\\d]{3,4}[-])?[\\d]{7,8}");
			Matcher m = p.matcher(url);
			while (m.find()) {
				System.out.println(m.group());
			}
			System.out.println("========");
			p = Pattern.compile("([Q]{2}[^0-9]{0,10})[\\d]{7,8}");
			m = p.matcher(url);
			while (m.find()) {
				System.out.println(m.group());
			}
			System.out.println("========");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
