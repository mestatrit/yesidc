package com.yesitc.baixing.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yesibc.core.dao.EntityDao;
import com.yesiic.webswith.model.WebElements;

public class DBService {

	EntityDao<WebElements> dao;

	public Map<String, Map<String, WebElements>> initAllBase() {
		List<WebElements> wes = dao.findByNameValue(WebElements.class, "codeLevel", new Long(1));
		if (wes == null || wes.isEmpty()) {
			return null;
		}
		String top = null;
		Map<String, Map<String, WebElements>> all = new HashMap<String, Map<String, WebElements>>();
		for (WebElements we : wes) {
			if (we.getParent() == null) {
				top = we.getCode();
			}

			if (we.getChildren() == null || we.getChildren().isEmpty()) {
				continue;
			}

			Map<String, WebElements> subs = new HashMap<String, WebElements>();
			all.put(top, subs);

			for (WebElements sub : we.getChildren()) {
				iterateSubs(subs, sub);
			}
		}
		return all;
	}

	private void iterateSubs(Map<String, WebElements> subs, WebElements sub) {
		if (sub.getChildren() == null || sub.getChildren().isEmpty()) {
			subs.put(sub.getCode(), sub);
			System.out.println("sub.code=" + sub.getCode());
		} else {
			for (WebElements sub1 : sub.getChildren()) {
				iterateSubs(subs,sub1);
			}
		}
	}

	public void setDao(EntityDao<WebElements> dao) {
		this.dao = dao;
	}

}
