package http;

import java.io.IOException;

import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.httpclient.params.HttpMethodParams;

import com.yesibc.core.components.http.MultiThreadedHttpClientFactoryV3;

public class HttpV3Test {
	public static void main(String[] args) {
		dianPing();
		// t51Job();
	}

	private static void t51Job() {
		// 构造HttpClient的实例
		HttpClient httpClient = MultiThreadedHttpClientFactoryV3.getHttpClient(2, 10, 360000);
		httpClient.getHostConfiguration().setProxy("10.164.146.144", 3128);
		// httpClient.getHostConfiguration().setHost("http://search.51job.com",
		// 80, "http");

		String url = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14";

		// 创建GET方法的实例
		GetMethod getMethod = new GetMethod(url);
		// getMethod.setRequestHeader("User-Agent", "fake");
		// 使用系统提供的默认的恢复策略
		// getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,
		// new DefaultHttpMethodRetryHandler());
		try {
			// 执行getMethod
			int statusCode = httpClient.executeMethod(getMethod);
			if (statusCode != HttpStatus.SC_OK) {
				System.err.println("Method failed: " + getMethod.getStatusLine());
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
		GetMethod getMethod = new GetMethod("http://shanghai.baixing.com/diannao/?areaName=changning&page=2");
		Header[] hs = getMethod.getRequestHeaders();
		if (hs != null) {
			for (Header h : hs) {
				System.out.println(h.getName() + "," + h.getValue());
			}
		}
		System.out.println(getMethod.getRequestHeader("User-Agent"));
		getMethod.setRequestHeader("User-Agent", "msie");
		// 使用系统提供的默认的恢复策略
		getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new DefaultHttpMethodRetryHandler());
		System.out.println("getContentCharset=" + getMethod.getParams().getContentCharset());
		System.out.println("getCookiePolicy=" + getMethod.getParams().getCookiePolicy());
		System.out.println("getCredentialCharset=" + getMethod.getParams().getCredentialCharset());
		System.out.println("getSoTimeout=" + getMethod.getParams().getSoTimeout());
		System.out.println("getUriCharset=" + getMethod.getParams().getUriCharset());
		System.out.println("getVirtualHost=" + getMethod.getParams().getVirtualHost());
		System.out.println("getVersion=" + getMethod.getParams().getVersion());

		System.out.println("HttpMethodParams.USER_AGENT                 =" + getMethod.getParams().getParameter(HttpMethodParams.USER_AGENT));
		System.out.println("HttpMethodParams.PROTOCOL_VERSION           =" + getMethod.getParams().getParameter(HttpMethodParams.PROTOCOL_VERSION));
		System.out.println("HttpMethodParams.UNAMBIGUOUS_STATUS_LINE    =" + getMethod.getParams().getParameter(HttpMethodParams.UNAMBIGUOUS_STATUS_LINE));
		System.out.println("HttpMethodParams.SINGLE_COOKIE_HEADER       =" + getMethod.getParams().getParameter(HttpMethodParams.SINGLE_COOKIE_HEADER));
		System.out.println("HttpMethodParams.STRICT_TRANSFER_ENCODING   =" + getMethod.getParams().getParameter(HttpMethodParams.STRICT_TRANSFER_ENCODING));
		System.out.println("HttpMethodParams.REJECT_HEAD_BODY           =" + getMethod.getParams().getParameter(HttpMethodParams.REJECT_HEAD_BODY));
		System.out.println("HttpMethodParams.HEAD_BODY_CHECK_TIMEOUT    =" + getMethod.getParams().getParameter(HttpMethodParams.HEAD_BODY_CHECK_TIMEOUT));
		System.out.println("HttpMethodParams.USE_EXPECT_CONTINUE        =" + getMethod.getParams().getParameter(HttpMethodParams.USE_EXPECT_CONTINUE));
		System.out.println("HttpMethodParams.CREDENTIAL_CHARSET         =" + getMethod.getParams().getParameter(HttpMethodParams.CREDENTIAL_CHARSET));
		System.out.println("HttpMethodParams.HTTP_ELEMENT_CHARSET       =" + getMethod.getParams().getParameter(HttpMethodParams.HTTP_ELEMENT_CHARSET));
		System.out.println("HttpMethodParams.HTTP_URI_CHARSET           =" + getMethod.getParams().getParameter(HttpMethodParams.HTTP_URI_CHARSET));
		System.out.println("HttpMethodParams.HTTP_CONTENT_CHARSET       =" + getMethod.getParams().getParameter(HttpMethodParams.HTTP_CONTENT_CHARSET));
		System.out.println("HttpMethodParams.COOKIE_POLICY              =" + getMethod.getParams().getParameter(HttpMethodParams.COOKIE_POLICY));
		System.out.println("HttpMethodParams.WARN_EXTRA_INPUT           =" + getMethod.getParams().getParameter(HttpMethodParams.WARN_EXTRA_INPUT));
		System.out.println("HttpMethodParams.STATUS_LINE_GARBAGE_LIMIT  =" + getMethod.getParams().getParameter(HttpMethodParams.STATUS_LINE_GARBAGE_LIMIT));
		System.out.println("HttpMethodParams.SO_TIMEOUT                 =" + getMethod.getParams().getParameter(HttpMethodParams.SO_TIMEOUT));
		System.out.println("HttpMethodParams.DATE_PATTERNS              =" + getMethod.getParams().getParameter(HttpMethodParams.DATE_PATTERNS));
		System.out.println("HttpMethodParams.RETRY_HANDLER              =" + getMethod.getParams().getParameter(HttpMethodParams.RETRY_HANDLER));
		System.out.println("HttpMethodParams.BUFFER_WARN_TRIGGER_LIMIT  =" + getMethod.getParams().getParameter(HttpMethodParams.BUFFER_WARN_TRIGGER_LIMIT));
		System.out.println("HttpMethodParams.VIRTUAL_HOST               =" + getMethod.getParams().getParameter(HttpMethodParams.VIRTUAL_HOST));
		System.out.println("HttpMethodParams.MULTIPART_BOUNDARY         =" + getMethod.getParams().getParameter(HttpMethodParams.MULTIPART_BOUNDARY));
		
		System.out.println("ALLOW_CIRCULAR_REDIRECTS="
				+ getMethod.getParams().getDefaultParams().getParameter(HttpClientParams.ALLOW_CIRCULAR_REDIRECTS));
		System.out.println("CONNECTION_MANAGER_CLASS="
				+ getMethod.getParams().getDefaultParams().getParameter(HttpClientParams.CONNECTION_MANAGER_CLASS));
		System.out.println("CONNECTION_MANAGER_TIMEOUT="
				+ getMethod.getParams().getDefaultParams().getParameter(HttpClientParams.CONNECTION_MANAGER_TIMEOUT));
		System.out.println("MAX_REDIRECTS="
				+ getMethod.getParams().getDefaultParams().getParameter(HttpClientParams.MAX_REDIRECTS));
		System.out.println("PREEMPTIVE_AUTHENTICATION="
				+ getMethod.getParams().getDefaultParams().getParameter(HttpClientParams.PREEMPTIVE_AUTHENTICATION));
		System.out.println("REJECT_RELATIVE_REDIRECT="
				+ getMethod.getParams().getDefaultParams().getParameter(HttpClientParams.REJECT_RELATIVE_REDIRECT));
		try {
			// 执行getMethod
			int statusCode = httpClient.executeMethod(getMethod);
			if (statusCode != HttpStatus.SC_OK) {
				System.err.println("Method failed: " + getMethod.getStatusLine());
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
