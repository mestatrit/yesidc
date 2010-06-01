package com.yesibc.core.components.http;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.MultiThreadedHttpConnectionManager;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.httpclient.params.HttpConnectionManagerParams;

/**
 * this class managers HttpClient 
 * 
 * @author andy.gao
 *
 */
public class MultiThreadedHttpClientFactoryV3 { 
	
	public static HttpClient getHttpClient(int initConnection, 
			int maxConnection,
			int waitConnectionTimeOut){
		
		HttpClientParams clientParams = new HttpClientParams();
		HttpConnectionManagerParams connParams 
			= new HttpConnectionManagerParams();
		//
		clientParams.setConnectionManagerTimeout(waitConnectionTimeOut);
		//
		connParams.setDefaultMaxConnectionsPerHost(maxConnection);
		/**
		 * we should not set this param, in case of we have several hosts
		 */
//		connParams.setMaxTotalConnections(maxConnection);
		
		MultiThreadedHttpConnectionManager connectionManager = 
			new MultiThreadedHttpConnectionManager();
		//
		connectionManager.setParams(connParams);
		
		//
		return new HttpClient(clientParams, connectionManager);
	}
}
