/*
 * Created on 2006-11-22
 *
 */
package com.htxx.service.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * DaoSupport接口对Hibernate3的实现
 * @author FanGang
 * @see com.htxx.service.dao.DaoSupport
 */
public class DaoSupportHibernate3Imp extends HibernateDaoSupport implements DaoSupport {

    private static final Log log = LogFactory.getLog(DaoSupportHibernate3Imp.class);
    
	/* (non-Javadoc)
     * @see com.htxx.service.dao.DaoSupport#insert(java.lang.Object)
     */
    public Serializable insert(Object vo) throws RuntimeException {
        log.debug("insert "+getEntityName(vo)+" instance...");
        try{
            return this.getHibernateTemplate().save(vo);
        } catch (RuntimeException re) {
            log.error("insert failed!", re);
            throw re;
        }
    }

    /* (non-Javadoc)
     * @see com.htxx.service.dao.DaoSupport#update(java.lang.Object)
     */
    public void update(Object vo) throws RuntimeException {
        log.debug("update "+getEntityName(vo)+" instance...");
        try{
            this.getHibernateTemplate().saveOrUpdate(vo);
            log.debug("update successful!");
        } catch (RuntimeException re) {
            log.error("update failed!", re);
            throw re;
        }
    }
    

    /* (non-Javadoc)
     * @see com.htxx.service.dao.DaoSupport#update(java.util.List)
     */
    public void update(final List list) throws RuntimeException {
        log.debug("update with list!");
        try{
            this.getHibernateTemplate().saveOrUpdateAll(list);
        } catch (RuntimeException re) {
            log.error("update failed!", re);
            throw re;
        }
    }

    /* (non-Javadoc)
     * @see com.htxx.service.dao.DaoSupport#delete(java.lang.Object)
     */
    public void delete(Object vo) throws RuntimeException {
        log.debug("delete "+getEntityName(vo)+" instance...");
        try{
            this.getHibernateTemplate().delete(vo);
            log.debug("delete successful!");
        } catch (RuntimeException re) {
            log.error("delete failed!", re);
            throw re;
        }
    }
    
    /* (non-Javadoc)
     * @see com.htxx.service.dao.DaoSupport#delete(java.lang.Class, java.io.Serializable)
     */
    public void delete(Class c,Serializable s) {
        Object vo = this.load(c, s);
        this.delete(vo);
    }

    /* (non-Javadoc)
     * @see com.htxx.service.dao.DaoSupport#delete(java.util.List)
     */
    public void delete(List list) throws RuntimeException {
        log.debug("delete with a list.");
        try{
            this.getHibernateTemplate().deleteAll(list);
        } catch (RuntimeException re) {
            log.error("delete failed!", re);
            throw re;
        }
    }

    /* (non-Javadoc)
     * @see com.htxx.service.dao.DaoSupport#load(java.lang.Class, java.io.Serializable)
     */
    public Object load(Class c, Serializable s) throws RuntimeException {
        log.debug("load "+getEntityName(c)+" instance with id: "+s);
        try{
        	return this.getHibernateTemplate().get(c, s);
        } catch (ObjectNotFoundException ex) {
            log.error("Not such Object with id:" + s, ex);
            return null;
        } catch (RuntimeException re) {
            log.error("load failed!", re);
            throw re;
        }
    }

    /* (non-Javadoc)
     * @see com.htxx.service.dao.DaoSupport#query(java.lang.String, java.lang.String, java.lang.String[], java.lang.String[], java.lang.Object[], int, int)
     */
    public List query(final String selectClause, final String className, final String[] propertyNames, 
            final String[] operators, final Object[] values, final int firstRow, final int maxRows) 
    		throws RuntimeException, DaoException {
        log.debug("query "+className+" instance with properties: ");
        try{
            return (List) this.getHibernateTemplate().execute(
                new HibernateCallback() {
                    public Object doInHibernate(Session session) throws HibernateException, SQLException {
                        if(className==null||className.equals("")){throw new DaoException("类名不能为空!");}
                        String Hql = (selectClause==null?"":selectClause) + "from " + className + " as model ";
                        Query query = null;
                        
                        if(propertyNames!=null&&propertyNames.length>0&&values!=null&&values.length>0){
                            if(propertyNames.length!=values.length){throw new DaoException("条件列表与值列表不对应！");}
                            if(operators!=null&&propertyNames.length!=operators.length){throw new DaoException("条件列表与操作符列表不对应！");}
                            
                            String where = "";
                            for(int i=0;i<=propertyNames.length-1;i++){
                                if("".equals(where)){where="where ";}
                                else{where +="and ";}
                                where += "model."+propertyNames[i]+(operators==null||operators[i]==null?"=":operators[i])+"? ";
                                log.debug(propertyNames[i]+(operators==null||operators[i]==null?"=":operators[i])+"? ");
                            }
                            Hql += where;
                            query = session.createQuery(Hql);
                            
                            for(int i=0;i<=values.length-1;i++){
                                query.setParameter(i, values[i]);
                            }
                        }else{
                            query = session.createQuery(Hql);
                        }
                        
                        if(firstRow>0){
                            query.setFirstResult(firstRow);
                            log.debug("first row: "+firstRow);
                        }
                        if(maxRows>0){
                            query.setMaxResults(maxRows);
                            log.debug("max rows: "+maxRows);
                        }
                        
                        return query.list();
                    }
                }
            );
        } catch (RuntimeException re) {
            log.error("query failed!", re);
            throw re;
        }
    }
    
    /**
     * @param className
     * @return entityName
     * @throws DaoException
     */
    private String getEntityName(String className) throws DaoException {
        if(className==null||"".equals(className)){
            throw new DaoException("The parameter 'className' is null or empty.");
        }
        return className.substring(className.lastIndexOf('.')+1);
    }
    
    /**
     * @param obj
     * @return entityName
     */
    private String getEntityName(Object obj){
        return obj==null?"":getEntityName(obj.getClass().getName());
    }
}
