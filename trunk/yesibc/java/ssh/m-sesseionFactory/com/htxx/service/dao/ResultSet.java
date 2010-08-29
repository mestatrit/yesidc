/*
 * Created on Sep 9, 2006
 */
package com.htxx.service.dao;

import java.io.Serializable;
import java.util.Collection;

/**
 * ���ݲ�ѯ�Ľ�����������
 * <li>collection ��ѯ�����
 * <li>condition ��ѯ������
 * <li>totalRows �ܹ���¼��
 * <li>totalPages �ܹ�ҳ��
 * <li>page ��ǰҳ��
 * <li>pageSize ÿҳ��¼��
 * @author FanGang
 */
public class ResultSet implements Serializable{
	private static final long serialVersionUID = 1375187828856315635L;
    private Collection collection; //���ݼ�
    private Condition condition;   //������
	private int totalRows;         //�ܹ���¼��
	private int totalPages;         //�ܹ�ҳ��
	private int page;              //��ǰҳ��
	private int pageSize;          //ÿҳ��¼��
	
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
		
		if(col==null||col.isEmpty()){//û������
			totalRows = 0;
			page = 0;
			pageSize = 0;
		}else if(page==0){//����ҳ
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
	 * ���������Ĺ��캯�������ڵ�ǰҳ���Ѿ��������У���˲���Ҫ���뵱ǰҳ��
	 * @param col �����
	 * @param condition ����
	 * @param totalRows �ܹ�����
	 * @see com.htxx.service.dao.Condition
	 */
	public ResultSet(Collection col,Condition condition,int totalRows){
		setValues(col,condition,totalRows,
				(condition==null||condition.getPage()==null)?0:condition.getPage().intValue());
	}
	
	/**
	 * �����������Ĺ��캯��
	 * @param col �����
	 * @param totalRows �ܹ�����
	 * @param page ��ǰҳ��
	 */
	public ResultSet(Collection col,int totalRows,int page){
		setValues(col,null,totalRows,page);
	}
	
	/**
	 * ֻ���������Ĺ��캯��
	 * @param col �����
	 */
	public ResultSet(Collection col){
		setValues(col, null, 0, 0);
	}
}
