package cn.cetelem.track.audit.service;

import java.util.List;

import cn.cetelem.track.audit.domain.DesMainAudit;
import cn.cetelem.track.audit.web.exception.DbException;
import cn.cetelem.track.audit.web.exception.ExistsException;
import cn.cetelem.track.audit.web.query.PageList;

/**
 * Business Service Interface to handle communication between web and
 * persistence layer.
 */
public interface MainAuditManager {


    void saveMainAudit(DesMainAudit mainAudit) throws ExistsException, DbException, Exception;
    
    void updateMainAudit(DesMainAudit mainAudit) throws DbException, Exception;

    void deleteMainAuditById(Long id) throws DbException, Exception;
    
    void deleteMainAudit(DesMainAudit mainAudit) throws DbException, Exception;

    DesMainAudit getMainAuditById(Long id) throws DbException, Exception;
    
    List<DesMainAudit> getMainAuditsByAppId(String appId) throws DbException, Exception;
    
    PageList getMainAuditByCriterias(PageList pageList) throws DbException, Exception;

    List<DesMainAudit> getAllMainAudits() throws DbException, Exception;
}
