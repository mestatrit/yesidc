/**
 * $Id: PageCommon.java,v 1.2 2008/01/11 07:04:34 abel Exp $
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

@SuppressWarnings("unchecked")
public class PageCommon implements Serializable {

	/**
	 * long:serialVersionUID
	 */
	private static final long serialVersionUID = -5732135470845307887L;

	private int pageSize = CoreConstants.DEFAULT_PAGE_SIZE; // records per page

	private int start; // the location of the first record of list in current
	// page , starting form 0.

	private List list; // records in current page

	private int totalCount; // total records

	private int currentPageNo;

	private int totalPageCount;

	public PageCommon() {

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
	public PageCommon(int pageSize, int currentPageNo, int totalPageCount,
			int start, int totalCount, List list) {
		this.pageSize = pageSize;
		this.currentPageNo = currentPageNo;
		this.totalPageCount = totalPageCount;
		this.start = start;
		this.totalCount = totalCount;
		this.list = list;
	}

	/**
	 * @return Returns the pageSize.
	 */
	public int getPageSize() {
		return this.pageSize;
	}

	/**
	 * @param pageSize
	 *            The pageSize to set.
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @return Returns the start.
	 */
	public int getStart() {
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
	 * @return Returns the list.
	 */
	public List getList() {
		return this.list;
	}

	/**
	 * @param list
	 *            The list to set.
	 */
	public void setList(List list) {
		this.list = list;
	}

	/**
	 * @return Returns the totalCount.
	 */
	public int getTotalCount() {
		return this.totalCount;
	}

	/**
	 * @param totalCount
	 *            The totalCount to set.
	 */
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	/**
	 * @return Returns the currentPageNo.
	 */
	public int getCurrentPageNo() {
		return this.currentPageNo;
	}

	/**
	 * @param currentPageNo
	 *            The currentPageNo to set.
	 */
	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	/**
	 * @return Returns the totalPageCount.
	 */
	public int getTotalPageCount() {
		return this.totalPageCount;
	}

	/**
	 * @param totalPageCount
	 *            The totalPageCount to set.
	 */
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
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
}