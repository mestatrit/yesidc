package com.yesibc.job51.service.support;

import java.util.Map;

import org.htmlparser.tags.TableTag;

import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.model.Person;

public class ParseResumeSelfAdjust {

	public static void parseSelfAdjust(Person p, Map<String, TableTag> mapVal) {
		TableTag basicTag = mapVal.get(ClawerConstants.SELF_EVALUATION + ClawerConstants.VAL);
		if (basicTag == null) {
			return;
		}

		String temp = ClawerUtils.removeSpaceAndFilter(basicTag.toPlainTextString());
		String[] filters = { ClawerConstants.SELF_EVALUATION };
		temp = ClawerUtils.filterFirst(temp, filters);

		p.setSelfAdjust(temp);
	}

}
