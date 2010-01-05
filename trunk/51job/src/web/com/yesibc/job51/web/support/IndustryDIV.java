package com.yesibc.job51.web.support;

import java.util.Iterator;
import java.util.List;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.NestedRuntimeException;

public class IndustryDIV {

	public static String[][] IND_ARRAY = { { "01", "计算机软件" }, { "37", "计算机硬件" }, { "38", "计算机服务(系统、数据服务，维修)" },
			{ "31", "通信/电信/网络设备" }, { "39", "通信/电信运营、增值服务" }, { "32", "互联网/电子商务" }, { "40", "网络游戏" },
			{ "02", "电子技术/半导体/集成电路" }, { "35", "仪器仪表/工业自动化" }, { "41", "会计/审计" }, { "03", "金融/投资/证券" }, { "42", "银行" },
			{ "43", "保险" }, { "04", "贸易/进出口" }, { "22", "批发/零售" }, { "05", "快速消费品(食品,饮料,化妆品)" }, { "06", "服装/纺织/皮革" },
			{ "44", "家具/家电/工艺品/玩具" }, { "45", "办公用品及设备" }, { "14", "机械/设备/重工" }, { "33", "汽车及零配件" },
			{ "08", "制药/生物工程" }, { "46", "医疗/护理/保健/卫生" }, { "47", "医疗设备/器械" }, { "12", "广告" }, { "48", "公关/市场推广/会展" },
			{ "49", "影视/媒体/艺术" }, { "13", "文字媒体/出版" }, { "15", "印刷/包装/造纸" }, { "26", "房地产开发" }, { "09", "建筑与工程" },
			{ "50", "家居/室内设计/装潢" }, { "51", "物业管理/商业中心" }, { "34", "中介服务" }, { "07", "专业服务(咨询，人力资源)" },
			{ "52", "检测，认证" }, { "18", "法律" }, { "23", "教育/培训" }, { "24", "学术/科研" }, { "11", "餐饮业" },
			{ "53", "酒店/旅游" }, { "17", "娱乐/休闲/体育" }, { "54", "美容/保健" }, { "27", "生活服务" }, { "21", "交通/运输/物流" },
			{ "55", "航天/航空" }, { "19", "石油/化工/矿产/地质" }, { "16", "采掘业/冶炼" }, { "36", "电力/水利" }, { "56", "原材料和加工" },
			{ "28", "政府" }, { "57", "非盈利机构" }, { "20", "环保" }, { "29", "农业/渔业/林业" }, { "58", "多元化业务集团公司" },
			{ "30", "其他行业" }, };

	public static int SELECT_PER_TIMES = 1;

	public static int SELECT_TIMES = IND_ARRAY.length % SELECT_PER_TIMES == 0 ? IND_ARRAY.length / SELECT_PER_TIMES
			: (IND_ARRAY.length / SELECT_PER_TIMES + 1);

	private static String[] ind_tags = { "请选择行业类别（您最多能选择5项）" };
	private static String[] confirm_tag = { "cctype=\"confirm\"", "[确认]" };
	private static String log_tags = "";
	private static String[] selected_inds = { "已选行业：" };
	private static String cur_selected_ind = selected_inds[0];

	public static IElement getIndDIV(IBrowserCanvas browser) {
		List<IElement> ies = JobSupport.getElementsByTxt(browser.getDocument().getAll().tags("DIV"), ind_tags);
		if (ies.size() != 1) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate industry DIV!ies.size()=" + ies.size());
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate industry DIV!ies.size()="
					+ ies.size());
		}

		if ("".equals(log_tags)) {
			log_tags = "1";
			LogHandler.info(ies.get(0).getOuterHTML());
		}
		return ies.get(0);
	}

	public static List<IElement> getSelectedIndTR(IElement funDIV) {
		JobSupport js = new JobSupport();
		IElement ie = js.getElementByTxtAndLoop(funDIV.getChildElements(), "TR", cur_selected_ind);
		if (ie == null) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate selected industry TR!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate selected industry TR!");
		}
		List<IElement> ies = js.getElementsByLoop(ie.getChildElements(), "INPUT");
		return ies;
	}

	public static IElement getIndCHKElement(String[] txts,IBrowserCanvas browser) {
		// List<IElement> ieLMTs = js.getElementsByTxtAndLoop(ies, "INPUT",
		// txt);
		List<IElement> ieLMTs = JobSupport.getElementsByTxt(browser.getDocument().getAll().tags("TD"), txts);
		String innerHTML = "";
		IElement parent = null;
		for (Iterator<IElement> it = ieLMTs.iterator(); it.hasNext();) {
			IElement current = it.next();
			innerHTML = current.getOuterHTML().toLowerCase();
			if (innerHTML.indexOf("input ") < 0) {
				it.remove();
			}

			parent = getTableParent(current);
			innerHTML = parent.getInnerHTML();
			for (String temp : ind_tags) {
				if (innerHTML.indexOf(temp) < 0) {
					it.remove();
					break;
				}
			}
		}
		if (ieLMTs.isEmpty() || ieLMTs.size() != 1) {
			ErrorHandler
					.error(ErrorHandler.ERROR_PREFIX + "Can't locate industry checkbox[TD part]:" + txts.toString());
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate industry checkbox[TD part]:"
					+ txts.toString());
		}

		return ieLMTs.get(0);

	}

	private static IElement getTableParent(IElement current) {
		IElement parent = current.getParentElement();
		if (parent.getTagName().equals("TABLE")) {
			return parent;
		} else {
			return getTableParent(parent);
		}
	}

	public static IElement getFunCFMElement(IBrowserCanvas browser) {
		List<IElement> ieLMTs = JobSupport.getElementsByTxt(browser.getDocument().getAll().tags("SPAN"), confirm_tag);

		IElement parent = null;
		String innerHTML = "";
		for (Iterator<IElement> it = ieLMTs.iterator(); it.hasNext();) {
			IElement current = it.next();
			parent = getTDParent(current);
			boolean have = true;
			innerHTML = parent.getInnerHTML();
			LogHandler.debug(innerHTML);
			for (String temp : ind_tags) {
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
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate function confirm:" + confirm_tag);
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate function confirm:" + confirm_tag);
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
	
	public static void main(String[] args) {
		System.out.println(IndustryDIV.IND_ARRAY.length);
	}
}
