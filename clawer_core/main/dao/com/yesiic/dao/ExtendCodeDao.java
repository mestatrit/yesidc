package com.yesiic.dao;

import java.util.List;

import com.yesibc.core.dao.EntityDao;
import com.yesiic.base.model.ExtendCode;

public interface ExtendCodeDao extends EntityDao<ExtendCode> {

	public List<ExtendCode> queryByFilter(ExtendCode ec);

}
