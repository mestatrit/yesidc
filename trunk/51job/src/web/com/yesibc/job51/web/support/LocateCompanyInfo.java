package com.yesibc.job51.web.support;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.ProcessContext;

public class LocateCompanyInfo {

	private static Log logManual = LogFactory
			.getLog(ClawerConstants.MANUAL_LOG);

	private static final String COMPANY_LIST_ID = "resultList";

	private static final String[] CRR_COMPANY_DETAIL_TAGS = {
			ClawerConstants.COMPANY_INDUSTRY, ClawerConstants.COMPANY_GIF };

	private static String PAGE_SPLIT = " / ";

	public static int checkValidation(IBrowserCanvas browser) {
		List<IElement> elements = JobSupport.getElements(browser.getDocument()
				.getAll().tags("TABLE"), "id", COMPANY_LIST_ID);

		errorHandle(elements, "Parse company list error!checkValidation!URL="
				+ browser.getURL());

		String innerHtml = elements.get(0).getInnerHTML();
		for (String temp : ClawerConstants.COMPANY_LIST_HEADERS) {
			if (innerHtml.indexOf(temp) < 0) {
				ErrorHandler.error("Parse company list error 1! HTML content:"
						+ browser.getDocument().getDocumentSource());
				throw new NestedRuntimeException("Parse company list error 1!");
			}
		}

		if (innerHtml.indexOf(ClawerConstants.COMPANY_NO_RESULT) > -1) {
			return 0;
		} else {
			return 1;
		}

	}

	public static void checkCompanyDetail(ProcessContext processContext) {
		String body = processContext.getBrowser().getDocument().getBody()
				.getOuterHTML();
		for (String tag : CRR_COMPANY_DETAIL_TAGS) {
			if (body.indexOf(tag) < 0) {
				String str = processContext.getLogTitle()
						+ "Company detail error! No tag:" + tag + "!"
						+ processContext.getBrowser().getURL();
				logManual.error(str);
				// throw new NestedRuntimeException(str);
			}
		}
	}

	public static String[] getComIndustryTypeScale(ProcessContext processContext) {
		try {
			String[] ieStr = { ClawerConstants.COMPANY_INDUSTRY };
			List<IElement> ies = JobSupport.getElementsByTxt(processContext
					.getBrowser().getDocument().getAll().tags("TD"), ieStr);

			String[] str = new String[] { "", "", "", "" };
			if (ies == null || ies.isEmpty()) {
				return str;
			}
			// errorHandle(ies,
			// "Company detail error!getComIndustryTypeScale!URL="
			// + string);

			String outHtml = ies.get(0).getOuterHTML();
			int i = outHtml.indexOf(ClawerConstants.COMPANY_INDUSTRY);
			int j = 0;
			if (i > -1 && outHtml.length() > (i + 14)) {
				j = outHtml.indexOf("<", (i + 14));
				if (j > (i + 14)) {
					String[] temp = getStr(outHtml.substring((i + 14), j));
					str[0] = temp[0];
					str[1] = temp[1];
				}
			}

			i = outHtml.indexOf(ClawerConstants.COMPANY_NATURE);
			if (i > 0) {
				j = outHtml.indexOf("<", (i + 14));
				if (j > (i + 14)) {
					str[2] = getStr1(outHtml.substring((i + 14), j));
				}
			} else {
				str[2] = "";
			}

			i = outHtml.indexOf(ClawerConstants.COMPANY_SCALE);
			if (i > 0) {
				j = outHtml.indexOf("<", (i + 14));
				if (j > (i + 14)) {
					str[3] = getStr1(outHtml.substring((i + 14), j));
				}
			} else {
				str[3] = "";
			}

			return str;
		} catch (Exception e) {
			throw new NestedRuntimeException(processContext.getLogTitle()
					+ "getComIndustryTypeScale error!" + "URL["
					+ processContext.getBrowser().getURL() + "]", e);
		}
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

	public static int getTotal(IDocument doc) {
		List<IElement> ies = JobSupport.getElements(doc.getAll().tags("TABLE"),
				"class", "navBold");
		errorHandle(ies, "Get Total Records|Table error!");

		JobSupport js = new JobSupport();
		IElement ie = js.getElementByTxtAndLoop(ies.get(0).getChildElements(),
				"TD", PAGE_SPLIT);
		String digitals = ie.getInnerHTML();
		digitals = digitals.substring(digitals.indexOf(PAGE_SPLIT)
				+ PAGE_SPLIT.length());
		try {
			return Integer.parseInt(digitals);
		} catch (Exception e) {
			throw new NestedRuntimeException("Get Total Records|Parse error!");
		}
	}

	public static String getDescription(ProcessContext processContext) {
		String[] strs = { "txt_font" };
		List<IElement> ies = JobSupport.getElements(processContext.getBrowser()
				.getDocument().getAll().tags("DIV"), "class", "jobs_txt", strs);

		try {
			errorHandle(ies, "Company detail error!getDescription!URL="
					+ processContext.getBrowser().getURL());
		} catch (NestedRuntimeException e) {
			return "";
		}

		String description = StringUtils.trim2Empty(ies.get(0).getOuterHTML());
		if ("".equals((StringUtils.parseOutHTML(description)).replace(" ", ""))) {
			return "";
		}
		return description;
	}

	public static String getWebsite(ProcessContext processContext) {
		try {
			List<IElement> ies = JobSupport.getElements(processContext
					.getBrowser().getDocument().getAll().tags("P"), "P",
					"class", "txt_font1", ClawerConstants.COMPANY_HOMEPAGE);

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
		} catch (Exception e) {
			throw new NestedRuntimeException(processContext.getLogTitle()
					+ "getWebsite error!" + "URL["
					+ processContext.getBrowser().getURL() + "]", e);
		}
	}

	public static String getAddress(ProcessContext processContext) {
		try {
			List<IElement> ies = JobSupport.getElements(processContext
					.getBrowser().getDocument().getAll().tags("P"), "P",
					"class", "txt_font1", ClawerConstants.COMPANY_ADDRESS);

			if (ies == null || ies.isEmpty()) {
				return "";
			}

			String temp = ies.get(0).getInnerHTML();
			// errorHandle(ies, "Company detail error!getAddress!URL=" +
			// string);
			int i = temp.indexOf(ClawerConstants.COMPANY_ADDRESS);
			int j = temp.indexOf("<");

			if (j > (i + 2)) {
				return temp.substring((i + 2), j).replace("&nbsp;", "");
			} else if (temp.length() > (i + 2)) {
				return temp.substring(i + 2).replace("&nbsp;", "");
			} else {
				return "";
			}
		} catch (Exception e) {
			throw new NestedRuntimeException(processContext.getLogTitle()
					+ "getAddress error!" + "URL["
					+ processContext.getBrowser().getURL() + "]", e);
		}

	}

	private static void errorHandle(List<IElement> ies, String str) {
		if (ies == null || ies.size() < 1) {
			ErrorHandler.errorLogAndMail("Error failed!Size=0" + str);
			throw new NestedRuntimeException("Error failed!Size=0" + str);
		}

		if (ies.size() != 1) {
			for (IElement ie : ies) {
				ErrorHandler.warning(str + "|size<>1|\n" + ie.getOuterHTML());
			}
			ErrorHandler.errorLogAndMail("Error warning~size<>1!" + str);
		}

	}

	public static String getZip(ProcessContext processContext) {
		try {
			List<IElement> ies = JobSupport.getElements(processContext
					.getBrowser().getDocument().getAll().tags("P"), "P",
					"class", "txt_font1", ClawerConstants.COMPANY_ZIP);
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
		} catch (Exception e) {
			throw new NestedRuntimeException(processContext.getLogTitle()
					+ "getZip error!" + "URL["
					+ processContext.getBrowser().getURL() + "]", e);
		}
	}

	public static String getFax(ProcessContext processContext) {
		try {
			List<IElement> ies = JobSupport.getElements(processContext
					.getBrowser().getDocument().getAll().tags("P"), "P",
					"class", "txt_font1", ClawerConstants.COMPANY_FAX);
			if (ies == null || ies.isEmpty()) {
				return "";
			}
			// errorHandle(ies, "Company detail error!getFax!URL=" + url);

			String temp = ies.get(0).getInnerHTML();
			int i = temp.indexOf(ClawerConstants.COMPANY_FAX);
			if (i > 0) {
				temp = temp.substring(i + ClawerConstants.COMPANY_FAX.length());
				return temp;
			} else {
				return "";
			}
		} catch (Exception e) {
			throw new NestedRuntimeException(processContext.getLogTitle()
					+ "getFax error!" + "URL["
					+ processContext.getBrowser().getURL() + "]", e);
		}
	}

	public static String getLinkman(ProcessContext processContext) {
		try {
			List<IElement> ies = JobSupport.getElements(processContext
					.getBrowser().getDocument().getAll().tags("P"), "P",
					"class", "txt_font1",
					ClawerConstants.COMPANY_CONTACT_PERSON);
			if (ies == null || ies.isEmpty()) {
				return "";
			}
			// errorHandle(ies, "Company detail error!getLinkman!URL=" + url);
			String temp = ies.get(0).getInnerHTML();
			int i = temp.indexOf(ClawerConstants.COMPANY_CONTACT_PERSON);
			if (temp.length() > (i + 2)) {
				return temp.substring(i + 2);
			} else {
				return "";
			}
		} catch (Exception e) {
			throw new NestedRuntimeException(processContext.getLogTitle()
					+ "getLinkman error!" + "URL["
					+ processContext.getBrowser().getURL() + "]", e);
		}
	}

	public static String getTel(ProcessContext processContext) {
		try {
			List<IElement> ies = JobSupport.getElements(processContext
					.getBrowser().getDocument().getAll().tags("P"), "P",
					"class", "txt_font1", ClawerConstants.COMPANY_TEL);
			if (ies == null || ies.isEmpty()) {
				return "";
			}
			// errorHandle(ies, "Company detail error!getTel!URL=" + url);
			String temp = ies.get(0).getInnerHTML();
			int i = temp.indexOf(ClawerConstants.COMPANY_TEL);
			if (temp.length() > (i + 2)) {
				return temp.substring(i + 2);
			} else {
				return "";
			}
		} catch (Exception e) {
			throw new NestedRuntimeException(processContext.getLogTitle()
					+ "getTel error!" + "URL["
					+ processContext.getBrowser().getURL() + "]", e);
		}
	}

	public static String getEmail(ProcessContext processContext) {
		try {
			List<IElement> ies = JobSupport.getElements(processContext
					.getBrowser().getDocument().getAll().tags("P"), "P",
					"class", "txt_font1", ClawerConstants.COMPANY_EMAIL);
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
		} catch (Exception e) {
			throw new NestedRuntimeException(processContext.getLogTitle()
					+ "getEmail error!" + "URL["
					+ processContext.getBrowser().getURL() + "]", e);
		}
	}
}
