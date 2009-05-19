/**
 * $Id: Page.java,v 1.6 2008/06/26 10:24:28 abel Exp $
 */

package com.yesibc.core.dao.support;

import java.io.Serializable;
import java.util.List;

import com.yesibc.core.CoreConstants;

/**
 * Page Object. It includes the data of current page and the information of
 * paging,such as total pages.
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午11:31:32
 */

public class Page<T> implements Serializable {

	/**
	 * long:serialVersionUID
	 */
	private static final long serialVersionUID = -5732135470845307885L;

	private Class<T> entityClass;

	private int pageSize = CoreConstants.DEFAULT_PAGE_SIZE; // records per page

	private int start; // the location of the first record of list in current
	// page , starting form 0.

	private List<T> list; // records in current page

	private int totalCount; // total records

	private int currentPageNo;

	private int totalPageCount;

	/**
	 * construct method
	 * 
	 * @param pageSize
	 * @param currentPageNo
	 * @param totalPageCount
	 * @param start
	 * @param totalCount
	 * @param list
	 * @param entityClass
	 */
	public Page(int pageSize, int currentPageNo, int totalPageCount, int start,
			int totalCount, List<T> list, Class<T> entityClass) {
		this.pageSize = pageSize;
		this.currentPageNo = currentPageNo;
		this.totalPageCount = totalPageCount;
		this.start = start;
		this.totalCount = totalCount;
		this.list = list;
		this.entityClass = entityClass;
	}

	/**
	 * construct method
	 * 
	 * @param pageSize
	 * @param currentPageNo
	 * @param totalPageCount
	 * @param totalCount
	 * @param list
	 * @param entityClass
	 */
	public Page(int pageSize, int currentPageNo, int totalPageCount,
			int totalCount, List<T> list, Class<T> entityClass) {
		this.pageSize = pageSize;
		this.currentPageNo = currentPageNo;
		this.totalPageCount = totalPageCount;
		this.totalCount = totalCount;
		this.list = list;
		this.entityClass = entityClass;
	}

	/**
	 * construct method by default.
	 * 
	 * @param start
	 *            the location of the first record of list in current page ,
	 *            starting form 0.
	 * @param currentPageNo
	 * @param totalSize
	 *            total pages
	 * @param pageSize
	 *            records per page
	 * @param list
	 *            records in current page
	 */
	public Page(int pageSize, int currentPageNo, int totalPageCount,
			int totalCount, List<T> list) {
		this.pageSize = pageSize;
		this.currentPageNo = currentPageNo;
		this.totalPageCount = totalPageCount;
		this.totalCount = totalCount;
		this.list = list;
	}

	/**
	 * Get total records.
	 */
	public int getTotalCount() {
		return this.totalCount;
	}

	/**
	 * Get total pages.
	 */
	public int getTotalPageCount() {
		return totalPageCount;
	}

	/**
	 * Get total pages.
	 */
	public static int getTotalPageCount(int totalCount1, int pageSize1) {
		if (pageSize1 < 1)
			return 0;
		if (totalCount1 % pageSize1 == 0)
			return totalCount1 / pageSize1;
		else
			return totalCount1 / pageSize1 + 1;
	}

	/**
	 * Get records per page.
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * Get current page number,starting from 1.
	 */
	public int getCurrentPageNo() {
		return currentPageNo;
	}

	/**
	 * Judge whether there is next page.
	 */
	public boolean hasNextPage() {
		return this.getCurrentPageNo() < this.getTotalPageCount() - 1;
	}

	/**
	 * Judge whether there is pre page.
	 */
	public boolean hasPreviousPage() {
		return this.getCurrentPageNo() > 1;
	}

	/**
	 * Get the location of the first record of list in any page. It use default
	 * value of records per page.
	 * 
	 * @see #getStartOfPage(int,int)
	 */
	protected static int getStartOfPage(int pageNo) {
		return getStartOfPage(pageNo, CoreConstants.DEFAULT_PAGE_SIZE);
	}

	/**
	 * Get the location of the first record of list in any page.
	 * 
	 * @param pageNo
	 *            starting from 1.
	 * @param pageSize
	 *            records per pages.
	 * @return the first record in the page.
	 */
	public static int getStartOfPage(int pageNo, int pageSize) {
		return (pageNo - 1) * pageSize;
	}

	/**
	 * @return Returns the start.
	 */
	public int getStart() {
		if (this.start < 2) {
			this.start = this.currentPageNo * this.pageSize + 1;
		}
		return this.start;
	}

	/**
	 * @param start
	 *            The start to set.
	 */
	public void setStart(int start) {
		this.start = start;
	}

	/**
	 * @param pageSize
	 *            The pageSize to set.
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @param totalCount
	 *            The totalCount to set.
	 */
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	/**
	 * @param currentPageNo
	 *            The currentPageNo to set.
	 */
	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	/**
	 * @param totalPageCount
	 *            The totalPageCount to set.
	 */
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	/**
	 * @return Returns the list.
	 */
	public List<T> getList() {
		return this.list;
	}

	/**
	 * @param list
	 *            The list to set.
	 */
	public void setList(List<T> list) {
		this.list = list;
	}

	/**
	 * @return Returns the entityClass.
	 */
	public Class<T> getEntityClass() {
		return this.entityClass;
	}

	/**
	 * @param entityClass
	 *            The entityClass to set.
	 */
	public void setEntityClass(Class<T> entityClass) {
		this.entityClass = entityClass;
	}

}