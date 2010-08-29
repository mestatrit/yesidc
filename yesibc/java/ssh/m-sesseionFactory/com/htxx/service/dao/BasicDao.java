package com.htxx.service.dao;


import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;


/**
 * DAO的基础类。BasicDao通过调用接口DaoSupport实现值对象的数据持久化，
 * 而接口DaoSupport也各种具体的实现类，诸如DaoSupportHibernateImp、DaoSupportHibernate3Imp等。
 * BasicDao在实例化时应当为属性daoSupport指定实现类，否则将抛出DaoException异常。
 * <p>BasicDao在项目中可以分为单DAO和多DAO两种方式使用：
 * <li>单DAO：使用接口GenericDao作为单DAO提供给各个业务类调用，使用BasicDao作为GenericDao的实现类。
 * <li>多DAO：将BasicDao作为基础类实现各种具体业务实体的dao。
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
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#update(java.util.Collection)
     */
    public void update(Collection collection){
    	getDaoSupport().update(collection);
    }

	/* (non-Javadoc)
	 * @see com.htxx.service.dao.GenericDao#update(java.lang.Class, com.htxx.service.dao.Condition, com.htxx.service.dao.UpdateProxy)
	 */
	public void update(Class clazz, Condition condition, UpdateProxy proxy) {
		List list = getDaoSupport().query("", clazz, condition);
		for(Iterator iter = list.iterator();iter.hasNext();){
			proxy.execute(iter.next());
		}
		update(list);
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
     * @see com.htxx.service.dao.GenericDao#delete(java.lang.Class, com.htxx.service.dao.Condition)
     */
    public void delete(Class clazz, Condition condition){
    	List list = getDaoSupport().query("", clazz, condition);
        getDaoSupport().delete(list);
    }
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#load(java.lang.Class, java.io.Serializable)
     */
    public Object load(Class c,Serializable s){
        return getDaoSupport().load(c, s);
    }
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#getCount(java.lang.Class, com.htxx.service.dao.Condition)
     */
    public int getCount(Class clazz, Condition condition){
    	List list = getDaoSupport().query("select count(*)", clazz, condition);
        return ((Integer)list.get(0)).intValue();
    }
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.GenericDao#query(java.lang.Class, com.htxx.service.dao.Condition)
     */
    public ResultSet query(Class clazz, Condition condition){
    	if(condition==null){//无查询条件的
        	List list = getDaoSupport().query(null, clazz, null);
        	int count = list.size();
        	return new ResultSet(list, count, 1);
        }else{//有查询条件的
	        List list = getDaoSupport().query(null, clazz, condition);
	        int count = 0;
	        if(condition.getSize()==null||condition.getSize().intValue()<=0
	        		||condition.getSize().intValue()>list.size()){
	            count = list.size();//返回的结果是全部的结果
	        }else{
	        	count = getCount(clazz, condition);//返回的结果只是全部结果的其中一页，需求查询全部结果的count
	        }
	        return new ResultSet(list, condition, count);
        }
    }
}
