package cn.cetelem.track.audit.web.query;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings( { "unchecked" })
public class PageList extends ArrayList implements Serializable {

	private static final long serialVersionUID = 1L;

	private int pageCount;// page record count

	private int totalCount;// total record count

	private int currentPage;// current page

	private int totalPage;// total page count;

	private Filter filter;// set filter

	public PageList(int currentPage, int pageCount) {
		super();
		this.currentPage = currentPage;
		this.pageCount = pageCount;
	}

	public PageList(int currentPage, int pageCount, Filter filter) {
		super();
		this.currentPage = currentPage;
		this.pageCount = pageCount;
		this.filter = filter;
	}

	public void setResult(List result, int totalCount) {
		this.totalCount = totalCount;
		this.totalPage = (totalCount + pageCount - 1) / pageCount;
		if (this.currentPage > this.totalPage)
			this.currentPage = this.totalPage;
		if (this.currentPage < 1)
			this.currentPage = 1;

		this.clear();

		if (result != null) {
			this.addAll(result);
		}
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public boolean isFirstPage() {
		return this.currentPage <= 1;
	}

	public boolean isLastPage() {
		return this.currentPage >= this.totalPage;
	}

	public Filter getFilter() {
		return filter;
	}

	public void setFilter(Filter filter) {
		this.filter = filter;
	}

	public String toString() {
		return "\n" + "pageCount: " + pageCount + "\n" + "currentPage: "
				+ currentPage + "\n" + "totalPage: " + totalPage + "\n"
				+ "totalCount: " + totalCount + "\n" + "size: " + size() + "\n"
				+ "list:\n" + super.toString();
	}

}