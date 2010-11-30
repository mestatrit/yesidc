package com.yesitc.baixing;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.htmlparser.Node;
import org.htmlparser.tags.TableTag;
import org.htmlparser.util.ParserException;

import com.yesibc.core.CoreConstants;
import com.yesibc.core.components.http.HtmlParserUtils;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesiic.base.model.Code;
import com.yesiic.base.model.ExtendCode;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.AbstractParser;
import com.yesiic.common.parse.Parser;
import com.yesiic.dao.BaseCodeDao;
import com.yesiic.webswith.model.WebPages;

public class ImportZip extends AbstractParser implements Parser {
	private static final String[] DATA_CONTENT_TAG = { "市、县、区名", "长途区号", "邮政编码" };
	

	static String[] urls = { "http://www.123cha.com/postal/html/11.html", "http://www.123cha.com/postal/html/12.html",
			"http://www.123cha.com/postal/html/13.html", "http://www.123cha.com/postal/html/14.html",
			"http://www.123cha.com/postal/html/15.html", "http://www.123cha.com/postal/html/21.html",
			"http://www.123cha.com/postal/html/22.html", "http://www.123cha.com/postal/html/23.html",
			"http://www.123cha.com/postal/html/31.html", "http://www.123cha.com/postal/html/32.html",
			"http://www.123cha.com/postal/html/33.html", "http://www.123cha.com/postal/html/34.html",
			"http://www.123cha.com/postal/html/35.html", "http://www.123cha.com/postal/html/36.html",
			"http://www.123cha.com/postal/html/37.html", "http://www.123cha.com/postal/html/41.html",
			"http://www.123cha.com/postal/html/42.html", "http://www.123cha.com/postal/html/43.html",
			"http://www.123cha.com/postal/html/44.html", "http://www.123cha.com/postal/html/45.html",
			"http://www.123cha.com/postal/html/46.html", "http://www.123cha.com/postal/html/50.html",
			"http://www.123cha.com/postal/html/51.html", "http://www.123cha.com/postal/html/52.html",
			"http://www.123cha.com/postal/html/53.html", "http://www.123cha.com/postal/html/54.html",
			"http://www.123cha.com/postal/html/61.html", "http://www.123cha.com/postal/html/62.html",
			"http://www.123cha.com/postal/html/63.html", "http://www.123cha.com/postal/html/64.html",
			"http://www.123cha.com/postal/html/65.html", "http://www.123cha.com/postal/html/71.html",
			"http://www.123cha.com/postal/html/81.html", "http://www.123cha.com/postal/html/82.html" };

	private static BaseCodeDao baseCodeDao = (BaseCodeDao) SpringContext.getBean("baseCodeDao");

	public static void main(String[] args) {
		try {
			ImportZip iz = (ImportZip) SpringContext.getBean("importZip");
			for (String url : urls) {
				ProcessContext processContext = new ProcessContext();
				WebPages wp = new WebPages();
				wp.setUrl(url);
				processContext.setWp(wp);
				processContext.setLogTitle(url);
				iz.parse(processContext);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void parse(ProcessContext processContext) {
		try {
			prepareParse(processContext);

			parsing(processContext);
		} catch (Exception e) {
			System.out.println("==eee==ee==" + processContext.getWp().getUrl());
			e.printStackTrace();
		}
	}

	private void parsing(ProcessContext processContext) throws ParserException, ApplicationException {
		Node node = HtmlParserUtils.getHtmlByTag0Txt(processContext.getHtml(), "TABLE", DATA_CONTENT_TAG,
				CoreConstants.CHARSET_UTF8);
		if (node == null) {
			throw new ApplicationException(processContext.getLogTitle() + "getHtmlByTag-" + DATA_CONTENT_TAG[0]
					+ " is null!");
		}
		List<String[]> trs = HtmlParserUtils.getAllTRs((TableTag) node);

		List<ExtendCode> extendCodes = new ArrayList<ExtendCode>();
		Date now = new Date();
		for (String[] tr : trs) {
			if (tr[0].indexOf(DATA_CONTENT_TAG[0]) > -1) {
				continue;
			}
			String areaName1 = StringUtils.cutAllSpacer(tr[0]);
			if (StringUtils.isEmpty(areaName1) || areaName1.equals("&nbsp;")) {
				continue;
			}
			String areaCode1 = StringUtils.cutAllSpacer(tr[1]);
			String zip1 = StringUtils.cutAllSpacer(tr[2]);
			List<Code> codes1 = baseCodeDao.queryByName(areaName1, null, "address");
			ExtendCode ecArea1 = setExtendCode(now, areaName1, areaCode1, ExtendCode.CODE_TYPE_AREA_CODE);
			if (!CollectionUtils.isEmpty(codes1)) {
				ecArea1.setParent(codes1.get(0).getId());
			} else {
				System.out.println(processContext.getWp().getUrl() + "==" + areaName1 + " not match!");
			}

			ExtendCode ecZip1 = setExtendCode(now, areaName1, zip1, ExtendCode.CODE_TYPE_ZIP);
			if (!CollectionUtils.isEmpty(codes1)) {
				ecZip1.setParent(codes1.get(0).getId());
			}
			extendCodes.add(ecArea1);
			extendCodes.add(ecZip1);

			if (tr.length < 5) {
				continue;
			}

			String areaName2 = StringUtils.cutAllSpacer(tr[3]);
			if (StringUtils.isEmpty(areaName2) || areaName2.equals("&nbsp;")) {
				continue;
			}
			if (tr[4] == null) {
				continue;
			}
			String areaCode2 = StringUtils.cutAllSpacer(tr[4]);
			if (StringUtils.isEmpty(areaCode2) || areaCode2.equals("&nbsp;")) {
				continue;
			}

			String zip2 = StringUtils.cutAllSpacer(tr[5]);
			List<Code> codes2 = baseCodeDao.queryByName(areaName2, null, "address");
			ExtendCode ecArea2 = setExtendCode(now, areaName2, areaCode2, ExtendCode.CODE_TYPE_AREA_CODE);
			if (!CollectionUtils.isEmpty(codes2)) {
				ecArea2.setParent(codes2.get(0).getId());
			} else {
				System.out.println(processContext.getWp().getUrl() + "==" + areaName2 + " not match!");
			}
			
			ExtendCode ecZip2 = setExtendCode(now, areaName2, zip2, ExtendCode.CODE_TYPE_ZIP);
			if (!CollectionUtils.isEmpty(codes2)) {
				ecZip2.setParent(codes2.get(0).getId());
			}
			extendCodes.add(ecArea2);
			extendCodes.add(ecZip2);
		}
		int i=0;
		for (ExtendCode ec : extendCodes) {
			i++;
			//System.out.println(processContext.getWp().getUrl() + "==" + ec.getName() + ",=" + ec.getCode());
			if(ec.getCode() == null || ec.getCode().equals("")){
				continue;
			}
			try {
				//baseCodeDao.save(ec);
			} catch (Exception e) {
				System.out.println("e==" + e.getMessage());
			}
		}
	}

	private ExtendCode setExtendCode(Date now, String areaName, String areaCode, String type) {
		ExtendCode ec = new ExtendCode();
		ec.setCode(areaCode);
		ec.setCodeType(type);
		ec.setName(areaName);
		ec.setUpdateDate(now);
		ec.setUpdateUser(ClawerConstants.UPDATE_USER);
		return ec;
	}
}
