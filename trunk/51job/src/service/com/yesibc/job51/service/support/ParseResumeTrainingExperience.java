package com.yesibc.job51.service.support;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;

import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.model.PersonEdu;
import com.yesibc.job51.model.Person;

public class ParseResumeTrainingExperience {

	private static Log log = LogFactory.getLog(ParseResumeTrainingExperience.class);

	public static void parseTrainingExperience(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.TRAINING_EXPERIENCE + ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}
		TableRow[] rows = basicTag.getRows();
		String temp = "";
		String[] filters = { ClawerConstants.TIME_TAG_LINE, ClawerConstants.TIME_TAG_DIAGONAL };
		List<PersonEdu> edus = p.getPersonEdus();
		if(CollectionUtils.isEmpty(edus)){
			edus = new ArrayList<PersonEdu>();
			p.setPersonEdus(edus);
		}
		int ok = 0;
		for (int i = 0; i < rows.length; i++) {
			TableRow tr = (TableRow) rows[i];
			TableColumn[] td = tr.getColumns();
			if (td == null)
				continue;

			String temp1 = "";
			PersonEdu edu = new PersonEdu();
			int tag = 0;
			for (int j = 0; j < td.length; j++) {
				temp = ClawerUtils.getOrignText(td[j].toPlainTextString());

				if (j == 0) {
					temp1 = ClawerUtils.filter(temp, filters);
					if (!"".equals(temp) && StringUtils.isNumberString(temp1)) {
						ok++;
						edu.setEduType(PersonEdu.EDU_TYPE_TRAINING);
						edus.add(edu);
						try {
							ParseResumeEduExperience.parseEduTime(edu, temp);
						} catch (ParseException e) {
							e.printStackTrace();
							log.error("parse time error:" + temp + ",name=" + p.getNameDefault());
						}
						tag = 1;
					} else if (!"".equals(temp)) {
						if (ok > 0) {
							PersonEdu edu1 = edus.get((ok - 1));
							edu1.setMemo(temp);
						}
						edu = null;
						break;
					} else {
						break;
					}
				} else {
					if (j == 1 && !temp.equals("")) {
						tag++;
						edu.setEduName(temp);
					} else if (j == 2 && !temp.equals("")) {
						tag++;
						edu.setEduSpecialityName(temp);
					} else if (j == 3 && !temp.equals("") && tag == 2) {
						tag++;
						edu.setEduSpecialityName(temp);
					} else if (j > 3 && !temp.equals("") && tag == 3) {
						tag++;
						edu.setEduLevelName(temp);
					}
				}
			}
		}

	}
}