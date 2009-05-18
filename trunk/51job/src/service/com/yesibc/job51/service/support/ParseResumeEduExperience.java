package com.yesibc.job51.service.support;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;

import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.core.utils.DateUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.model.Edu;
import com.yesibc.job51.model.Person;
import com.yesibc.job51.service.impl.ResumeHandlerServiceImpl;

public class ParseResumeEduExperience {
	private static Log log = LogFactory.getLog(ParseResumeEduExperience.class);

	public static void parseEduExperience(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.EDU_EXPERIENCE + ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}
		TableRow[] rows = basicTag.getRows();
		String temp = "";
		String[] filters = { ClawerConstants.TIME_TAG_LINE, ClawerConstants.TIME_TAG_DIAGONAL };
		List<Edu> edus = p.getEdus();
		if(CollectionUtils.isEmpty(edus)){
			edus = new ArrayList<Edu>();
			p.setEdus(edus);
		}
		int ok = 0;
		for (int i = 0; i < rows.length; i++) {
			TableRow tr = (TableRow) rows[i];
			TableColumn[] td = tr.getColumns();
			if (td == null)
				continue;

			String temp1 = "";
			Edu edu = new Edu();
			int tag = 0;
			for (int j = 0; j < td.length; j++) {
				temp = ClawerUtils.getOrignText(td[j].toPlainTextString());

				if (j == 0) {
					temp1 = ClawerUtils.filter(temp, filters);
					if (!"".equals(temp) && StringUtils.isNumberString(temp1)) {
						ok++;
						edu.setEduType(Edu.EDU_TYPE_SCHOOL);
						edus.add(edu);
						try {
							parseEduTime(edu, temp);
						} catch (ParseException e) {
							e.printStackTrace();
							log.error("parse time error:" + temp + ",name=" + p.getNameDefault());
						}
						tag = 1;
					} else if (!"".equals(temp)) {
						if (ok > 0) {
							Edu edu1 = edus.get((ok - 1));
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
						edu.setEduSpeciality(temp);
						edu.setEduSpecialityFK(ResumeHandlerServiceImpl.baseCode.querySpeciality2ByName(temp));
					} else if (j == 3 && !temp.equals("") && tag == 2) {
						tag++;
						edu.setEduSpeciality(temp);
						edu.setEduSpecialityFK(ResumeHandlerServiceImpl.baseCode.querySpeciality2ByName(temp));
					} else if (j > 3 && !temp.equals("") && tag == 3) {
						tag++;
						edu.setEduLevel(temp);
						edu.setEduLevelFK(ResumeHandlerServiceImpl.baseCode.querySpeciality2ByName(temp));
					}
				}
			}
		}

	}

	public static void parseEduTime(Edu edu, String timeTxt) throws ParseException {
		if (timeTxt.indexOf(ClawerConstants.TIME_TAG_LINE) < 0 || timeTxt.indexOf(ClawerConstants.TIME_TAG_DIAGONAL) < 0) {
			return;
		}
		String[] str = timeTxt.split(ClawerConstants.TIME_TAG_LINE);
		String format = "yyyy" + ClawerConstants.TIME_TAG_DIAGONAL + "MM";
		Date start = DateUtils.stringToDate(str[0], format);
		edu.setEduDateFrom(start);
		String temp = str[1];
		temp = temp.replace(ClawerConstants.TIME_TAG_DIAGONAL, "");
		if (StringUtils.isNumberString(temp)) {
			edu.setEduDateTo(DateUtils.stringToDate(str[1], format));
		}
		 edu.setCreateDate(new Date());
		 edu.setUpdateDate(new Date());
		 edu.setCreateUser(ClawerConstants.DEFAULT_USER);
		 edu.setUpdateUser(ClawerConstants.DEFAULT_USER);
	}

}
