package cn.cetelem.track.log;

import cn.cetelem.track.SpringAppContextContainer;
import cn.cetelem.track.audit.domain.*;
import cn.cetelem.track.audit.service.MainAuditManager;
import cn.cetelem.track.audit.web.exception.AuditException;

/**
 * @author <a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version 1.0
 * @Creationdate:Jan 6, 2009 9:44:30 AM
 */

public class AuditLogger {

	protected final CommonLogger log = LogFactory.getCommonLogger(AuditLogger.class);

	MainAuditManager mainAuditManager;

	public void setMainAuditManager(MainAuditManager mainAuditManager) {
		this.mainAuditManager = mainAuditManager;
	}

	public void logAudit(DesMainAudit desMain) throws AuditException {
		try {
			
			if(desMain == null){
				return;
			}
			
			if(mainAuditManager == null){
				mainAuditManager = (MainAuditManager)SpringAppContextContainer.getBean("mainAuditManager");
			}
			
			if(desMain.getDesAlpha() != null){
				desMain.getDesAlpha().setDesMain(desMain);
			}
			if(desMain.getDesBasic() != null){
				desMain.getDesBasic().setDesMain(desMain);
			}
			if(desMain.getDesDecision() != null){
				desMain.getDesDecision().setDesMain(desMain);
			}
			if(desMain.getDesExt() != null){
				desMain.getDesExt().setDesMain(desMain);
			}
			if(desMain.getDesRisqbis() != null){
				desMain.getDesRisqbis().setDesMain(desMain);
			}
		
			mainAuditManager.saveMainAudit(desMain);
			
		} catch (Exception e) {
			log.logError("Main audit dao error : " + e.getMessage());
			throw new AuditException("Operation error: " + e.getMessage());
		}
	}

}
