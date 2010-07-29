package com.htxx.service.dao;


import java.io.Serializable;
import java.util.Iterator;
import java.util.List;


/**
 * DAO�Ļ����ࡣBasicDaoͨ�����ýӿ�DaoSupportʵ��ֵ��������ݳ־û���
 * ���ӿ�DaoSupportҲ���־����ʵ���࣬����DaoSupportHibernateImp��DaoSupportHibernate3Imp�ȡ�
 * BasicDao��ʵ����ʱӦ��Ϊ����daoSupportָ��ʵ���࣬�����׳�DaoException�쳣��
 * <p>BasicDao����Ŀ�п��Է�Ϊ��DAO�Ͷ�DAO���ַ�ʽʹ�ã�
 * <li>��DAO��ʹ�ýӿ�GenericDao��Ϊ��DAO�ṩ������ҵ������ã�ʹ��BasicDao��ΪGenericDao��ʵ���ࡣ
 * <li>��DAO����BasicDao��Ϊ������ʵ�ָ��־���ҵ��ʵ���dao��
 * @author FanGang
 * @see com.htxx.service.dao.GenericDao
 * @see com.htxx.service.dao.DaoSupport
 */
public class BasicDao implements GenericDao {
    
    private DaoSupport daoSupport = null;
    
    /**
     * @return
     * @throws DaoException
     */
    public DaoSupport getDaoSupport() throws DaoException {
        if(daoSupport==null){
            throw new DaoException("The property 'daoSupport' is null due to no setting the property with a implement when construct the BasicDao.");
        }
        return daoSupport;
    }

    /**
     * @param daoSupport
     * @throws DaoException
     */
    public void setDaoSupport(DaoSupport daoSupport) throws DaoException{
        if(daoSupport==null){
            throw new DaoException("Setting the property 'daoSupport' with a null!");
        }
        this.daoSupport = daoSupport;
    }

    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#insert(java.lang.Object)
     */
    public Serializable insert(Object vo){
        return getDaoSupport().insert(vo);
    }
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#update(java.lang.Object)
     */
    public void update(Object vo){
        getDaoSupport().update(vo);
    }

	public void update(String className, Condition condition, UpdateProxy proxy) {
		List list = getDaoSupport().query("", className, condition.getProperties(), condition.getOperators(), 
    			condition.getValues(), 0, 0);
		for(Iterator iter = list.iterator();iter.hasNext();){
			proxy.execute(iter.next());
		}
		getDaoSupport().update(list);
	}
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#delete(java.lang.Object)
     */
    public void delete(Object vo){
        getDaoSupport().delete(vo);
    }
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#delete(java.lang.Class, java.io.Serializable)
     */
    public void delete(Class c,Serializable s){
        getDaoSupport().delete(c, s);
    }

    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#delete(java.lang.String, com.htxx.service.dao.Condition)
     */
    public void delete(String className, Condition condition){
    	List list = getDaoSupport().query("", className, condition.getProperties(), condition.getOperators(), 
    			condition.getValues(), 0, 0);
        getDaoSupport().delete(list);
    }
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#load(java.lang.Class, java.io.Serializable)
     */
    public Object load(Class c,Serializable s){
        return getDaoSupport().load(c, s);
    }
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#getCount(java.lang.String, com.htxx.service.dao.Condition)
     */
    public int getCount(String className, Condition condition){
    	List list = getDaoSupport().query("select count(*)", className, condition.getProperties(), 
    			condition.getOperators(), condition.getValues(), 0, 0);
        return ((Integer)list.get(0)).intValue();
    }
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#query(java.lang.String, com.htxx.service.dao.Condition)
     */
    public ResultSet query(String className, Condition condition){
        if(condition==null){//�޲�ѯ������
        	List list = getDaoSupport().query(null, className, null, null, null, 0, 0);
        	int count = list.size();
        	return new ResultSet(list, count, 0);
        }else{//�в�ѯ������
	        String[] propertyNames = condition.getProperties();
	        String[] operators = condition.getOperators();
	        Object[] values = condition.getValues();
	        int page = condition.getPage()==null ? 0 : condition.getPage().intValue();
	        int size = condition.getSize()==null ? 0 : condition.getSize().intValue();
	        List list = getDaoSupport().query(null, className, propertyNames, operators, values, (page-1)*size, size);
	        int count = 0;
	        if(page > 0){
	            count = getCount(className, condition);
	        }else{
	            count = list.size();
	        }
	        return new ResultSet(list, condition, count);
        }
    }
}
