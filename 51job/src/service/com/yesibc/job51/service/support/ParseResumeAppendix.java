package com.yesibc.job51.service.support;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.ArrayUtils;
import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;

import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.model.PersonAppend;
import com.yesibc.job51.model.Person;
import com.yesibc.job51.service.impl.ResumeHandlerServiceImpl;

public class ParseResumeAppendix {

	public static void parseAppendix(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.ATTACHMENT + ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}
		TableRow[] rows = basicTag.getRows();
		String temp = "";
		List<PersonAppend> appends = p.getAppends();
		if (CollectionUtils.isEmpty(appends)) {
			appends = new ArrayList<PersonAppend>();
			p.setAppends(appends);
		}
		for (int i = 0; i < rows.length; i++) {
			TableRow tr = (TableRow) rows[i];
			TableColumn[] td = tr.getColumns();
			if (td == null)
				continue;

			PersonAppend append = new PersonAppend();
			for (int j = 0; j < td.length; j++) {
				temp = ClawerUtils.getOrignText(td[j].toPlainTextString());

				if ("".equals(temp)) {
					append = null;
					break;
				} else {
					pushAppend(appends, append, td);
					break;
				}

			}
		}
	}

	private static void pushAppend(List<PersonAppend> appends, PersonAppend append, TableColumn[] td) {
		String temp = ClawerUtils.getOrignText(td[0].toPlainTextString());

		if (ArrayUtils.indexOf(ClawerConstants.APPENDIX_ALL, temp) > -1) {
			append.setAppendType(ResumeHandlerServiceImpl.baseCode.queryAppendixByName(temp));
			append.setAppendTypeName(temp);
		} else {
			append.setAppendType(ResumeHandlerServiceImpl.baseCode.queryAppendixByName(ClawerConstants.APPENDIX_OTHERS));
			append.setAppendTypeName(ClawerConstants.APPENDIX_OTHERS + "-" + temp);
		}

		append.setContent(td[1].toPlainTextString());
		append.setCreateDate(new Date());
		append.setUpdateDate(new Date());
		append.setCreateUser(ClawerConstants.DEFAULT_USER);
		append.setUpdateUser(ClawerConstants.DEFAULT_USER);
		appends.add(append);
	}

}
