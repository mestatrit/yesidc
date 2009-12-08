package com.yesibc.job51.company.search1;

import java.util.List;

import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.job51.company.ErrorHandler;
import com.yesibc.job51.company.JobMain;
import com.yesibc.job51.company.JobSupport;

public class LocateCompanyInfo {

	public static final String COMPANY_URL = "http://search.51job.com/list/co";
	private static final String[] COMPANY_LIST_TAGS = { "职位名称", "公司名称", "工作地点",
			"发布日期" };
	private static final String COMPANY_LIST_ID = "resultList";
	private static final String COMPANY_LIST_RESULT_0 = "对不起,没有找到符合您条件的职位!";

	private static final String[] COMPANY_DETAIL_TAGS = { "公司行业：", "公司性质：",
			"公司规模：", "http://images.51job.com/im/2009/search/c/gsjjbt.gif",// 4
			"公司网站：", "址：", "邮政编码：", "真：", "人：",// 9
			"话：", "电子邮箱：" };// 11
	private static final String[] CRR_COMPANY_DETAIL_TAGS = {
			COMPANY_DETAIL_TAGS[0], COMPANY_DETAIL_TAGS[3] };

	public static int checkValidation() {
		List<IElement> elements = JobSupport.getElements(JobMain.getDoc()
				.getAll().tags("TABLE"), "id", COMPANY_LIST_ID);

		errorHandle(elements, "Parse company list error!checkValidation!URL="
				+ JobMain.BROWSER.getURL());

		String innerHtml = elements.get(0).getInnerHTML();
		for (String temp : COMPANY_LIST_TAGS) {
			if (innerHtml.indexOf(temp) < 0) {
				ErrorHandler.error("Parse company list error 1!");
				throw new NestedRuntimeException("Parse company list error 1!");
			}
		}

		if (innerHtml.indexOf(COMPANY_LIST_RESULT_0) > -1) {
			return 0;
		}

		List<IElement> companies = JobSupport.getElements(JobMain.getDoc()
				.getAll(), "A", "href", LocateCompanyInfo.COMPANY_URL);
		if (companies == null) {
			return 0;
		} else {
			return companies.size();
		}

	}

	public static void checkCompanyDetail(IDocument doc) {
		String body = doc.getBody().getOuterHTML();
		for (String tag : CRR_COMPANY_DETAIL_TAGS) {
			if (body.indexOf(tag) < 0) {
				ErrorHandler.error("Company detail error!");
				ErrorHandler.error("body=" + body);
				throw new NestedRuntimeException("Company detail error!");
			}
		}
	}

	public static String[] getComIndustryTypeScale(IDocument doc, String string) {
		String[] ieStr = { COMPANY_DETAIL_TAGS[0] };
		List<IElement> ies = JobSupport.getElementsByTxt(doc.getAll()
				.tags("TD"), ieStr);

		String[] str = new String[] { "", "", "", "" };
		if (ies == null || ies.isEmpty()) {
			return str;
		}
		// errorHandle(ies, "Company detail error!getComIndustryTypeScale!URL="
		// + string);

		String outHtml = ies.get(0).getOuterHTML();
		int i = outHtml.indexOf(COMPANY_DETAIL_TAGS[0]);
		int j = 0;
		if (i > -1 && outHtml.length() > (i + 14)) {
			j = outHtml.indexOf("<", (i + 14));
			if (j > (i + 14)) {
				String[] temp = getStr(outHtml.substring((i + 14), j));
				str[0] = temp[0];
				str[1] = temp[1];
			}
		}

		i = outHtml.indexOf(COMPANY_DETAIL_TAGS[1]);
		if (i > 0) {
			j = outHtml.indexOf("<", (i + 14));
			if (j > (i + 14)) {
				str[2] = getStr1(outHtml.substring((i + 14), j));
			}
		} else {
			str[2] = "";
		}

		i = outHtml.indexOf(COMPANY_DETAIL_TAGS[2]);
		if (i > 0) {
			j = outHtml.indexOf("<", (i + 14));
			if (j > (i + 14)) {
				str[3] = getStr1(outHtml.substring((i + 14), j));
			}
		} else {
			str[3] = "";
		}

		return str;
	}

	private static String getStr1(String temp) {
		int i = 0;
		while (true) {
			i = temp.indexOf("&nbsp;");
			if (i == 0) {
				temp = temp.substring(6).replace("&nbsp;", "");
			} else {
				return temp.replace("&nbsp;", "");
			}
		}
	}

	private static String[] getStr(String temp) {
		int i = 0;
		String[] str = new String[2];
		while (true) {
			i = temp.indexOf("&nbsp;");
			if (i == 0) {
				temp = temp.substring(6);
			} else {
				if (i < 0) {
					str[0] = temp;
					str[1] = "";
				} else {
					str[0] = temp.substring(0, i);
					temp = temp.substring(i);
					while (true) {
						i = temp.indexOf("&nbsp;");
						if (i == 0) {
							temp = temp.substring(6);
						} else {
							str[1] = temp.replace("&nbsp;", "");
							break;
						}
					}
				}
				break;
			}
		}
		return str;
	}

	public static String getDescription(IDocument doc, String string) {
		List<IElement> ies = JobSupport.getElements(doc.getAll().tags("DIV"),
				"class", "jobs_txt");

		errorHandle(ies, "Company detail error!getDescription!URL=" + string);

		return ies.get(0).getOuterHTML();
	}

	public static String getWebsite(IDocument doc, String string) {
		List<IElement> ies = JobSupport.getElements(doc.getAll().tags("P"),
				"P", "class", "txt_font1", COMPANY_DETAIL_TAGS[4]);

		if (ies == null || ies.isEmpty()) {
			return "";
		}

		String temp = ies.get(0).getInnerHTML();
		int i = temp.indexOf("\">");
		int j = temp.indexOf("</");
		if ((i + 2) < j) {
			temp = temp.substring(i + 2, j);
		}

		return temp;
	}

	public static String getAddress(IDocument doc, String string) {
		List<IElement> ies = JobSupport.getElements(doc.getAll().tags("P"),
				"P", "class", "txt_font1", COMPANY_DETAIL_TAGS[5]);

		if (ies == null || ies.isEmpty()) {
			return "";
		}

		String temp = ies.get(0).getInnerHTML();
		// errorHandle(ies, "Company detail error!getAddress!URL=" + string);
		int i = temp.indexOf(COMPANY_DETAIL_TAGS[5]);
		int j = temp.indexOf("<");

		if(j>(i+2)){
			return temp.substring((i + 2),j).replace("&nbsp;", "");
		}
		else if (temp.length() > (i + 2)) {
			return temp.substring(i + 2).replace("&nbsp;", "");
		} else {
			return "";
		}

	}

	private static void errorHandle(List<IElement> ies, String str) {
		if (ies == null || ies.size() < 1) {
			ErrorHandler.errorLogAndMail("Error failed!" + str);
			throw new NestedRuntimeException("Error failed!" + str);
		}

		if (ies.size() != 1) {
			ErrorHandler.errorLogAndMail("Error warning~size<>1!" + str);
		}

	}

	public static String getZip(IDocument doc, String url) {
		List<IElement> ies = JobSupport.getElements(doc.getAll().tags("P"),
				"P", "class", "txt_font1", COMPANY_DETAIL_TAGS[6]);
		if (ies == null || ies.isEmpty()) {
			return "";
		}
		// errorHandle(ies, "Company detail error!getZip!URL=" + url);
		String temp = ies.get(0).getInnerHTML();
		if (temp.length() > 5) {
			return temp.substring(5);
		} else {
			return "";
		}
	}

	public static String getFax(IDocument doc, String url) {
		List<IElement> ies = JobSupport.getElements(doc.getAll().tags("P"),
				"P", "class", "txt_font1", COMPANY_DETAIL_TAGS[7]);
		if (ies == null || ies.isEmpty()) {
			return "";
		}
		// errorHandle(ies, "Company detail error!getFax!URL=" + url);

		String temp = ies.get(0).getInnerHTML();
		int i = temp.indexOf(COMPANY_DETAIL_TAGS[7]);
		if (i > 0) {
			temp = temp.substring(i + COMPANY_DETAIL_TAGS[7].length());
			return temp;
		} else {
			return "";
		}
	}

	public static String getLinkman(IDocument doc, String url) {
		List<IElement> ies = JobSupport.getElements(doc.getAll().tags("P"),
				"P", "class", "txt_font1", COMPANY_DETAIL_TAGS[8]);
		if (ies == null || ies.isEmpty()) {
			return "";
		}
		// errorHandle(ies, "Company detail error!getLinkman!URL=" + url);
		String temp = ies.get(0).getInnerHTML();
		int i = temp.indexOf(COMPANY_DETAIL_TAGS[8]);
		if (temp.length() > (i + 2)) {
			return temp.substring(i + 2);
		} else {
			return "";
		}
	}

	public static String getTel(IDocument doc, String url) {
		List<IElement> ies = JobSupport.getElements(doc.getAll().tags("P"),
				"P", "class", "txt_font1", COMPANY_DETAIL_TAGS[9]);
		if (ies == null || ies.isEmpty()) {
			return "";
		}
		// errorHandle(ies, "Company detail error!getTel!URL=" + url);
		String temp = ies.get(0).getInnerHTML();
		int i = temp.indexOf(COMPANY_DETAIL_TAGS[9]);
		if (temp.length() > (i + 2)) {
			return temp.substring(i + 2);
		} else {
			return "";
		}
	}

	public static String getEmail(IDocument doc, String url) {
		List<IElement> ies = JobSupport.getElements(doc.getAll().tags("P"),
				"P", "class", "txt_font1", COMPANY_DETAIL_TAGS[10]);
		if (ies == null || ies.isEmpty()) {
			return "";
		}

		// errorHandle(ies, "Company detail error!getEmail!URL=" + url);
		String temp = ies.get(0).getInnerHTML();
		int i = temp.indexOf("\">");
		int j = temp.indexOf("</");
		if ((i + 2) < j) {
			temp = temp.substring(i + 2, j);
			return temp;
		} else {
			return "";
		}
	}
}
