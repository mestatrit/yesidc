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

	public static String[][] FUN_ARRAY = { { "2400", "�����Ӳ��" },
			{ "0100", "��������" }, { "2500", "������������Ӧ��" }, { "2600", "IT-����" },
			{ "2700", "IT-Ʒ�ܡ�����֧�ּ�����" }, { "2800", "ͨ�ż���" },
			{ "2900", "����/����/�뵼��/�����Ǳ�" }, { "0200", "���۹���" },
			{ "3000", "������Ա" }, { "3100", "��������������" }, { "3200", "�ͷ�������֧��" },
			{ "0400", "����/���/˰��" }, { "3300", "֤ȯ/����/Ͷ��" }, { "2200", "����" },
			{ "3400", "����" }, { "3500", "����/Ӫ��" }, { "3600", "����/��ȫ����" },
			{ "0500", "����/��е/��Դ" }, { "5400", "����" }, { "3700", "����" },
			{ "3800", "��װ/��֯/Ƥ��" }, { "3900", "�ɹ�" }, { "4000", "ó��" },
			{ "0800", "����/�ִ�" }, { "4100", "����/��ҩ/ҽ����е" }, { "5500", "����" },
			{ "1300", "ҽԺ/ҽ��/����" }, { "4200", "���" }, { "4300", "����/ý��" },
			{ "0300", "�г�/Ӫ��" }, { "4400", "Ӱ��/ý��" }, { "4500", "д��/����/ӡˢ" },
			{ "0900", "����/���" }, { "2100", "��������" }, { "4600", "���ز�" },
			{ "4700", "��ҵ����" }, { "0600", "������Դ" }, { "0700", "�߼�����" },
			{ "2300", "����/����" }, { "1400", "��ѯ/����" }, { "1100", "��ʦ/����" },
			{ "1200", "��ʦ/��ѵ" }, { "1000", "������Ա" }, { "4800", "����/����" },
			{ "4900", "�Ƶ�/����" }, { "5000", "����/����/����" },
			{ "5100", "�ٻ�/����/���۷���" }, { "1800", "��ͨ�������" },
			{ "5200", "����/����/��������" }, { "1500", "����Ա" }, { "2000", "����" },
			{ "1600", "��Уѧ��" }, { "1700", "�����ɲ�/��ѵ��/ʵϰ��" }, { "5300", "��ְ" },
			{ "1900", "����" }, { "5600", "����" } };

	// public static String[] FUN_ARRAY = { "�����Ӳ��", "��������", "������������Ӧ��" };
	public static int SELECT_PER_TIMES = 3;

	public static int SELECT_TIMES = FUN_ARRAY.length % SELECT_PER_TIMES == 0 ? FUN_ARRAY.length
			/ SELECT_PER_TIMES
			: (FUN_ARRAY.length / SELECT_PER_TIMES + 1);

	private static String[] fun_tags = { "��ѡ��ְ������������ѡ��5�" };
	private static String[] confirm_tag = { "cctype=\"confirm\"", "[ȷ��]" };
	private static String log_tags = "";
	private static String[] selected_funs = { "��ѡְ�ܣ�" };
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
