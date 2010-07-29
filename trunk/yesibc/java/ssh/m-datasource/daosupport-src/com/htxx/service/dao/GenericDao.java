/*
 * Created on Feb 13, 2007
 *
 */
package com.htxx.service.dao;

import java.io.Serializable;

/**
 * ͨ��DAO�ӿڡ���BUSʹ�õ�DAOʱ��ʹ�øýӿڲ���<b>BasicDao</b>��Ϊ��ʵ�֡�
 * @author FanGang
 * @see com.htxx.service.dao.BasicDao
 */
public interface GenericDao {

    /**
     * ����ֵ����
     * @param vo ֵ����
     * @return ����ֵ
     */
    public Serializable insert(Object vo);

    /**
     * ����ֵ���󡣸÷���ʵ�ֵ���hibernate��saveOrUpdate()����˿����Զ�ʶ���ֵ�����ǲ��뻹�Ǹ��¡�
     * @param vo ֵ����
     */
    public void update(Object vo);

    /**
     * ���ݲ�ѯ�����������£���������<b>Condition<b/>�����С�
     * @param className ֵ���������
     * @param condition ����
     * @param proxy ����������ݵĴ����࣬����ʱ���������ڲ������ʽ��
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
     * ɾ��ֵ����
     * @param vo ֵ����
     */
    public void delete(Object vo);

    /**
     * ��������ֵɾ��ֵ����
     * @param c ֵ�������
     * @param s ����ֵ
     */
    public void delete(Class c, Serializable s);

    /**
     * ���ݲ�ѯ��������ɾ������������<b>Condition<b/>�����С�
     * @param className ֵ���������
     * @param condition ����
     * @see com.htxx.service.dao.Condition
     */
    public void delete(String className, Condition condition);

    /**
     * �õ�һ��ֵ����
     * @param c ֵ�������
     * @param s ����ֵ
     * @return ֵ����
     */
    public Object load(Class c, Serializable s);

    /**
     * ��ѯcount(*)����������<b>Condition<b/>�����С�
     * @param className ֵ���������
     * @param condition ����
     * @return count(*)
     * @see com.htxx.service.dao.Condition
     */
    public int getCount(String className, Condition condition);

    /**
     * ��������ҳ��ѯ�������ͷ�ҳ��Ϣ����<b>Condition<b/>�����У�
     * ��ѯ�Ľ�����������Ϣ����<b>ResultSet</b>������
     * @param className ֵ���������
     * @param condition ����
     * @return �����
     * @see com.htxx.service.dao.Condition
     * @see com.htxx.service.dao.ResultSet
     */
    public ResultSet query(String className, Condition condition);

}