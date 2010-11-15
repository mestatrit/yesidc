package com.yesibc.core.components.http;

import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

public class HttpClientHolder {

	private static HttpClientHolder singleton = new HttpClientHolder();
	private static HttpConnectionManager httpConnectionManager ;

	private HttpClientHolder() {
		httpConnectionManager = new HttpConnectionManager();
	}

	public static HttpClientHolder getInstance() {
		return singleton;
	}

	public DefaultHttpClient getHttpClient() {
		return httpConnectionManager.getHttpClient();
	}

	public DefaultHttpClient getNewHttpClient() {
		HttpConnectionManager newConnectionManager = new HttpConnectionManager();
		return newConnectionManager.getNewHttpClient();
	}

	public HttpParams getParams() {
		return httpConnectionManager.getParams();
	}

}
