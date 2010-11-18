package com.yesiic.dao;

import java.util.List;

import com.yesibc.core.dao.EntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesiic.webswith.model.WebPages;

public interface WebPagesDao extends EntityDao<WebPages> {

	public List<WebPages> getWebPagesByType(String type, String status, int fetchSize) throws ApplicationException;

	public void saveByBatch(List<WebPages> wps);

	public void saveUrls(List<String> urls, String type, String requestId);
}
