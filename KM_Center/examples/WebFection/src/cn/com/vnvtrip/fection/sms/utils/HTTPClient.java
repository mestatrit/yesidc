package cn.com.vnvtrip.fection.sms.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.ByteArrayRequestEntity;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;

/**
 * 
 * @author longgangbai
 * 
 */
public class HTTPClient {
	/**
	 * 
	 * @param httpurl
	 * @return
	 */
	public static String execute(String httpurl) {
		// 构建HttpClient的实例的应用
		HttpClient httpclient = new HttpClient();
		// 创建GET方法的实例
		GetMethod getmethod = new GetMethod(httpurl);
		// 创建的POST方法的实例 PostMethod postmethod=new PostMethod(httpurl);

		// 使用系统提供的默认的恢复策略
		getmethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,
				new DefaultHttpMethodRetryHandler());
		try {
			// 执行GET方法的请求的实例
			int statusCode = httpclient.executeMethod(getmethod);
			// 查看响应的编码的方式
			String responseEncoding = getmethod.getRequestCharSet();
			System.out.println("the response encoding is :" + responseEncoding);
			// 检测发送是否成功的
			if (statusCode != HttpStatus.SC_OK) {
				System.out.println("Method failure:"
						+ getmethod.getStatusLine());
			}
			// 得到响应的消息体
			byte[] responseBody = getmethod.getResponseBody();
			return new String(responseBody);
		} catch (HttpException e) {
			System.out.println("please check you provided http address！" + e);
		} catch (IOException e) {
			// 发生网络异常信息
			e.printStackTrace();
		} finally {
			// 释放连接
			getmethod.releaseConnection();
		}
		return null;

	}

	/**
	 * 使用HttpClient调用远程servlet
	 * 
	 * @param httpurl
	 * @param xmlInfo
	 * @param map
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static InputStream executeHttp(String httpurl, String xmlInfo,
			Map<String, String> map) {
		HttpClient httpclient = new HttpClient();
		// 使用Post发送消息的方法的应用
		PostMethod postmethod = new PostMethod(httpurl);
		ByteArrayRequestEntity requestEntity = new ByteArrayRequestEntity(
				xmlInfo.getBytes(), "text/html; charset=UTF-8");
		InputStream inputstream = null;
		// 设置请求的实体
		postmethod.setRequestEntity(requestEntity);
		// 设置请求的格式
		try {
			// 设置消息头信息
			if (map != null) {
				for (Iterator it = map.entrySet().iterator(); it.hasNext();) {
					Entry<String, String> header = (Entry<String, String>) it
							.next();
					String key = header.getKey();
					String value = header.getValue();
					postmethod.setRequestHeader(key, value);
				}
			}
			// 发送消息的方法的
			httpclient.executeMethod(postmethod);

			// 发送成功接受请求的信息
			if (postmethod.getStatusCode() == HttpStatus.SC_OK) {
				inputstream = postmethod.getResponseBodyAsStream();
			} else {
				System.out.println("unexpected failure:"
						+ postmethod.getStatusLine());
			}

		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			postmethod.releaseConnection();
		}
		return inputstream;
	}

	/**
	 * 使用HttpClient调用远程servlet
	 * 
	 * @param httpurl
	 * @param xmlInfo
	 * @param map
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static InputStream executeHttp(String httpurl,
			Map<String, String> paramMaps, Map<String, String> map) {
		HttpClient httpclient = new HttpClient();
		// 使用Post发送消息的方法的应用
		PostMethod postmethod = new PostMethod(httpurl);
		InputStream inputstream = null;
		// 设置请求的填入各个表单域的值
		List<NameValuePair> paramList = new ArrayList<NameValuePair>();
		NameValuePair[] params = new NameValuePair[paramMaps.size()];
		if (paramMaps != null) {
			for (Iterator it = paramMaps.entrySet().iterator(); it.hasNext();) {
				Entry<String, String> header = (Entry<String, String>) it
						.next();
				String key = header.getKey();
				String value = header.getValue();
				NameValuePair param = new NameValuePair();
				param.setName(key);
				param.setValue(value);
				paramList.add(param);
			}
		}
		paramList.toArray(params);
		postmethod.setRequestBody(params);
		// 设置请求的格式
		try {
			if (map != null) {
				// 设置消息头信息
				for (Iterator it = map.entrySet().iterator(); it.hasNext();) {
					Entry<String, String> header = (Entry<String, String>) it
							.next();
					String key = header.getKey();
					String value = header.getValue();
					postmethod.setRequestHeader(key, value);
				}
			}
			// 发送消息的方法的
			int statusCode = httpclient.executeMethod(postmethod);
			// 自动转向的方式的应用
			// HttpClient对于要求接受后继服务的请求，象POST和PUT等不能自动处理转发301或者302
			if (statusCode == HttpStatus.SC_MOVED_PERMANENTLY
					|| statusCode == HttpStatus.SC_MOVED_TEMPORARILY) {
				Header locationHeader = postmethod.getRequestHeader("location");
				String location = null;
				if (locationHeader != null) {
					location = locationHeader.getValue();
					System.out
							.println("the page was redirected to:" + location);

				} else {
					System.out.println("Location field value is null！");
				}
			}
			// 发送成功接受请求的信息
			if (postmethod.getStatusCode() == HttpStatus.SC_OK) {
				inputstream = postmethod.getResponseBodyAsStream();
			} else {
				System.out.println("unexpected failure:"
						+ postmethod.getStatusLine());
			}
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			postmethod.releaseConnection();
		}
		return inputstream;
	}
}
