package com.yesidc.email.common;


public class EmailConstants {
	
	public final static String[][] EMAIL_SERVERS = {{"163","http://reg.email.163.com/mailregAll/reg0.jsp?from=163mail_right"}};

	public final static String WEBRENDERER_ID = EmailUtils.getServerConfByKey("webrenderer.id");
	public final static String WEBRENDERER_SN = EmailUtils.getServerConfByKey("webrenderer.sn");

	public static final int THREADS_NUMBER = 5;

	public static final String DIALOG_USERNAME = "admin";

	public static final String DIALOG_PASSWORD = "xiamen";

	public static final boolean SHOW_FRAME = true;

	public static final long WAITING_TIME_LOADING = 2000;

	public static final int WAITING_TIMES = 20;

	public static final int WAITING_TIME_SECONDS = WAITING_TIMES*2;

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

}
