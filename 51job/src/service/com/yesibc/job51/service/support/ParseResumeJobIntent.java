package com.yesibc.job51.service.support;

import java.util.Map;

import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;

import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.common.ParseSupport;
import com.yesibc.job51.model.Person;
import com.yesibc.job51.service.impl.ResumeHandlerServiceImpl;

public class ParseResumeJobIntent {
	
	public static void parseJobIntent(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.JOB_INTENT + ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}
		TableRow[] rows = basicTag.getRows();
		String temp = "";
		for (int i = 0; i < rows.length; i++) {
			TableRow tr = (TableRow) rows[i];
			TableColumn[] td = tr.getColumns();
			if (td == null)
				continue;

			for (int j = 0; j < td.length; j++) {
				temp = ClawerUtils.getOrignText(td[j].toPlainTextString());
				if (ClawerConstants.JOB_INTENT.equals(temp)) {
					break;
				} else if (ClawerConstants.JOB_INTENT_SALARY.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpaceAndFilter(td[j].toPlainTextString());
					if (!"".equals(temp)) {
						p.setJobIntentSalary(ResumeHandlerServiceImpl.baseCode.queryByName(temp, BaseCode.SALARY_MONTHLY, 0));
					}
					break;
				} else if (ClawerConstants.JOB_INTENT_ADDR.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpaceAndFilter(td[j].toPlainTextString());
					if (!"".equals(temp)) {
						String[] addrs = temp.split(ClawerConstants.SPLIT_CHAR);
						ParseSupport.setJobIntentAddr(p, addrs);
					}
					break;
				} else if (ClawerConstants.JOB_INTENT_FUN.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpaceAndFilter(td[j].toPlainTextString());
					if (!"".equals(temp)) {
						String[] funs = temp.split(ClawerConstants.SPLIT_CHAR);
						ParseSupport.setJobIntentFun(p, funs);
					}
					break;
				} else if (ClawerConstants.JOB_INTENT_INDUSTRY.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpaceAndFilter(td[j].toPlainTextString());
					if (!"".equals(temp)) {
						String[] indutries = temp.split(ClawerConstants.SPLIT_CHAR);
						ParseSupport.setJobIntentIndutry(p, indutries);
					}
					break;
				} else if (ClawerConstants.JOB_INTENT_NATURE.equals(temp)) {
					++j;
					temp = ClawerUtils.removeSpaceAndFilter(td[j].toPlainTextString());
					if (!"".equals(temp)) {
						p.setJobNature(ResumeHandlerServiceImpl.baseCode.queryByName(temp, BaseCode.JOB_NATURE, 0));
					}
					break;
				}
			}
		}
	}

}
