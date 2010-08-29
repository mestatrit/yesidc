package com.htxx.service.dao;


import java.io.Serializable;
import java.util.List;

/**
 * 实现具体数据访问的接口
 * @author FanGang
 * @see com.htxx.serviec.dao.DaoSupportHibernate3Imp
 */
public interface DaoSupport {
    /**
     * 插入一个值对象。
     * @param vo 值对象
     * @return 已执行插入操作的值对象的主键值
     */
    public Serializable insert(Object vo);
    
    /**
     * 更新一个值对象，如果值对象在数据库中不存在，则执行插入操作。
     * @param vo 值对象
     */
    public void update(Object vo);
    
    /**
     * 批量更新一组值对象
     * @param list 值对象列表
     */
    public void update(List list);
    
    /**
     * 删除一个值对象
     * @param vo 值对象
     */
    public void delete(Object vo);
    
    /**
     * 用主键值删除一个值对象
     * @param c 值对象的类
     * @param s 主键值
     */
    public void delete(Class c, Serializable s);
    
    /**
     * 批量删除一组值对象
     * @param list 值对象列表
     */
    public void delete(List list);
    
    /**
     * 根据条件查询数据，<b>注意</b>，该方法之支持单一表的查询
     * @param selectClause 查询语句中from之前的部分(包括select),如果是<b>select *</b>则不写，为null
     * @param clazz      值对象的类
     * @param condition  查询条件
     * @return 查询结果的列表
     * @see com.htxx.service.dao.Condition
     */
    public List query(String selectClause, Class clazz, Condition condition);
    
    /**
     * 根据主键值得到一个值对象，如果该对象不存在则返回null
     * @param c 值对象的类
     * @param s 主键值
     * @return 值对象
     */
    public Object load(Class c, Serializable s);
}
