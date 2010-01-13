package cn.cetelem.track.audit.service.impl;

import cn.cetelem.track.audit.dao.BaseDao;
import cn.cetelem.track.audit.service.BaseManager;
import cn.cetelem.track.log.CommonLogger;
import cn.cetelem.track.log.LogFactory;

import java.io.Serializable;
import java.util.List;

/**
 * Base class for Business Services - use this class for utility methods and
 * generic CRUD methods.
 */
public class BaseManagerImpl implements BaseManager {

	protected final static CommonLogger log = LogFactory.getCommonLogger(BaseManagerImpl.class);
	
    protected BaseDao baseDao = null;
    
    /**
     * @see cn.cetelem.track.service.Manager#setDao(org.appfuse.dao.Dao)
     */
    public void setBaseDao(BaseDao baseDao) {
        this.baseDao = baseDao;
    }
    
    /**
     * @see cn.cetelem.track.service.Manager#getObject(java.lang.Class, java.io.Serializable)
     */
    public Object getObject(Class<?> clazz, Serializable id) {
        return baseDao.getObject(clazz, id);
    }
    
    /**
     * @see cn.cetelem.track.service.Manager#getObjects(java.lang.Class)
     */
    public List<?> getObjects(Class<?> clazz) {
        return baseDao.getObjects(clazz);
    }
    
    /**
     * @see cn.cetelem.track.service.Manager#deleteObject(java.lang.Class, java.io.Serializable)
     */
    public void deleteObject(Class<?> clazz, Serializable id) {
        baseDao.deleteObject(clazz, id);
    }
    
    /**
     * @see cn.cetelem.track.service.Manager#saveObject(java.lang.Object)
     */
    public void saveObject(Object o) {
        baseDao.saveObject(o);
    }
    
    /**
     * @see cn.cetelem.track.service.Manager#saveObject(java.lang.Object)
     */
    public void updateObject(Object o) {
        baseDao.updateObject(o);
    }

}
