package cn.cetelem.track.audit.service;

import java.io.Serializable;
import java.util.List;

import cn.cetelem.track.audit.dao.BaseDao;

public interface BaseManager {

	/**
     * Expose the setBaseDao method for testing purposes
     * @param dao
     */
    public void setBaseDao(BaseDao baseDao);
    
    /**
     * Generic method used to get a all objects of a particular type. 
     * @param clazz the type of objects 
     * @return List of populated objects
     */
    public List<?> getObjects(Class<?> clazz);
    
    /**
     * Generic method to get an object based on class and identifier. 
     * 
     * @param clazz model class to lookup
     * @param id the identifier (primary key) of the class
     * @return a populated object 
     * @see org.springframework.orm.ObjectRetrievalFailureException
     */
    public Object getObject(Class<?> clazz, Serializable id);

    /**
     * Generic method to save an object.
     * @param o the object to save
     */
    public void saveObject(Object o);
    
    /**
     * Generic method to update an object.
     * @param o the object to save
     */
    public void updateObject(Object o);

    /**
     * Generic method to delete an object based on class and id
     * @param clazz model class to lookup
     * @param id the identifier of the class
     */
    public void deleteObject(Class<?> clazz, Serializable id);
}
