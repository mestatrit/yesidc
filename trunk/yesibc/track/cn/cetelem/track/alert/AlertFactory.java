package cn.cetelem.track.alert;


/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Jan 4, 2009 4:53:13 PM
 */

public class AlertFactory {
	
	public static AlertService getAlertService() {
		return new AlertService();
	}
}
