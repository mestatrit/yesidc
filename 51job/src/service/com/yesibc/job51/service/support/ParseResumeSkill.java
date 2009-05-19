package com.yesibc.job51.service.support;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;

import com.yesibc.core.CoreUtils;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.model.Person;
import com.yesibc.job51.model.Skill;
import com.yesibc.job51.service.impl.ResumeHandlerServiceImpl;

public class ParseResumeSkill {

	public static void parseSkill(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.IT_SKILLS + ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}
		TableRow[] rows = basicTag.getRows();
		String temp = "";
		List<Skill> skills = p.getSkills();
		if (CollectionUtils.isEmpty(skills)) {
			skills = new ArrayList<Skill>();
			p.setSkills(skills);
		}
		for (int i = 0; i < rows.length; i++) {
			TableRow tr = (TableRow) rows[i];
			TableColumn[] td = tr.getColumns();
			if (td == null)
				continue;

			Skill skill = new Skill();
			int tag = 0;
			for (int j = 0; j < td.length; j++) {
				temp = ClawerUtils.getOrignText(td[j].toPlainTextString());

				if (j == 0) {
					if ("".equals(temp)) {
						skill = null;
						break;
					} else if (ClawerConstants.SKILL_NAME.equals(temp)) {
						skill = null;
						break;
					} else if (!"".equals(temp)) {
						tag++;
						skills.add(skill);
						Date date = new Date();
						skill.setCreateDate(date);
						skill.setUpdateDate(date);
						skill.setCreateUser(ClawerConstants.DEFAULT_USER);
						skill.setUpdateUser(ClawerConstants.DEFAULT_USER);
						skill.setSkillName(temp);
						skill.setSkill(ResumeHandlerServiceImpl.baseCode.querySkill1ByName(temp));
					}
				} else {
					if (j == 1 && !temp.equals("")) {
						tag++;
						skill.setUseLevelName(temp);
						skill.setUseLevel(ResumeHandlerServiceImpl.baseCode.querySkill1ByName(temp));
					} else if (j == 2 && !temp.equals("")) {
						tag++;
						String[] filters = { CoreUtils.getValByKey("month") };
						temp = ClawerUtils.filter(temp, filters);
						if (StringUtils.isNumberString(temp)) {
							skill.setUseMonths(new Long(temp));
						}
					}
				}
			}
		}
	}

}