package http;

import java.io.IOException;

import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;

import com.yesibc.core.components.http.MultiThreadedHttpClientFactoryV3;

public class HttpV3Test {
	public static void main(String[] args) {
		// dianPing();
		t51Job();
	}

	private static void t51Job() {
		// 构造HttpClient的实例
		HttpClient httpClient = MultiThreadedHttpClientFactoryV3.getHttpClient(
				2, 10, 360000);
		httpClient.getHostConfiguration().setProxy("10.164.146.144", 3128);
//		httpClient.getHostConfiguration().setHost("http://search.51job.com",
//				80, "http");

		String url = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14";

		// 创建GET方法的实例
		GetMethod getMethod = new GetMethod(url);
		//getMethod.setRequestHeader("User-Agent", "fake");
		// 使用系统提供的默认的恢复策略
//		getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,
//				new DefaultHttpMethodRetryHandler());
		try {
			// 执行getMethod
			int statusCode = httpClient.executeMethod(getMethod);
			if (statusCode != HttpStatus.SC_OK) {
				System.err.println("Method failed: "
						+ getMethod.getStatusLine());
			}
			// 读取内容
			byte[] responseBody = getMethod.getResponseBody();
			// 处理内容
			System.out.println(new String(responseBody));
			System.out.println("Content Length:" + responseBody.length);
		} catch (HttpException e) {
			// 发生致命的异常，可能是协议不对或者返回的内容有问题
			System.out.println("Please check your provided http address!");
			e.printStackTrace();
		} catch (IOException e) {
			// 发生网络异常
			e.printStackTrace();
		} finally {
			// 释放连接
			getMethod.releaseConnection();
		}
	}

	private static void dianPing() {
		// 构造HttpClient的实例
		HttpClient httpClient = new HttpClient();
		// 创建GET方法的实例
		GetMethod getMethod = new GetMethod("http://www.dianping.com");
		getMethod.setRequestHeader("User-Agent", "fake");
		// 使用系统提供的默认的恢复策略
		getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,
				new DefaultHttpMethodRetryHandler());
		try {
			// 执行getMethod
			int statusCode = httpClient.executeMethod(getMethod);
			if (statusCode != HttpStatus.SC_OK) {
				System.err.println("Method failed: "
						+ getMethod.getStatusLine());
			}
			// 读取内容
			byte[] responseBody = getMethod.getResponseBody();
			// 处理内容
			System.out.println(new String(responseBody));
		} catch (HttpException e) {
			// 发生致命的异常，可能是协议不对或者返回的内容有问题
			System.out.println("Please check your provided http address!");
			e.printStackTrace();
		} catch (IOException e) {
			// 发生网络异常
			e.printStackTrace();
		} finally {
			// 释放连接
			getMethod.releaseConnection();
		}
	}

}
