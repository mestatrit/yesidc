package com.yesibc.core.components.http;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

import com.yesibc.core.utils.StringUtils;

/**
 * @author <a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version 1.0
 * @Creationdate:Dec 23, 2008 5:07:37 PM
 */

public class HttpClientFactoryV4 {


	/**
	 * @param args
	 * @throws IOException
	 * @throws ClientProtocolException
	 */
	public static void getHttpByProxyCredentials(String proxyAddr, int port,
			String user, String pwd,String url) throws ClientProtocolException,
			IOException {
		// 实例化一个HttpClient
		HttpClient httpClient = new DefaultHttpClient();
		// 设定目标站点
		HttpHost httpHost = new HttpHost(url);

		// 设置代理对象 ip/代理名称,端口
		if (!StringUtils.isEmpty(proxyAddr)) {
			HttpHost proxy = new HttpHost(proxyAddr, port);
			httpClient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY,
					proxy);
		}

		if (!StringUtils.isEmpty(user)) {
			// 实例化验证
			CredentialsProvider credsProvider = new BasicCredentialsProvider();
			// 设定验证内容
			UsernamePasswordCredentials creds = new UsernamePasswordCredentials(
					user, pwd);
			// 创建验证
			credsProvider.setCredentials(new AuthScope(AuthScope.ANY_HOST,
					AuthScope.ANY_PORT), creds);
			((DefaultHttpClient) httpClient)
					.setCredentialsProvider(credsProvider);
		}

		// 目标地址
		HttpGet httpget = new HttpGet("/");
		// 执行
		HttpResponse response = httpClient.execute(httpHost, httpget);
		if (HttpStatus.SC_OK == response.getStatusLine().getStatusCode()) {
			// 请求成功
			// 取得请求内容
			HttpEntity entity = response.getEntity();
			// 显示内容
			if (entity != null) {
				// 显示结果

				System.out.println(EntityUtils.toString(entity, "utf-8"));

			}
			if (entity != null) {
				entity.consumeContent();
			}
		}
	}

}
