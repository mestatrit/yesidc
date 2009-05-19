/**
 * $Id: StoreTemplate.java,v 1.1 2008/01/08 09:52:24 abel Exp $
 */

package com.yesibc.core.spring;

import java.sql.Types;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.object.StoredProcedure;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Nov 13, 2007 10:19:17 AM
 */

public class StoreTemplate extends StoredProcedure {
	
	Map<String,Object> map = new HashMap<String,Object>();

	public StoreTemplate() {
		super();
	}

	public void setValue(String key, Object obj) {
		map.put(key, obj);
	}

	public StoreTemplate(DataSource ds) {
		setDataSource(ds);
	}

	@SuppressWarnings("unchecked")
	public Map<String,Object> execute() {
		if (this.getSql() == null || this.getSql().equals(""))
			return null;
		this.compile();
		return execute(map);
	}

	public void setVarcharParam(String param) {
		this.declareParameter(new SqlParameter(param, Types.VARCHAR));
	}

	public void setDoubleParam(String param) {
		this.declareParameter(new SqlParameter(param, Types.DOUBLE));
	}

	public void setIntegerParam(String param) {
		this.declareParameter(new SqlParameter(param, Types.INTEGER));
	}

	public void setVarcharOutParam(String param) {
		this.declareParameter(new SqlOutParameter(param, Types.VARCHAR));
	}

	public void setDoubleOutParam(String param) {
		this.declareParameter(new SqlOutParameter(param, Types.DOUBLE));
	}

	public void setIntegerOutParam(String param) {
		this.declareParameter(new SqlOutParameter(param, Types.INTEGER));
	}
}
