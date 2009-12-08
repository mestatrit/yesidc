package com.yesibc.job51.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import oracle.sql.BLOB;
import oracle.sql.CLOB;

import com.yesibc.core.dao.HibernateEntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.dao.CompanyDao;
import com.yesibc.job51.model.ComAppend;
import com.yesibc.job51.model.Company;

public class CompanyDaoImpl extends HibernateEntityDao<Company> implements
		CompanyDao {

	public void saveAppendLob(ComAppend comAppend, String type)
			throws ApplicationException {
		PreparedStatement ps = null;
		try {
			String sql = null;
			if (ComAppend.LOB_TYPE_CLOB.equals(type)) {
				sql = "select contents from TC_APPEND where id=? for update";
			} else if (ComAppend.LOB_TYPE_BLOB.equals(type)) {
				sql = "select datas from TC_APPEND where id=? for update";
			} else {
				throw new ApplicationException(
						"save append lob error and type is wrong!");
			}
			ps = getSession().connection().prepareStatement(sql);
			if (ComAppend.LOB_TYPE_CLOB.equals(type)) {
				updateClob(ps, comAppend);
			} else {
				updateBlob(ps, comAppend);
			}

		} catch (Exception e) {
			throw new ApplicationException("save append lob error!", e);
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					throw new ApplicationException(
							"save append lob error when close ps!", e);
				}
			}
		}
	}

	private void updateClob(PreparedStatement ps, ComAppend comAppend)
			throws SQLException {
		ps.setLong(1, comAppend.getId());
		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			CLOB clob = (CLOB) rs.getClob(1);
			clob.setString(1, comAppend.getContents());

			ps = getSession().connection().prepareStatement(
					" update TC_APPEND set contents=? where id=? ");
			ps.setClob(1, clob);
			ps.setLong(2, comAppend.getId());

			ps.executeUpdate();
		}
	}

	private void updateBlob(PreparedStatement ps, ComAppend comAppend)
			throws SQLException {
		ps.setLong(1, comAppend.getId());
		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			BLOB blob = (BLOB) rs.getBlob(1);
			blob.setBytes(comAppend.getDatas());

			ps = getSession().connection().prepareStatement(
					" update TC_APPEND set datas=? where id=? ");

			ps.setBlob(1, blob);
			ps.setLong(2, comAppend.getId());

			ps.executeUpdate();
		}
	}
}
