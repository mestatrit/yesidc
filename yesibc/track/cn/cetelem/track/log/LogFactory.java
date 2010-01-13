package cn.cetelem.track.log;

/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Jan 6, 2009 10:09:12 AM
 */

public class LogFactory {
	
	public static CommonLogger getCommonLogger(String name) {
		return CommonLogger.getLogger(name);
	}

	public static CommonLogger getCommonLogger(Class<?> clazz) {
		return CommonLogger.getLogger(clazz);
	}
	
	public static AuditLogger getAuditLogger() {
		return new AuditLogger();
	}
	
	public static PerformanceLogger getPerformanceLogger() {
		return new PerformanceLogger();
	}
	
}
