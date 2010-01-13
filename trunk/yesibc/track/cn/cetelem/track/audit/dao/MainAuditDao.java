package cn.cetelem.track.audit.dao;

import java.util.List;

import cn.cetelem.track.audit.domain.DesMainAudit;
import cn.cetelem.track.audit.web.query.PageList;


/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Dec 2, 2008 5:38:45 PM
 */

public interface MainAuditDao extends BaseDao {

	void saveMainAudit(DesMainAudit mainAudit);

	void deleteMainAudit(DesMainAudit mainAudit);

	void deleteMainAuditById(Long id);

	void updateMainAudit(DesMainAudit mainAudit);

	DesMainAudit getMainAuditById(Long id);
	
	List<DesMainAudit> getMainAuditsByAppId(String appId);

    List<DesMainAudit> getAllMainAudits();

    PageList getMainAuditByCriterias(PageList pageList);

}
