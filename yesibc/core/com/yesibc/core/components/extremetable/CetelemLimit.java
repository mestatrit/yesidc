/**
 * $Id: CetelemLimit.java,v 1.3 2007/10/26 09:56:11 abel Exp $
 */

package com.yesibc.core.components.extremetable;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.extremecomponents.table.context.Context;
import org.extremecomponents.table.context.HttpServletRequestContext;
import org.extremecomponents.table.core.TableConstants;
import org.extremecomponents.table.limit.Filter;
import org.extremecomponents.table.limit.Limit;
import org.extremecomponents.table.limit.LimitFactory;
import org.extremecomponents.table.limit.Sort;
import org.extremecomponents.table.limit.TableLimit;
import org.extremecomponents.table.limit.TableLimitFactory;

import com.yesibc.core.CoreConstants;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Oct 23, 2007 9:49:05 AM
 */
public class CetelemLimit {

	private Limit limit;

	private HttpServletRequest request;

	private String tableID;

	// current_rows_displayed
	private int crd = 0;

	private Sort sort;

	private boolean ascending = true;

	private Map<String, String> filterMap = new HashMap<String, String>();
	private Map<String, String> orderMap = new HashMap<String, String>();

	public CetelemLimit(HttpServletRequest request_, String tableID_) {
		this.request = request_;
		this.tableID = tableID_;
		if (tableID == null || "".endsWith(tableID.trim())) {
			tableID = TableConstants.EXTREME_COMPONENTS;
		}
		Context context = new HttpServletRequestContext(request);
		LimitFactory limitFactory = new TableLimitFactory(context, tableID);
		limit = new TableLimit(limitFactory);

		String prefixWithTableId = tableID + "_";


		String currentRowsDisplayed = context.getParameter(prefixWithTableId
				+ TableConstants.CURRENT_ROWS_DISPLAYED);
		if (StringUtils.isNotBlank(currentRowsDisplayed)) {
			crd = Integer.parseInt(currentRowsDisplayed);
		}
		if(crd<1){
			crd = CoreConstants.DEFAULT_PAGE_SIZE;
		}
		if (limit.isFiltered()) {
			initFilterMap(limit);
		}
		if (limit.isSorted()) {
			initOrderMap(limit);
		}
	}

	private void initFilterMap(Limit limit) {
		Filter[] filters = limit.getFilterSet().getFilters();
		for (Filter filter : filters) {
			if (filter.isAliased()) {
				filterMap.put(filter.getProperty(), filter.getValue());
			}
			filterMap.put(filter.getAlias(), filter.getValue());
		}
	}

	private void initOrderMap(Limit limit) {
		Sort sort = limit.getSort();
		if (sort.isAliased()) {
			orderMap.put(sort.getProperty(), sort.getSortOrder());
		}
		orderMap.put(sort.getAlias(), sort.getSortOrder());

		this.ascending = sort.getSortOrder().equalsIgnoreCase(
				TableConstants.SORT_ASC);

	}

	public int getRowEnd() {
		return limit.getRowEnd();
	}

	public int getRowStart() {
		return limit.getRowStart();
	}

	public int getPage() {
		return limit.getPage();
	}

	public int getCurrentRowsDisplayed() {
		return limit.getCurrentRowsDisplayed();
	}

	public int getTotalRows() {
		return limit.getTotalRows();
	}

	public int getPageSize() {
		return crd;
	}

	public Map<String, String> getFilterMap() {
		return filterMap;
	}

	public void setRowAttributes(int totalRows) {
		limit.setRowAttributes(totalRows, getPageSize());
		request.setAttribute(TableConstants.TOTAL_ROWS, new Integer(totalRows));
	}

	/**
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return new ToStringBuilder(this).append("totalRows",
				this.getTotalRows()).append("page", this.getPage()).append(
				"rowEnd", this.getRowEnd()).append("currentRowsDisplayed",
				this.getCurrentRowsDisplayed()).append("rowStart",
				this.getRowStart()).toString();
	}

	/**
	 * @return Returns the limit.
	 */
	public Limit getLimit() {
		return this.limit;
	}

	/**
	 * @param limit
	 *            The limit to set.
	 */
	public void setLimit(Limit limit) {
		this.limit = limit;
	}

	/**
	 * @return Returns the request.
	 */
	public HttpServletRequest getRequest() {
		return this.request;
	}

	/**
	 * @param request
	 *            The request to set.
	 */
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	/**
	 * @return Returns the tableID.
	 */
	public String getTableID() {
		return this.tableID;
	}

	/**
	 * @param tableID
	 *            The tableID to set.
	 */
	public void setTableID(String tableID) {
		this.tableID = tableID;
	}

	/**
	 * @return Returns the crd.
	 */
	public int getCrd() {
		return this.crd;
	}

	/**
	 * @param crd
	 *            The crd to set.
	 */
	public void setCrd(int crd) {
		this.crd = crd;
	}

	/**
	 * @param filterMap
	 *            The filterMap to set.
	 */
	public void setFilterMap(Map<String, String> filterMap) {
		this.filterMap = filterMap;
	}

	/**
	 * @return Returns the sort.
	 */
	public Sort getSort() {
		return this.sort;
	}

	/**
	 * @param sort
	 *            The sort to set.
	 */
	public void setSort(Sort sort) {
		this.sort = sort;
	}

	/**
	 * @return Returns the ascending.
	 */
	public boolean isAscending() {
		return this.ascending;
	}

	/**
	 * @param ascending
	 *            The ascending to set.
	 */
	public void setAscending(boolean ascending) {
		this.ascending = ascending;
	}

	/**
	 * @return Returns the orderMap.
	 */
	public Map<String, String> getOrderMap() {
		return this.orderMap;
	}

	/**
	 * @param orderMap
	 *            The orderMap to set.
	 */
	public void setOrderMap(Map<String, String> orderMap) {
		this.orderMap = orderMap;
	}
}
