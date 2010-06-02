package com.yesibc.core.components.http;

public class TestHTTP {

	public static void main(String[] args) {
		try {
			HttpRequester request = new HttpRequester();
			HttpRespons hr = request.sendGet("http://www.csdn.net");

			System.out.println("hr.getUrlString()=" + hr.getUrlString());
			System.out.println("hr.getProtocol()=" + hr.getProtocol());
			System.out.println("hr.getHost()=" + hr.getHost());
			System.out.println("hr.getPort()=" + hr.getPort());
			System.out.println("hr.getContentEncoding()="
					+ hr.getContentEncoding());
			System.out.println("hr.getMethod()=" + hr.getMethod());

			System.out.println(hr.getContent());

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
