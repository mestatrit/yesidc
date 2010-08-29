/**
 * 
 */
package com.htxx.service.dao;

/**
 * @author FanGang
 *
 */
public class DaoUtil {

    /**
     * @param className
     * @return entityName
     * @throws DaoException
     */
    public static String getEntityName(String className) throws DaoException {
        if(className==null||"".equals(className)){
            throw new DaoException("The parameter 'className' is null or empty.");
        }
        return className.substring(className.lastIndexOf('.')+1);
    }
    
    /**
     * @param obj
     * @return entityName
     */
    public static String getEntityName(Class clazz){
        return clazz==null?"":getEntityName(clazz.getName());
    }
    
    /**
     * @param obj
     * @return entityName
     */
    public static String getEntityName(Object obj){
        return obj==null?"":getEntityName(obj.getClass().getName());
    }
    
    /**
     * @param value
     * @return
     */
    public static int nvl(Integer value){
    	return value==null?0:value.intValue();
    }
    
    /**
     * @param value
     * @return
     */
    public static long nvl(Long value){
    	return value==null?0:value.longValue();
    }
    
    /**
     * @param value
     * @return
     */
    public static float nvl(Float value){
    	return value==null?0:value.floatValue();
    }
    
    /**
     * @param value
     * @return
     */
    public static double nvl(Double value){
    	return value==null?0:value.doubleValue();
    }
}
