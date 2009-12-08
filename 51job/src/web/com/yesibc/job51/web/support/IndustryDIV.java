package com.yesibc.job51.web.support;

import java.util.Iterator;
import java.util.List;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.NestedRuntimeException;

public class IndustryDIV {

	public static String[][] IND_ARRAY = { { "01", "��������" }, { "37", "�����Ӳ��" }, { "38", "���������(ϵͳ�����ݷ���ά��)" },
			{ "31", "ͨ��/����/�����豸" }, { "39", "ͨ��/������Ӫ����ֵ����" }, { "32", "������/��������" }, { "40", "������Ϸ" },
			{ "02", "���Ӽ���/�뵼��/���ɵ�·" }, { "35", "�����Ǳ�/��ҵ�Զ���" }, { "41", "���/���" }, { "03", "����/Ͷ��/֤ȯ" }, { "42", "����" },
			{ "43", "����" }, { "04", "ó��/������" }, { "22", "����/����" }, { "05", "��������Ʒ(ʳƷ,����,��ױƷ)" }, { "06", "��װ/��֯/Ƥ��" },
			{ "44", "�Ҿ�/�ҵ�/����Ʒ/���" }, { "45", "�칫��Ʒ���豸" }, { "14", "��е/�豸/�ع�" }, { "33", "�����������" },
			{ "08", "��ҩ/���﹤��" }, { "46", "ҽ��/����/����/����" }, { "47", "ҽ���豸/��е" }, { "12", "���" }, { "48", "����/�г��ƹ�/��չ" },
			{ "49", "Ӱ��/ý��/����" }, { "13", "����ý��/����" }, { "15", "ӡˢ/��װ/��ֽ" }, { "26", "���ز�����" }, { "09", "�����빤��" },
			{ "50", "�Ҿ�/�������/װ��" }, { "51", "��ҵ����/��ҵ����" }, { "34", "�н����" }, { "07", "רҵ����(��ѯ��������Դ)" },
			{ "52", "��⣬��֤" }, { "18", "����" }, { "23", "����/��ѵ" }, { "24", "ѧ��/����" }, { "11", "����ҵ" },
			{ "53", "�Ƶ�/����" }, { "17", "����/����/����" }, { "54", "����/����" }, { "27", "�������" }, { "21", "��ͨ/����/����" },
			{ "55", "����/����" }, { "19", "ʯ��/����/���/����" }, { "16", "�ɾ�ҵ/ұ��" }, { "36", "����/ˮ��" }, { "56", "ԭ���Ϻͼӹ�" },
			{ "28", "����" }, { "57", "��ӯ������" }, { "20", "����" }, { "29", "ũҵ/��ҵ/��ҵ" }, { "58", "��Ԫ��ҵ���Ź�˾" },
			{ "30", "������ҵ" }, };

	public static int SELECT_PER_TIMES = 1;

	public static int SELECT_TIMES = IND_ARRAY.length % SELECT_PER_TIMES == 0 ? IND_ARRAY.length / SELECT_PER_TIMES
			: (IND_ARRAY.length / SELECT_PER_TIMES + 1);

	private static String[] ind_tags = { "��ѡ����ҵ����������ѡ��5�" };
	private static String[] confirm_tag = { "cctype=\"confirm\"", "[ȷ��]" };
	private static String log_tags = "";
	private static String[] selected_inds = { "��ѡ��ҵ��" };
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
