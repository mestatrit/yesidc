package com.yesibc.job51.service.support;

import java.util.Map;

import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;

public class ParseResumeTemplate {

	public static void parseToNodeList(String resume, Map<String, String> mapKey, Map<String, TableTag> mapVal)
			throws ApplicationException {
		Parser parser = null;
		NodeList nodeList = null;
		NodeFilter tableFilter = new NodeClassFilter(TableTag.class);
		try {
			parser = new Parser(resume);
			nodeList = parser.parse(tableFilter);
		} catch (ParserException e) {
			throw new ApplicationException("parse error!",e);
		}

		String temp = "";
		int o = nodeList.size();

		for (int i = 0; i <= o; i++) {
			if (!(nodeList.elementAt(i) instanceof TableTag)) {
				continue;
			}

			TableTag tag = (TableTag) nodeList.elementAt(i);
			TableRow[] rows = tag.getRows();
			if (rows == null)
				continue;

			for (int j = 0; j < rows.length; j++) {
				TableRow tr = (TableRow) rows[j];
				TableColumn[] td = tr.getColumns();
				boolean outOfCircle = false;
				for (int k = 0; k < 1; k++) { // just for 1
					temp = td[0].toPlainTextString();
					temp = ClawerUtils.getOrignText(temp);

					// logContent(td, k);
					if (ClawerConstants.BASIC_INFO.equals(temp)) {
						mapKey.put(ClawerConstants.BASIC_INFO, temp);
						mapVal.put(ClawerConstants.BASIC_INFO + ClawerConstants.VAL, (TableTag) nodeList
								.elementAt(i + 1));
						i++;
						outOfCircle = true;
						break;
					} else if (ClawerConstants.SELF_EVALUATION.equals(temp)) {
						mapKey.put(ClawerConstants.SELF_EVALUATION, temp);
						mapVal.put(ClawerConstants.SELF_EVALUATION + ClawerConstants.VAL, tag);
						outOfCircle = true;
						break;
					} else if (ClawerConstants.JOB_INTENT.equals(temp)) {
						mapKey.put(ClawerConstants.JOB_INTENT, temp);
						mapVal.put(ClawerConstants.JOB_INTENT + ClawerConstants.VAL, tag);
						outOfCircle = true;
						break;
					} else if (ClawerConstants.JOB_EXPERIENCE.equals(temp)) {
						mapKey.put(ClawerConstants.JOB_EXPERIENCE, temp);
						mapVal.put(ClawerConstants.JOB_EXPERIENCE + ClawerConstants.VAL, (TableTag) nodeList
								.elementAt(i + 1));
						i++;
						break;
					} else if (ClawerConstants.PROJECT_EXPERIENCE.equals(temp)) {
						mapKey.put(ClawerConstants.PROJECT_EXPERIENCE, temp);
						mapVal.put(ClawerConstants.PROJECT_EXPERIENCE + ClawerConstants.VAL, (TableTag) nodeList
								.elementAt(i + 1));
						i++;
						break;
					} else if (ClawerConstants.EDU_EXPERIENCE.equals(temp)) {
						mapKey.put(ClawerConstants.EDU_EXPERIENCE, temp);
						mapVal.put(ClawerConstants.EDU_EXPERIENCE + ClawerConstants.VAL, (TableTag) nodeList
								.elementAt(i + 1));
						i++;
						break;
					} else if (ClawerConstants.TRAINING_EXPERIENCE.equals(temp)) {
						mapKey.put(ClawerConstants.TRAINING_EXPERIENCE, temp);
						mapVal.put(ClawerConstants.TRAINING_EXPERIENCE + ClawerConstants.VAL, (TableTag) nodeList
								.elementAt(i + 1));
						i++;
						break;
					} else if (ClawerConstants.CERTIFICATION.equals(temp)) {
						mapKey.put(ClawerConstants.CERTIFICATION, temp);
						mapVal.put(ClawerConstants.CERTIFICATION + ClawerConstants.VAL, (TableTag) nodeList
								.elementAt(i + 1));
						i++;
						break;
					} else if (ClawerConstants.LANGUAGE_LEVEL.equals(temp)) {
						mapKey.put(ClawerConstants.LANGUAGE_LEVEL, temp);
						mapVal.put(ClawerConstants.LANGUAGE_LEVEL + ClawerConstants.VAL, (TableTag) nodeList
								.elementAt(i + 1));
						i++;
						break;
					} else if (ClawerConstants.IT_SKILLS.equals(temp)) {
						mapKey.put(ClawerConstants.IT_SKILLS, temp);
						mapVal.put(ClawerConstants.IT_SKILLS + ClawerConstants.VAL, (TableTag) nodeList
								.elementAt(i + 1));
						i++;
						break;
					} else if (ClawerConstants.ATTACHMENT.equals(temp)) {
						mapKey.put(ClawerConstants.ATTACHMENT, temp);
						mapVal.put(ClawerConstants.ATTACHMENT + ClawerConstants.VAL, (TableTag) nodeList
								.elementAt(i + 1));
						i++;
						break;
					}
				}
				if (outOfCircle) {
					break;
				}

			}

		}
	}

}
