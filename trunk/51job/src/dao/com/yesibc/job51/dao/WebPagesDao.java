package com.yesibc.job51.dao;

import java.util.List;

import com.yesibc.core.dao.EntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.model.WebPages;

public interface WebPagesDao extends EntityDao<WebPages> {

	public List<WebPages> getWebPagesByType(String type,String status) throws ApplicationException;

	public void saveByBatch(List<WebPages> wps);

}
