package com.yesibc.core.components.http;

/* 
 * @{#} HttpclientUtil.java 
 * 
 * Pingzonglangji.com Inc.
 *
 * Copyright (c) 2008-2009 All Rights Reserved.
 */
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.net.ssl.SSLHandshakeException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.NameValuePair;
import org.apache.http.NoHttpResponseException;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.StringUtils;

/**
 * Apache Httpclient 4.0 工具包装类
 * 
 * @author shezy
 */
@SuppressWarnings("all")
public class Httpclient4Util {

	public static final String PROXY_USER_KEY = "proxyUserYTB";
	public static final String PROXY_PWD_KEY = "proxyPwdYTB";
	public static final String PROXY_ADDR_KEY = "proxyAddrYTB";
	public static final String PROXY_PORT_KEY = "proxyPortYTB";
	private static final String CHARSET_UTF8 = "utf-8";
	private static final String CHARSET_GBK = "GBK";
	private static final String SSL_DEFAULT_SCHEME = "https";
	private static final int SSL_DEFAULT_PORT = 443;
	private static DefaultHttpClient httpClientProxy;

	// 使用ResponseHandler接口处理响应，HttpClient使用ResponseHandler会自动管理连接的释放，解决了对连接的释放管理
	private static ResponseHandler<String> responseHandler = new ResponseHandler<String>() {
		// 自定义响应处理
		public String handleResponse(HttpResponse response) throws ClientProtocolException, IOException {
			HttpEntity entity = response.getEntity();
			if (entity != null) {
				String charset = EntityUtils.getContentCharSet(entity) == null ? CHARSET_UTF8 : EntityUtils
						.getContentCharSet(entity);
				return new String(EntityUtils.toByteArray(entity), charset);
			} else {
				return null;
			}
		}
	};

	/**
	 * Get方式提交,URL中包含查询参数, 格式：http://www.g.cn?search=p&name=s.....
	 * 
	 * @param url
	 *            提交地址
	 * @return 响应消息
	 * @throws ApplicationException
	 */
	public static String get(String url) throws ApplicationException {
		return get(url, null, null);
	}

	/**
	 * Get方式提交,URL中不包含查询参数, 格式：http://www.g.cn
	 * 
	 * @param url
	 *            提交地址
	 * @param params
	 *            查询参数集, 键/值对
	 * @return 响应消息
	 * @throws ApplicationException
	 */
	public static String get(String url, Map<String, String> params) throws ApplicationException {
		return get(url, params, null);
	}

	/**
	 * Get方式提交,URL中不包含查询参数, 格式：http://www.g.cn
	 * 
	 * @param url
	 *            提交地址
	 * @param params
	 *            查询参数集, 键/值对
	 * @param charset
	 *            参数提交编码集
	 * @return 响应消息
	 * @throws ApplicationException
	 */
	public static String get(String url, Map<String, String> params, String charset) throws ApplicationException {
		if (url == null || StringUtils.isEmpty(url)) {
			return null;
		}
		List<NameValuePair> qparams = getParamsList(params);
		if (qparams != null && qparams.size() > 0) {
			charset = (charset == null ? CHARSET_GBK : charset);
			String formatParams = URLEncodedUtils.format(qparams, charset);
			url = (url.indexOf("?")) < 0 ? (url + "?" + formatParams) : (url + "&" + formatParams);
		}
		HttpClient httpclient = getDefaultHttpClient(charset, params);
		HttpGet hg = new HttpGet(url);
		
		/**
		 * 不加这一句时，百姓网会乱来
		 */
		hg.setHeader("User-Agent", "msie");
		
		// 发送请求，得到响应
		String responseStr = null;
		try {
			responseStr = httpclient.execute(hg, responseHandler);
		} catch (ClientProtocolException e) {
			throw new ApplicationException("客户端连接协议错误", e);
		} catch (IOException e) {
			throw new ApplicationException("IO操作异常", e);
		} finally {
			abortConnection(hg, httpclient);
		}
		return responseStr;
	}

	/**
	 * Post方式提交,URL中不包含提交参数, 格式：http://www.g.cn
	 * 
	 * @param url
	 *            提交地址
	 * @param params
	 *            提交参数集, 键/值对
	 * @return 响应消息
	 * @throws ApplicationException
	 */
	public static String post(String url, Map<String, String> params) throws ApplicationException {
		return post(url, params, null);
	}

	/**
	 * Post方式提交,URL中不包含提交参数, 格式：http://www.g.cn
	 * 
	 * @param url
	 *            提交地址
	 * @param params
	 *            提交参数集, 键/值对
	 * @param charset
	 *            参数提交编码集
	 * @return 响应消息
	 * @throws ApplicationException
	 */
	public static String post(String url, Map<String, String> params, String charset) throws ApplicationException {
		if (url == null || StringUtils.isEmpty(url)) {
			return null;
		}
		// 创建HttpClient实例
		DefaultHttpClient httpclient = getDefaultHttpClient(charset, params);
		UrlEncodedFormEntity formEntity = null;
		try {
			if (StringUtils.isEmpty(charset)) {
				formEntity = new UrlEncodedFormEntity(getParamsList(params));
			} else {
				formEntity = new UrlEncodedFormEntity(getParamsList(params), charset);
			}
		} catch (UnsupportedEncodingException e) {
			throw new ApplicationException("不支持的编码集", e);
		}
		HttpPost hp = new HttpPost(url);
		hp.setEntity(formEntity);
		// 发送请求，得到响应
		String responseStr = null;
		try {
			responseStr = httpclient.execute(hp, responseHandler);
		} catch (ClientProtocolException e) {
			throw new ApplicationException("客户端连接协议错误", e);
		} catch (IOException e) {
			throw new ApplicationException("IO操作异常", e);
		} finally {
			abortConnection(hp, httpclient);
		}
		return responseStr;
	}

	/**
	 * Post方式提交,忽略URL中包含的参数,解决SSL双向数字证书认证
	 * 
	 * @param url
	 *            提交地址
	 * @param params
	 *            提交参数集, 键/值对
	 * @param charset
	 *            参数编码集
	 * @param keystoreUrl
	 *            密钥存储库路径
	 * @param keystorePassword
	 *            密钥存储库访问密码
	 * @param truststoreUrl
	 *            信任存储库绝路径
	 * @param truststorePassword
	 *            信任存储库访问密码, 可为null
	 * @return 响应消息
	 * @throws ApplicationException
	 * @throws ApplicationException
	 */
	public static String post(String url, Map<String, String> params, String charset, final URL keystoreUrl,
			final String keystorePassword, final URL truststoreUrl, final String truststorePassword)
			throws ApplicationException {
		if (url == null || StringUtils.isEmpty(url)) {
			return null;
		}
		DefaultHttpClient httpclient = getDefaultHttpClient(charset, params);
		UrlEncodedFormEntity formEntity = null;
		try {
			if (StringUtils.isEmpty(charset)) {
				formEntity = new UrlEncodedFormEntity(getParamsList(params));
			} else {
				formEntity = new UrlEncodedFormEntity(getParamsList(params), charset);
			}
		} catch (UnsupportedEncodingException e) {
			throw new ApplicationException("不支持的编码集", e);
		}
		HttpPost hp = null;
		String responseStr = null;
		try {
			KeyStore keyStore = createKeyStore(keystoreUrl, keystorePassword);
			KeyStore trustStore = createKeyStore(truststoreUrl, keystorePassword);
			SSLSocketFactory socketFactory = new SSLSocketFactory(keyStore, keystorePassword, trustStore);
			Scheme scheme = new Scheme(SSL_DEFAULT_SCHEME, socketFactory, SSL_DEFAULT_PORT);
			httpclient.getConnectionManager().getSchemeRegistry().register(scheme);
			hp = new HttpPost(url);
			hp.setEntity(formEntity);
			responseStr = httpclient.execute(hp, responseHandler);
		} catch (NoSuchAlgorithmException e) {
			throw new ApplicationException("指定的加密算法不可用", e);
		} catch (KeyStoreException e) {
			throw new ApplicationException("keytore解析异常", e);
		} catch (CertificateException e) {
			throw new ApplicationException("信任证书过期或解析异常", e);
		} catch (FileNotFoundException e) {
			throw new ApplicationException("keystore文件不存在", e);
		} catch (IOException e) {
			throw new ApplicationException("I/O操作失败或中断 ", e);
		} catch (UnrecoverableKeyException e) {
			throw new ApplicationException("keystore中的密钥无法恢复异常", e);
		} catch (KeyManagementException e) {
			throw new ApplicationException("处理密钥管理的操作异常", e);
		} finally {
			abortConnection(hp, httpclient);
		}
		return responseStr;
	}

	/**
	 * 获取HttpClient实例
	 * 
	 * @param charset
	 *            参数编码集, 可空
	 * @return DefaultHttpClient 对象
	 */
	private static HttpClient getHttpClient() {
		return HttpClientHolder.getInstance().getHttpClient();
	}

	/**
	 * 获取DefaultHttpClient实例
	 * 
	 * @param charset
	 *            参数编码集, 可空
	 * @return DefaultHttpClient 对象
	 */
	private static DefaultHttpClient getDefaultHttpClient(final String charset, Map<String, String> params) {
		boolean proxyHave = false;
		HttpHost proxy = null;
		CredentialsProvider credsProvider = null;
		// 设置代理对象 ip/代理名称,端口
		if (params != null && !StringUtils.isEmpty(params.get(PROXY_ADDR_KEY))) {
			proxyHave = true;
			if (StringUtils.isEmpty(params.get(PROXY_PORT_KEY))) {
				proxy = new HttpHost(params.get(PROXY_ADDR_KEY), 80);
			} else {
				proxy = new HttpHost(params.get(PROXY_ADDR_KEY), Integer.parseInt(params.get(PROXY_PORT_KEY)));
			}
		}

		if (params != null && !StringUtils.isEmpty(params.get(PROXY_USER_KEY))) {
			// 实例化验证
			credsProvider = new BasicCredentialsProvider();
			// 设定验证内容
			UsernamePasswordCredentials creds = new UsernamePasswordCredentials(params.get(PROXY_USER_KEY), params
					.get(PROXY_PWD_KEY));
			// 创建验证
			credsProvider.setCredentials(new AuthScope(AuthScope.ANY_HOST, AuthScope.ANY_PORT), creds);
		}
		if (proxyHave) {
			if (httpClientProxy == null) {
				httpClientProxy = HttpClientHolder.getInstance().getNewHttpClient();
			}
			httpClientProxy.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, proxy);
			httpClientProxy.setCredentialsProvider(credsProvider);
			return httpClientProxy;
		} else {
			return HttpClientHolder.getInstance().getHttpClient();
		}
	}

	/**
	 * 获取DefaultHttpClient实例
	 * 
	 * @param charset
	 *            参数编码集, 可空
	 * @return DefaultHttpClient 对象
	 */
	private static DefaultHttpClient getOrignHttpClient(final String charset, Map<String, String> params) {
		DefaultHttpClient httpclient = new DefaultHttpClient();
		httpclient.getParams().setParameter(CoreProtocolPNames.PROTOCOL_VERSION, HttpVersion.HTTP_1_1);
		// 模拟浏览器，解决一些服务器程序只允许浏览器访问的问题
		httpclient.getParams().setParameter(CoreProtocolPNames.USER_AGENT,
				"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)");
		httpclient.getParams().setParameter(CoreProtocolPNames.USE_EXPECT_CONTINUE, Boolean.FALSE);
		httpclient.getParams().setParameter(CoreProtocolPNames.HTTP_CONTENT_CHARSET,
				charset == null ? CHARSET_GBK : charset);

		// 设置代理对象 ip/代理名称,端口
		if (params != null && !StringUtils.isEmpty(params.get(PROXY_ADDR_KEY))) {
			HttpHost proxy = null;
			if (StringUtils.isEmpty(params.get(PROXY_ADDR_KEY))) {
				proxy = new HttpHost(params.get(PROXY_ADDR_KEY), 80);
			} else {
				proxy = new HttpHost(params.get(PROXY_ADDR_KEY), Integer.parseInt(params.get(PROXY_PORT_KEY)));
			}
			httpclient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, proxy);
		}

		if (params != null && !StringUtils.isEmpty(params.get(PROXY_USER_KEY))) {
			// 实例化验证
			CredentialsProvider credsProvider = new BasicCredentialsProvider();
			// 设定验证内容
			UsernamePasswordCredentials creds = new UsernamePasswordCredentials(params.get(PROXY_USER_KEY), params
					.get(PROXY_PWD_KEY));
			// 创建验证
			credsProvider.setCredentials(new AuthScope(AuthScope.ANY_HOST, AuthScope.ANY_PORT), creds);
			((DefaultHttpClient) httpclient).setCredentialsProvider(credsProvider);
		}

		return httpclient;
	}

	/**
	 * 释放HttpClient连接
	 * 
	 * @param hrb
	 *            请求对象
	 * @param httpclient
	 *            client对象
	 */
	private static void abortConnection(final HttpRequestBase hrb, final HttpClient httpclient) {
		if (hrb != null) {
			hrb.abort();
		}
		if (httpclient != null) {
			//httpclient.getConnectionManager().shutdown();
		}
	}

	/**
	 * 从给定的路径中加载此 KeyStore
	 * 
	 * @param url
	 *            keystore URL路径
	 * @param password
	 *            keystore访问密钥
	 * @return keystore 对象
	 */
	private static KeyStore createKeyStore(final URL url, final String password) throws KeyStoreException,
			NoSuchAlgorithmException, CertificateException, IOException {
		if (url == null) {
			throw new IllegalArgumentException("Keystore url may not be null");
		}
		KeyStore keystore = KeyStore.getInstance(KeyStore.getDefaultType());
		InputStream is = null;
		try {
			is = url.openStream();
			keystore.load(is, password != null ? password.toCharArray() : null);
		} finally {
			if (is != null) {
				is.close();
				is = null;
			}
		}
		return keystore;
	}

	/**
	 * 将传入的键/值对参数转换为NameValuePair参数集
	 * 
	 * @param paramsMap
	 *            参数集, 键/值对
	 * @return NameValuePair参数集
	 */
	private static List<NameValuePair> getParamsList(Map<String, String> paramsMap) {
		if (paramsMap == null || paramsMap.size() == 0) {
			return null;
		}
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		for (Map.Entry<String, String> map : paramsMap.entrySet()) {
			params.add(new BasicNameValuePair(map.getKey(), map.getValue()));
		}
		return params;
	}
}
