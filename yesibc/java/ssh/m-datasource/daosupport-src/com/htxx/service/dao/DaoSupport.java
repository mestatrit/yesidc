package com.htxx.service.dao;


import java.io.Serializable;
import java.util.List;

/**
 * ʵ�־������ݷ��ʵĽӿ�
 * @author FanGang
 * @see com.htxx.serviec.dao.DaoSupportHibernate3Imp
 */
public interface DaoSupport {
    /**
     * ����һ��ֵ����
     * @param vo ֵ����
     * @return ��ִ�в��������ֵ���������ֵ
     */
    public Serializable insert(Object vo);
    
    /**
     * ����һ��ֵ�������ֵ���������ݿ��в����ڣ���ִ�в��������
     * @param vo ֵ����
     */
    public void update(Object vo);
    
    /**
     * ��������һ��ֵ����
     * @param list ֵ�����б�
     */
    public void update(List list);
    
    /**
     * ɾ��һ��ֵ����
     * @param vo ֵ����
     */
    public void delete(Object vo);
    
    /**
     * ������ֵɾ��һ��ֵ����
     * @param c ֵ�������
     * @param s ����ֵ
     */
    public void delete(Class c, Serializable s);
    
    /**
     * ����ɾ��һ��ֵ����
     * @param list ֵ�����б�
     */
    public void delete(List list);
    
    /**
     * ����������ѯ���ݣ�<b>ע��</b>���÷���֧֮�ֵ�һ��Ĳ�ѯ
     * @param selectClause ��ѯ�����from֮ǰ�Ĳ���(����select),�����<b>select *</b>��д��Ϊnull
     * @param className  ֵ���������
     * @param properties ��ѯ�������������б�
     * @param operators  ��ѯ�����Ĳ������б������ѯ�����д��ڲ�Ϊ<b>=</b>�Ĳ���������Ҫ��д���б�����Ϊnull
     * @param values     ��ѯ������ֵ�б����б�Ӧ���������б�һһ��Ӧ
     * @param firstRow   ���ز�ѯ�������ʼ�У��������Ҫ��������Ϊ0
     * @param maxRows    ���ز�ѯ���������������������Ҫ��������Ϊ0
     * @return ��ѯ������б�
     */
    public List query(String selectClause,String className,String[] properties,String[] operators, Object[] values,int firstRow,int maxRows);
    
    /**
     * ��������ֵ�õ�һ��ֵ��������ö��󲻴����򷵻�null
     * @param c ֵ�������
     * @param s ����ֵ
     * @return ֵ����
     */
    public Object load(Class c, Serializable s);
}
