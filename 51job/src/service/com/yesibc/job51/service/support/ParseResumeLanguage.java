package com.yesibc.job51.service.support;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;

import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.model.Language;
import com.yesibc.job51.model.Person;
import com.yesibc.job51.service.impl.ResumeHandlerServiceImpl;

public class ParseResumeLanguage {

	public static void parseLanguage(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.LANGUAGE_LEVEL + ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}
		TableRow[] rows = basicTag.getRows();
		String temp = "";
		List<Language> languages = p.getLanguages();
		if (CollectionUtils.isEmpty(languages)) {
			languages = new ArrayList<Language>();
			p.setLanguages(languages);
		}
		for (int i = 0; i < rows.length; i++) {
			TableRow tr = (TableRow) rows[i];
			TableColumn[] td = tr.getColumns();
			if (td == null)
				continue;

			int tag = 0;
			Language language = new Language();
			for (int j = 0; j < td.length; j++) {
				temp = ClawerUtils.getOrignText(td[j].toPlainTextString());
				if ("".equals(temp) && j == 0) {
					break;
				}
				if (j == 0 && !temp.equals("")) {
					tag++;
					languages.add(language);
					Date date = new Date();
					language.setCreateDate(date);
					language.setUpdateDate(date);
					language.setCreateUser(ClawerConstants.DEFAULT_USER);
					language.setUpdateUser(ClawerConstants.DEFAULT_USER);
					language.setLanguageName(temp);
					language.setLanguage(ResumeHandlerServiceImpl.baseCode.queryLanguageByName(temp));
				} else if (j == 1 && !temp.equals("") && tag == 1) {
					tag++;
					language.setUseLevelName(temp);
					language.setUseLevel(ResumeHandlerServiceImpl.baseCode.queryLevelByName(temp));
				}
			}
		}
	}

}
