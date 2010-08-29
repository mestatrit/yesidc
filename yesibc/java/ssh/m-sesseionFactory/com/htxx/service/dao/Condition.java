package com.htxx.service.dao;


/**
 * 携带查询所使用的查询条件
 * <li>properties 查询条件中的属性名数组
 * <li>operators 查询条件中的操作符数组，如果该参数为<b>null</b>则操作符都为“=”
 * <li>values 查询条件中的值数组
 * <li>page 查询第几页数据，如果为<b>null</b>或0，则不分页
 * <li>size 返回多少行数据，如果为<b>null</b>或0，则显示所有数据
 * @author FanGang
 * @see com.htxx.service.dao.BasicDao
 */
public class Condition {

    //Fields
    private String[] properties;
    private String[] operators;
    private Object[] values;
    private Integer page;
    private Integer size;
    
    //Constructors

    /** default constructor */
    public Condition(){}
    
    /** minimal constructor */
    public Condition(String[] properties, Object[] values){
        this.properties = properties;
        this.values = values;
    }
    
    /** full constructor */
    public Condition(String[] properties, String[] operators, Object[] values){
        this.properties = properties;
        this.operators = operators;
        this.values = values;
    }
    
    /**
     * @return the operators
     */
    public String[] getOperators() {
        return operators;
    }
    /**
     * @param operators the operators to set
     */
    public void setOperators(String[] operators) {
        this.operators = operators;
    }
    /**
     * @return the properties
     */
    public String[] getProperties() {
        return properties;
    }
    /**
     * @param properties the properties to set
     */
    public void setProperties(String[] properties) {
        this.properties = properties;
    }
    /**
     * @return the values
     */
    public Object[] getValues() {
        return values;
    }
    /**
     * @param values the values to set
     */
    public void setValues(Object[] values) {
        this.values = values;
    }

    /**
     * @return the page
     */
    public Integer getPage() {
        return page;
    }

    /**
     * @param page the page to set
     */
    public void setPage(Integer page) {
        this.page = page;
    }

    /**
     * @return the size
     */
    public Integer getSize() {
        return size;
    }

    /**
     * @param size the size to set
     */
    public void setSize(Integer size) {
        this.size = size;
    }
    
}
