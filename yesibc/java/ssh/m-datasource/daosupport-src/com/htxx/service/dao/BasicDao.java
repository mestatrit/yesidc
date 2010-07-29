package com.htxx.service.dao;


import java.io.Serializable;
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
        if(condition==null){//无查询条件的
        	List list = getDaoSupport().query(null, className, null, null, null, 0, 0);
        	int count = list.size();
        	return new ResultSet(list, count, 0);
        }else{//有查询条件的
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
