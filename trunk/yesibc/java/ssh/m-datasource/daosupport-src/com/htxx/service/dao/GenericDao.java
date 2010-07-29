/*
 * Created on Feb 13, 2007
 *
 */
package com.htxx.service.dao;

import java.io.Serializable;

/**
 * 通用DAO接口。当BUS使用单DAO时，使用该接口并将<b>BasicDao</b>作为其实现。
 * @author FanGang
 * @see com.htxx.service.dao.BasicDao
 */
public interface GenericDao {

    /**
     * 插入值对象
     * @param vo 值对象
     * @return 主键值
     */
    public Serializable insert(Object vo);

    /**
     * 更新值对象。该方法实现的是hibernate的saveOrUpdate()，因此可以自动识别该值对象是插入还是更新。
     * @param vo 值对象
     */
    public void update(Object vo);

    /**
     * 根据查询条件批量更新，条件放在<b>Condition<b/>对象中。
     * @param className 值对象的类名
     * @param condition 条件
     * @param proxy 处理更新内容的代理类，调用时采用匿名内部类的形式：
     * <pre>
     * new UpdateProxy(){
     *   public void execute(Object vo){
     *     SomeObj obj = (SomeObj)vo;
     *     obj.setXxx(value);
     *     ...
     *   }
     * }
     * </pre>
     * @see com.htxx.service.dao.Condition
     */
    public void update(String className, Condition condition, UpdateProxy proxy);

    /**
     * 删除值对象
     * @param vo 值对象
     */
    public void delete(Object vo);

    /**
     * 根据主键值删除值对象
     * @param c 值对象的类
     * @param s 主键值
     */
    public void delete(Class c, Serializable s);

    /**
     * 根据查询条件批量删除，条件放在<b>Condition<b/>对象中。
     * @param className 值对象的类名
     * @param condition 条件
     * @see com.htxx.service.dao.Condition
     */
    public void delete(String className, Condition condition);

    /**
     * 得到一个值对象
     * @param c 值对象的类
     * @param s 主键值
     * @return 值对象
     */
    public Object load(Class c, Serializable s);

    /**
     * 查询count(*)，条件放在<b>Condition<b/>对象中。
     * @param className 值对象的类名
     * @param condition 条件
     * @return count(*)
     * @see com.htxx.service.dao.Condition
     */
    public int getCount(String className, Condition condition);

    /**
     * 按条件分页查询，条件和分页信息放在<b>Condition<b/>对象中，
     * 查询的结果及其相关信息放在<b>ResultSet</b>对象中
     * @param className 值对象的类名
     * @param condition 条件
     * @return 结果集
     * @see com.htxx.service.dao.Condition
     * @see com.htxx.service.dao.ResultSet
     */
    public ResultSet query(String className, Condition condition);

}