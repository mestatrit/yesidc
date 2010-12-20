package com.yesitc.baixing.web.parse;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.htmlparser.util.ParserException;

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
import com.yesiic.webswith.model.WebElements;
import com.yesitc.baixing.service.BxUtils;

public class ParseDetail extends AbstractDetailParser {

	private final static String DATA_ID = "container";
	private final static Long BAIXING = new Long(1002);
	private final static String[] DATA_CONTENT_TAG = { "发布时间：", "所在地：" };
	private static Log log = LogFactory.getLog(ParseDetail.class);
	private final static String[] CONTENT_FILTERS = { "该信息无法显示", "你要访问的页面不存在！","该信息已被发布人自己删除" };

	public void parsing(ProcessContext processContext) throws ApplicationException {
		try {
			String content = HtmlParserUtils.getHtmlByTag0Txt(processContext.getHtml(), "P", DATA_CONTENT_TAG,
					CoreConstants.CHARSET_UTF8).toHtml();
			if (content == null) {
				throw new ApplicationException(processContext.getLogTitle() + "getHtmlByTag0Txt-" + DATA_CONTENT_TAG[0]
						+ " is null!");
			}

			processContext.setSimPerson(set2Person(content, processContext));

			log.info(processContext.getLogTitle() + "[" + processContext.getTotal() + "]records is got!");

		} catch (Exception e) {
			throw new ApplicationException(e);
		}
	}

	private SimPerson set2Person(String content, ProcessContext processContext) throws ApplicationException {
		SimPerson simPerson = new SimPerson();

		List<SimPersonContactInfo> simPersonContactInfos = new ArrayList<SimPersonContactInfo>();
		simPerson.setSimPersonContactInfos(simPersonContactInfos);

		Map<String, String> all = new HashMap<String, String>();
		Map<String, String> qqs = ClawerUtils.getQQ(content);
		if (!CollectionUtils.isEmpty(qqs)) {
			all.putAll(qqs);
			for (Map.Entry<String, String> entry : qqs.entrySet()) {
				simPersonContactInfos.add(getContactInfo(simPerson, entry.getKey(),
						SimPersonContactInfo.CONTRACT_TAG_QQ));
			}
		}
		Map<String, String> telNos = ClawerUtils.getTelNo(content, qqs);
		if (!CollectionUtils.isEmpty(telNos)) {
			all.putAll(telNos);
			for (Map.Entry<String, String> entry : telNos.entrySet()) {
				SimPersonContactInfo sci = getContactInfo(simPerson, entry.getKey(),
						SimPersonContactInfo.CONTRACT_TAG_TEL);
				updateAreaCode(sci, processContext);
				simPersonContactInfos.add(sci);
			}
		}
		Map<String, String> mobiles = ClawerUtils.getMobile(content, qqs);
		if (!CollectionUtils.isEmpty(mobiles)) {
			all.putAll(mobiles);
			for (Map.Entry<String, String> entry : mobiles.entrySet()) {
				simPersonContactInfos.add(getContactInfo(simPerson, entry.getKey(),
						SimPersonContactInfo.CONTRACT_TAG_MOBILE));
			}
		}

		Map<String, String> names = ClawerUtils.getName(content);
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

	private void updateAreaCode(SimPersonContactInfo sci, ProcessContext processContext) throws ApplicationException {
		if (StringUtils.isEmpty(sci.getContractNo())) {
			return;
		}
		if (sci.getContractNo().length() > 10) {
			return;
		}
		WebElements wb = BxUtils.getCityNameFromUrl(processContext);
		String cityName = ClawerUtils.getTelAreaCode(wb.getName(), wb.getMemo());
		if(!StringUtils.isEmpty(cityName)){
			sci.setContractNo(cityName + "-" + sci.getContractNo());
		}
	}

	private SimPersonContactInfo getContactInfo(SimPerson simPerson, String no, String type) {
		SimPersonContactInfo simPersonContactInfo = new SimPersonContactInfo();
		simPersonContactInfo.setContractNo(no);
		simPersonContactInfo.setSimPerson(simPerson);
		simPersonContactInfo.setType(type);
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
		String url = "发221-66250763票，99250761联系021-66250761上134#1700#97#08 海13916525752牌131.1700.9.408小照133@1700@97@08 QQ50392913111在QQ6239齐qq:6239291，138-1700-97-09 QQ503929wdddd";
		// url = "-1234.3MhZ";
		try {
			Map<String, String> temp = ClawerUtils.getQQ(url);
			for (Map.Entry<String, String> entry : temp.entrySet()) {
				System.out.println("getQQ=" + entry.getKey());
			}
			System.out.println("======");
			Map<String, String> temp1 = ClawerUtils.getMobile(url, temp);
			for (Map.Entry<String, String> entry : temp1.entrySet()) {
				System.out.println("getMobile=" + entry.getKey());
			}
			System.out.println("======");
			Map<String, String> temp2 = ClawerUtils.getTelNo(url, temp);
			for (Map.Entry<String, String> entry : temp2.entrySet()) {
				System.out.println("getTelNo=" + entry.getKey() + "=" + entry.getValue());
			}
			System.out.println("======");
			Map<String, String> temp3 = ClawerUtils.getName(url);
			if (temp3 == null) {
				return;
			}
			for (Map.Entry<String, String> entry : temp3.entrySet()) {
				System.out.println("getName=" + entry.getKey());
			}

			url = "d大先生";
			temp3 = ClawerUtils.getName(url);
			if (temp3 == null) {
				return;
			}
			for (Map.Entry<String, String> entry : temp3.entrySet()) {
				System.out.println("getName1=" + entry.getKey());
			}

			url = "Mr生";
			temp3 = ClawerUtils.getName(url);
			if (temp3 == null) {
				return;
			}
			for (Map.Entry<String, String> entry : temp3.entrySet()) {
				System.out.println("getName2=" + entry.getKey());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected String getContentIncludeFilter(ProcessContext processContext) throws ApplicationException {
		String content = null;
		try {
			content = HtmlParserUtils.getHtmlById(processContext.getHtml(), DATA_ID, CoreConstants.CHARSET_UTF8)
					.toHtml();
		} catch (ParserException e) {
			throw new ApplicationException(e);
		}
		if (content == null) {
			throw new ApplicationException(processContext.getLogTitle() + "getHtmlById-" + DATA_ID + " is null!");
		}
		return content;
	}

	@Override
	protected boolean getFilter(ProcessContext processContext) {
		for (String str : CONTENT_FILTERS) {
			if (processContext.getFetchedContent().indexOf(str) > -1) {
				processContext.setFilterMsg(str);
				return true;
			}
		}
		return false;
	}

}
