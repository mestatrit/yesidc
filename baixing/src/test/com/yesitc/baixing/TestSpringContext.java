package com.yesitc.baixing;

import com.yesibc.core.components.http.HttpClientHolder;
import com.yesibc.core.components.http.HttpConnectionManager;
import com.yesibc.core.spring.SpringContext;

public class TestSpringContext {

	public static void main(String[] args) {
		HttpConnectionManager httpConnectionManager = (HttpConnectionManager) SpringContext
				.getBean("httpConnectionManager");
		System.out.println(httpConnectionManager.toString());
		System.out.println(HttpClientHolder.getInstance().getHttpClient().toString());
		System.out.println(HttpClientHolder.getInstance().getHttpClient().toString());
		System.out.println(HttpClientHolder.getInstance().getNewHttpClient().toString());
	}
}
