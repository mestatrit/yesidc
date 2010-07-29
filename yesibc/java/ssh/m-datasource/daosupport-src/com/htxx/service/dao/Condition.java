package com.htxx.service.dao;


/**
 * Я����ѯ��ʹ�õĲ�ѯ����
 * <li>properties ��ѯ�����е�����������
 * <li>operators ��ѯ�����еĲ��������飬����ò���Ϊ<b>null</b>���������Ϊ��=��
 * <li>values ��ѯ�����е�ֵ����
 * <li>page ��ѯ�ڼ�ҳ���ݣ����Ϊ<b>null</b>��0���򲻷�ҳ
 * <li>size ���ض��������ݣ����Ϊ<b>null</b>��0������ʾ��������
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
