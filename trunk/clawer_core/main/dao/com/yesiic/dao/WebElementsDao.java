package com.yesiic.dao;

import java.util.List;

import com.yesibc.core.dao.EntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesiic.webswith.model.WebElements;

public interface WebElementsDao extends EntityDao<WebElements> {

	public List<WebElements> getWebElementsByType(String type)
			throws ApplicationException;

}
