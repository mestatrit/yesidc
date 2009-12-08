package com.yesibc.job51.company.search1;

import java.util.Iterator;
import java.util.List;

import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.dom.IElementCollection;
import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.job51.company.ErrorHandler;
import com.yesibc.job51.company.JobMain;
import com.yesibc.job51.company.JobSupport;
import com.yesibc.job51.company.LogHandler;

public class FunctionDIV {

	public static String[][] FUN_ARRAY = { { "2400", "计算机硬件" },
			{ "0100", "计算机软件" }, { "2500", "互联网开发及应用" }, { "2600", "IT-管理" },
			{ "2700", "IT-品管、技术支持及其它" }, { "2800", "通信技术" },
			{ "2900", "电子/电器/半导体/仪器仪表" }, { "0200", "销售管理" },
			{ "3000", "销售人员" }, { "3100", "销售行政及商务" }, { "3200", "客服及技术支持" },
			{ "0400", "财务/审计/税务" }, { "3300", "证券/金融/投资" }, { "2200", "银行" },
			{ "3400", "保险" }, { "3500", "生产/营运" }, { "3600", "质量/安全管理" },
			{ "0500", "工程/机械/能源" }, { "5400", "汽车" }, { "3700", "技工" },
			{ "3800", "服装/纺织/皮革" }, { "3900", "采购" }, { "4000", "贸易" },
			{ "0800", "物流/仓储" }, { "4100", "生物/制药/医疗器械" }, { "5500", "化工" },
			{ "1300", "医院/医疗/护理" }, { "4200", "广告" }, { "4300", "公关/媒介" },
			{ "0300", "市场/营销" }, { "4400", "影视/媒体" }, { "4500", "写作/出版/印刷" },
			{ "0900", "艺术/设计" }, { "2100", "建筑工程" }, { "4600", "房地产" },
			{ "4700", "物业管理" }, { "0600", "人力资源" }, { "0700", "高级管理" },
			{ "2300", "行政/后勤" }, { "1400", "咨询/顾问" }, { "1100", "律师/法务" },
			{ "1200", "教师/培训" }, { "1000", "科研人员" }, { "4800", "餐饮/娱乐" },
			{ "4900", "酒店/旅游" }, { "5000", "美容/健身/体育" },
			{ "5100", "百货/连锁/零售服务" }, { "1800", "交通运输服务" },
			{ "5200", "保安/家政/其他服务" }, { "1500", "公务员" }, { "2000", "翻译" },
			{ "1600", "在校学生" }, { "1700", "储备干部/培训生/实习生" }, { "5300", "兼职" },
			{ "1900", "其他" }, { "5600", "环保" } };

	// public static String[] FUN_ARRAY = { "计算机硬件", "计算机软件", "互联网开发及应用" };
	public static int SELECT_PER_TIMES = 3;

	public static int SELECT_TIMES = FUN_ARRAY.length % SELECT_PER_TIMES == 0 ? FUN_ARRAY.length
			/ SELECT_PER_TIMES
			: (FUN_ARRAY.length / SELECT_PER_TIMES + 1);

	private static String[] fun_tags = { "请选择职能类别（您最多能选择5项）" };
	private static String[] confirm_tag = { "cctype=\"confirm\"", "[确认]" };
	private static String log_tags = "";
	private static String[] selected_funs = { "已选职能：" };
	private static String cur_selected_fun = selected_funs[0];

	public static IElement getFunDIV() {
		List<IElement> ies = JobSupport.getElementsByTxt(JobMain.getDoc()
				.getAll().tags("DIV"), fun_tags);
		if (ies.size() != 1) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX
					+ "Can't locate function DIV!ies.size()=" + ies.size());
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX
					+ "Can't locate function DIV!ies.size()=" + ies.size());
		}

		if ("".equals(log_tags)) {
			log_tags = "1";
			LogHandler.info(ies.get(0).getOuterHTML());
		}
		return ies.get(0);
	}

	public static List<IElement> getSelectedFunTR(IElement funDIV) {
		JobSupport js = new JobSupport();
		IElement ie = js.getElementByTxtAndLoop(funDIV.getChildElements(),
				"TR", cur_selected_fun);
		if (ie == null) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX
					+ "Can't locate selected function TR!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX
					+ "Can't locate selected function TR!");
		}
		List<IElement> ies = js.getElementsByLoop(ie.getChildElements(),
				"INPUT");
		return ies;
	}

	public static IElement getFunTDElement(IElementCollection ies, String txt) {
		JobSupport js = new JobSupport();
		List<IElement> ieLMTs = js.getElementsByTxtAndLoop(ies, "TD", txt);

		int i = 0;
		String value = null;
		for (Iterator<IElement> it = ieLMTs.iterator(); it.hasNext();) {
			IElement current = it.next();
			value = current.getOuterHTML();
			if (value.indexOf("INPUT") > 0) {
				it.remove();
				continue;
			}
			i = value.indexOf(">");
			value = value.substring(i + 1, (i + 2 + txt.length()));
			if(!value.equals(txt + "<")){
				it.remove();
			}
		}

		if (ieLMTs.size() != 1) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX
					+ "Can't locate function td:" + txt);
			for (Iterator<IElement> it = ieLMTs.iterator(); it.hasNext();) {
				IElement current = it.next();
				ErrorHandler.error(ErrorHandler.ERROR_PREFIX + current.getOuterHTML());
			}
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX
					+ "Can't locate function td:" + txt);
		}

		return ieLMTs.get(0);

	}

	public static IElement getFunCHKElement(String[] txts) {
		// List<IElement> ieLMTs = js.getElementsByTxtAndLoop(ies, "INPUT",
		// txt);
		List<IElement> ieLMTs = JobSupport.getElementsByTxt(JobMain.getDoc()
				.getAll().tags("TD"), txts);
		if (ieLMTs.isEmpty() || ieLMTs.size() != 1) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX
					+ "Can't locate function checkbox[TD part]:"
					+ txts.toString());
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX
					+ "Can't locate function checkbox[TD part]:"
					+ txts.toString());
		}

		return ieLMTs.get(0);

	}

	public static IElement getFunCFMElement() {
		List<IElement> ieLMTs = JobSupport.getElementsByTxt(JobMain.getDoc()
				.getAll().tags("SPAN"), confirm_tag);

		IElement parent = null;
		String innerHTML = "";
		for (Iterator<IElement> it = ieLMTs.iterator(); it.hasNext();) {
			IElement current = it.next();
			parent = getTDParent(current);
			boolean have = true;
			innerHTML = parent.getInnerHTML();
			LogHandler.debug(innerHTML);
			for (String temp : fun_tags) {
				if (innerHTML.indexOf(temp) < 0) {
					it.remove();
					have = false;
					break;
				}
			}
			if (!have) {
				continue;
			}
			innerHTML = current.getInnerHTML().toLowerCase();
			LogHandler.debug(innerHTML);
			if (innerHTML.indexOf("span ") > -1) {
				it.remove();
			}
		}

		if (ieLMTs.isEmpty() || ieLMTs.size() != 1) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX
					+ "Can't locate function confirm:" + confirm_tag);
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX
					+ "Can't locate function confirm:" + confirm_tag);
		}

		return ieLMTs.get(0);

	}

	private static IElement getTDParent(IElement current) {
		IElement parent = current.getParentElement();
		if (parent.getTagName().equals("TD")) {
			return parent;
		} else {
			return getTDParent(parent);
		}
	}
}
