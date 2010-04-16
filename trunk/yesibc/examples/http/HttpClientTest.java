package http;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

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

public class HttpClientTest {

	/**
	 * 通过匿名代理访问网页
	 * 
	 * @throws ClientProtocolException
	 * @throws IOException
	 */
	public static void getHttpByProxy() throws ClientProtocolException, IOException {
		// 实例化一个HttpClient
		HttpClient httpClient = new DefaultHttpClient();
		// 设定目标站点
		HttpHost httpHost = new HttpHost("www.shanhe114.com");
		// 设置代理对象 ip/代理名称,端口
		HttpHost proxy = new HttpHost("192.168.1.28", 5608);
		// 对HttpClient对象设置代理
		httpClient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, proxy);
		HttpGet httpGet = new HttpGet("/");
		// 这里也可以直接使用httpGet的绝对地址，当然如果不是具体地址不要忘记/结尾
		// HttpGet httpGet = new HttpGet("http://www.shanhe114.com/");
		// HttpResponse response = httpClient.execute(httpGet);

		HttpResponse response = httpClient.execute(httpHost, httpGet);
		if (HttpStatus.SC_OK == response.getStatusLine().getStatusCode()) {
			// 请求成功
			// 取得请求内容
			HttpEntity entity = response.getEntity();
			// 显示内容
			if (entity != null) {
				// 显示结果
				BufferedReader reader = new BufferedReader(new InputStreamReader(entity.getContent(), "UTF-8"));
				String line = null;
				StringBuffer strBuf = new StringBuffer((int) entity.getContentLength());
				while ((line = reader.readLine()) != null) {
					strBuf.append(line);
				}
				strBuf.trimToSize();
				System.out.println(strBuf.toString());
			}
			if (entity != null) {
				entity.consumeContent();
			}
		}
	}

	/**
	 * @param args
	 * @throws IOException
	 * @throws ClientProtocolException
	 */
	public static void getHttpByProxyCredentials () throws ClientProtocolException, IOException {
		// 实例化一个HttpClient
		HttpClient httpClient = new DefaultHttpClient();
		// 设定目标站点
		HttpHost httpHost = new HttpHost("www.shanhe114.com");
		// 设置代理对象 ip/代理名称,端口
		HttpHost proxy = new HttpHost("proxy.tt", 8080);
		// 实例化验证
		CredentialsProvider credsProvider = new BasicCredentialsProvider();
		// 设定验证内容
		UsernamePasswordCredentials creds = new UsernamePasswordCredentials("fttj", "ft07");
		// 创建验证
		credsProvider.setCredentials(new AuthScope(AuthScope.ANY_HOST, AuthScope.ANY_PORT), creds);
		httpClient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, proxy);
		((DefaultHttpClient) httpClient).setCredentialsProvider(credsProvider);

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
