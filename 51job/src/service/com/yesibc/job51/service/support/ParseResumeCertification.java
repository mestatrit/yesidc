package com.yesibc.job51.service.support;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.LogFactory;
import org.apache.commons.logging.Log;
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

public class ParseResumeCertification {

	private static Log log = LogFactory.getLog(ParseResumeCertification.class);

	public static void parseTrainingExperience(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.CERTIFICATION + ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}
		TableRow[] rows = basicTag.getRows();
		String temp = "";
		String[] filters = { ClawerConstants.TIME_TAG_LINE, ClawerConstants.TIME_TAG_DIAGONAL };
		List<Edu> edus = p.getEdus();
		if (CollectionUtils.isEmpty(edus)) {
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
						edu.setEduType(Edu.EDU_TYPE_CERTIFICATION);
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
						edu.setEduSpeciality(temp);
					} else if (j == 2 && !temp.equals("") && tag == 2) {
						tag++;
						edu.setEduLevel(temp);
					} else if (j == 3 && !temp.equals("") && tag == 2) {
						tag++;
						edu.setEduLevel(temp);
					}
				}
			}
		}

	}

	private static void parseEduTime(Edu edu, String timeTxt) throws ParseException {
		if (timeTxt.indexOf(ClawerConstants.TIME_TAG_DIAGONAL) < 0) {
			return;
		}
		String format = "yyyy" + ClawerConstants.TIME_TAG_DIAGONAL + "MM";
		Date end = DateUtils.stringToDate(timeTxt, format);
		edu.setEduDateTo(end);

		edu.setCreateDate(new Date());
		edu.setUpdateDate(new Date());
		edu.setCreateUser(ClawerConstants.DEFAULT_USER);
		edu.setUpdateUser(ClawerConstants.DEFAULT_USER);
	}
}
