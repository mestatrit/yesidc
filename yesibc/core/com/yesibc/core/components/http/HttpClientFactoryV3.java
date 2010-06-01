package com.yesibc.core.components.http;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.MultiThreadedHttpConnectionManager;
import org.apache.commons.httpclient.params.HttpConnectionManagerParams;

/**
 * @author <a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version 1.0
 * @Creationdate:Dec 23, 2008 5:07:37 PM
 */

public class HttpClientFactoryV3 {

	private final static int maxConnection = 100;
	private final static int connectionTimeOut = 3600000;
	private static final String PROXY_ADDRESS = "10.164.146.144";
	private static final String PROXY_PORT = "3128";
	private static final String WEBSITE_ADDRESS = "9.48.47.133";
	private static final String WEBSITE_PORT = "80";
	private static final String WEBSITE_PROTOCOL = "http";

	private static MultiThreadedHttpConnectionManager connectionManager = new MultiThreadedHttpConnectionManager();

	private static HttpClient client = getHttpClient(maxConnection,
			connectionTimeOut);

	private static boolean isLogon = false;
	private static int tryLoopTimes = 0;

	/**
	 * get one HttpClient supports multi-thread
	 * 
	 * @return
	 */
	public static HttpClient getHttpClient() {
		client.getHostConfiguration().setProxy(PROXY_ADDRESS,
				Integer.parseInt(PROXY_PORT));
		client.getHostConfiguration().setHost(WEBSITE_ADDRESS,
				Integer.parseInt(WEBSITE_PORT), WEBSITE_PROTOCOL);
		return client;
	}

	private static HttpClient getHttpClient(int maxConnection,
			int connectionTimeOut) {

		HttpConnectionManagerParams params = connectionManager.getParams();

		params.setConnectionTimeout(connectionTimeOut);
		params.setSoTimeout(connectionTimeOut);
		params.setMaxTotalConnections(maxConnection);
		params.setDefaultMaxConnectionsPerHost(maxConnection);

		return new HttpClient(connectionManager);
	}

	public synchronized static int getTryLoopTimes() {
		return tryLoopTimes;
	}

	public synchronized static void setTryLoopTimes(int tryLoopTimes) {
		HttpClientFactoryV3.tryLoopTimes = tryLoopTimes;
	}

	/**
	 * @return the isLogon
	 */
	public synchronized static boolean isLogon() {
		return isLogon;
	}

	/**
	 * @param isLogon
	 *            the isLogon to set
	 */
	public synchronized static void setLogon(boolean isLogon) {
		HttpClientFactoryV3.isLogon = isLogon;
	}

}
