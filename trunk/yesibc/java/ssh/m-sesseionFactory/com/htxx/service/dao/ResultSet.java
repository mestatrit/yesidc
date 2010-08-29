/*
 * Created on Sep 9, 2006
 */
package com.htxx.service.dao;

import java.io.Serializable;
import java.util.Collection;

/**
 * 数据查询的结果集代理对象
 * <li>collection 查询结果集
 * <li>condition 查询条件集
 * <li>totalRows 总共记录数
 * <li>totalPages 总共页数
 * <li>page 当前页数
 * <li>pageSize 每页记录数
 * @author FanGang
 */
public class ResultSet implements Serializable{
	private static final long serialVersionUID = 1375187828856315635L;
    private Collection collection; //数据集
    private Condition condition;   //条件集
	private int totalRows;         //总共记录数
	private int totalPages;         //总共页数
	private int page;              //当前页数
	private int pageSize;          //每页记录数
	
	/**
     * @return the totalPages
     */
    public int getTotalPages() {
        return totalPages;
    }
    /**
     * @param totalPages the totalPages to set
     */
    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }
    /**
	 * @return Returns the collection.
	 */
	public Collection getCollection() {
		return collection;
	}
	/**
	 * @param collection The collection to set.
	 */
	public void setCollection(Collection collection) {
		this.collection = collection;
	}
	/**
	 * @return the condition
	 */
	public Condition getCondition() {
		return condition;
	}
	/**
	 * @param condition the condition to set
	 */
	public void setCondition(Condition condition) {
		this.condition = condition;
	}
	/**
	 * @return Returns the page.
	 */
	public int getPage() {
		return page;
	}
	/**
	 * @param page The page to set.
	 */
	public void setPage(int page) {
		this.page = page;
	}
	/**
	 * @return Returns the pageSize.
	 */
	public int getPageSize() {
		return pageSize;
	}
	/**
	 * @param pageSize The pageSize to set.
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	/**
	 * @return Returns the totalRows.
	 */
	public int getTotalRows() {
		return totalRows;
	}
	/**
	 * @param totalRows The totalRows to set.
	 */
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	
	private void setValues(Collection col,Condition condition,int totalRows,int page){
		int totalPages = 0;
		int pageSize;
		if(totalRows<0||page<0){
			throw new DaoException("The parameter 'totalRows' or 'page' isn't available!");
		}
		
		if(col==null||col.isEmpty()){//没有数据
			totalRows = 0;
			page = 0;
			pageSize = 0;
		}else if(page==0){//不分页
			page = 1;
			totalRows = col.size();
			pageSize = totalRows;
			totalPages = 1;
		}else{
			if(totalRows < col.size()){totalRows = col.size();}
			pageSize = col.size();
			totalPages = totalRows/pageSize + ((totalRows%pageSize > 0)?1:0);
		}
		if(page > totalPages){
			throw new DaoException("The parameter 'page' is out of range!");
		}
		this.setCollection(col);
		this.setCondition(condition);
		this.setTotalRows(totalRows);
		this.setTotalPages(totalPages);
		this.setPage(page);
		this.setPageSize(pageSize);
	}
	
	/**
	 * 输入条件的构造函数，由于当前页数已经在条件中，因此不需要输入当前页数
	 * @param col 结果集
	 * @param condition 条件
	 * @param totalRows 总共行数
	 * @see com.htxx.service.dao.Condition
	 */
	public ResultSet(Collection col,Condition condition,int totalRows){
		setValues(col,condition,totalRows,
				(condition==null||condition.getPage()==null)?0:condition.getPage().intValue());
	}
	
	/**
	 * 不输入条件的构造函数
	 * @param col 结果集
	 * @param totalRows 总共行数
	 * @param page 当前页数
	 */
	public ResultSet(Collection col,int totalRows,int page){
		setValues(col,null,totalRows,page);
	}
	
	/**
	 * 只输入结果集的构造函数
	 * @param col 结果集
	 */
	public ResultSet(Collection col){
		setValues(col, null, 0, 0);
	}
}
