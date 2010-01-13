package cn.cetelem.track.audit.service.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.DataAccessException;

import cn.cetelem.track.audit.dao.MainAuditDao;
import cn.cetelem.track.audit.domain.DesMainAudit;
import cn.cetelem.track.audit.service.MainAuditManager;
import cn.cetelem.track.audit.web.exception.DbException;
import cn.cetelem.track.audit.web.exception.ExistsException;
import cn.cetelem.track.audit.web.query.PageList;

/**
 * Implementation of ArticleManager interface.</p>

 */
public class MainAuditManagerImpl extends BaseManagerImpl implements MainAuditManager {

    protected final Log log = LogFactory.getLog(getClass());

    protected MainAuditDao mainAuditDao = null;

    public void setMainAuditDao(MainAuditDao mainAuditDao) {
        this.mainAuditDao = mainAuditDao;
    }

    public void saveMainAudit(DesMainAudit mainAudit) throws ExistsException,
        DbException, Exception {
        try {
        	mainAuditDao.saveMainAudit(mainAudit);
        }
        catch (Exception e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
    }

    public void deleteMainAuditById(Long id) throws DbException, Exception {
        try {
        	mainAuditDao.deleteMainAuditById(id);
        }
        catch (DataAccessException e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
        catch (Exception e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
    }
    
    public void deleteMainAudit(DesMainAudit mainAudit) throws DbException, Exception {
        try {
        	mainAuditDao.deleteMainAudit(mainAudit);
        }
        catch (DataAccessException e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
        catch (Exception e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
    }

    public PageList getMainAuditByCriterias(PageList pageList) throws DbException,
        Exception {
        PageList result = null;
        try {
            result = mainAuditDao.getMainAuditByCriterias(pageList);
        }
        catch (DataAccessException e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
        catch (Exception e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
        return result;
    }

    public DesMainAudit getMainAuditById(Long id) throws DbException, Exception {
    	DesMainAudit result = null;
        try {
            result = mainAuditDao.getMainAuditById(id);
        }
        catch (DataAccessException e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
        catch (Exception e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
        return result;
    }
    
    public List<DesMainAudit> getMainAuditsByAppId(String appId) throws DbException, Exception {
    	try {
        	return mainAuditDao.getMainAuditsByAppId(appId);
        }
        catch (DataAccessException e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
        catch (Exception e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
    }

    public void updateMainAudit(DesMainAudit mainAudit) throws DbException, Exception {
        try {
        	mainAuditDao.updateMainAudit(mainAudit);
        }
        catch (DataAccessException e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
        catch (Exception e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
    }

    public List<DesMainAudit> getAllMainAudits() throws DbException, Exception {
        try {
            return mainAuditDao.getAllMainAudits();
        }
        catch (DataAccessException e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
        catch (Exception e) {
        	log.error("Main audit dao error : " + e.getMessage());
        	throw new DbException("Operation error: " + e.getMessage());
        }
    }
    
    
    
}
