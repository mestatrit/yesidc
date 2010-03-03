package cn.cetelem.track;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import cn.cetelem.track.alert.Alert;
import cn.cetelem.track.alert.AlertService;

import com.yesibc.core.spring.SpringContext;

public class AlertUtils {

	public static final String ALERT_ERROR = "0001";
	private static Log log = LogFactory.getLog(AlertUtils.class);

	public static String filter(String str, String[] filters) {
		for (String filter : filters) {
			str = str.replaceAll(filter, "");
		}
		return str;
	}

	public static String filterFirst(String str, String[] filters) {
		for (String filter : filters) {
			str = str.replaceFirst(filter, "");
		}
		return str;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String s = "086-" + "		021-" + "		52306918;";
		System.out.println(s);
		System.out.println(s.length());
	}

	private static AlertService alertService = (AlertService) SpringContext.getBean("alertService");

	public static void sendEXAlert(final Throwable t, final String eStr) {
		new Thread() {
			public void run() {
				Alert a = new Alert();
				a.setId(ALERT_ERROR);
				a.setSmsMsg(eStr + t.getMessage());
				String str = eStr + "!\n Exception:" + getErrString(t);
				a.setMailMsg(str);
				alertService.alert(a);
				log.error("alert send out~!\n" + str);
			}
		}.start();
	}

	public static void sendAlert(final String eStr) {
		new Thread() {
			public void run() {
				Alert a = new Alert();
				a.setId(ALERT_ERROR);
				a.setMailMsg(eStr);
				alertService.alert(a);
				log.error("alert send out~!\n" + eStr);
			}
		}.start();
	}

	public static String getErrString(Throwable t) {
		if (t == null)
			return null;
		StringBuilder sb = new StringBuilder();
		sb.append(t);

		StackTraceElement[] stes = t.getStackTrace();
		String temp = "";
		if (stes != null) {
			for (StackTraceElement ste : stes) {
				temp = ste.toString();
				if (temp.indexOf(")") > -1) {
					sb.append("\n\tat ").append(ste);
				} else {
					sb.append(ste);
				}
			}
		}

		Throwable ourCause = t.getCause();
		if (ourCause != null) {
			sb.append("\ncause:");
			sb.append(getErrString(ourCause));
		}

		return sb.toString();
	}

}
