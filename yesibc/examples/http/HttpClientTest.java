package http;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpClientConnection;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.RequestConnControl;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestExpectContinue;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.apache.http.util.EntityUtils;

public class HttpClientTest {

	/**
	 * HttpClient 4 使用POST方式提交普通表单数据的例子.
	 * 
	 * @author JAVA世纪网(java2000.net, laozizhu.com)
	 * @throws IOException
	 * @throws ClientProtocolException
	 */
	public static void httpClientPost() throws ClientProtocolException,
			IOException {
		DefaultHttpClient httpclient = new DefaultHttpClient();
		// 代理的设置
		HttpHost proxy = new HttpHost("10.60.8.20", 8080);
		httpclient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY,
				proxy);
		// 目标地址
		HttpPost httppost = new HttpPost("http://www.java2000.net/login.jsp");
		System.out.println("请求: " + httppost.getRequestLine());
		// 构造最简单的字符串数据
		StringEntity reqEntity = new StringEntity("username=test&password=test");
		// 设置类型
		reqEntity.setContentType("application/x-www-form-urlencoded");
		// 设置请求的数据
		httppost.setEntity(reqEntity);
		// 执行
		HttpResponse response = httpclient.execute(httppost);
		HttpEntity entity = response.getEntity();
		System.out.println("----------------------------------------");
		System.out.println(response.getStatusLine());
		if (entity != null) {
			System.out.println("Response content length: "
					+ entity.getContentLength());
		}
		// 显示结果
		BufferedReader reader = new BufferedReader(new InputStreamReader(entity
				.getContent(), "UTF-8"));
		String line = null;
		while ((line = reader.readLine()) != null) {
			System.out.println(line);
		}
		if (entity != null) {
			entity.consumeContent();
		}
	}

	/**
	 * 通过匿名代理访问网页
	 * 
	 * @throws ClientProtocolException
	 * @throws IOException
	 */
	public static void httpGet1() throws ClientProtocolException, IOException {
		// 实例化一个HttpClient
		HttpClient httpClient = new DefaultHttpClient();
		// 设定目标站点
		HttpHost httpHost = new HttpHost("www.shanhe114.com");
		// 设置代理对象 ip/代理名称,端口
		HttpHost proxy = new HttpHost("192.168.1.28", 5608);
		// 对HttpClient对象设置代理
		httpClient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY,
				proxy);
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
				BufferedReader reader = new BufferedReader(
						new InputStreamReader(entity.getContent(), "UTF-8"));
				String line = null;
				StringBuffer strBuf = new StringBuffer((int) entity
						.getContentLength());
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
	 * 通过匿名代理访问网页
	 * 
	 * @throws ClientProtocolException
	 * @throws IOException
	 * @throws HttpException
	 */
	public static void httpGet2() throws ClientProtocolException, IOException,
			HttpException {
		HttpParams params = new BasicHttpParams();
		// HTTP 协议的版本,1.1/1.0/0.9
		HttpProtocolParams.setVersion(params, HttpVersion.HTTP_1_1);
		// 字符集
		HttpProtocolParams.setContentCharset(params, "UTF-8");
		// 伪装的浏览器类型
		// IE7 是
		// Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 6.0)
		//
		// Firefox3.03
		// Mozilla/5.0 (Windows; U; Windows NT 5.2; zh-CN; rv:1.9.0.3)
		// Gecko/2008092417 Firefox/3.0.3
		//
		HttpProtocolParams.setUserAgent(params, "HttpComponents/1.1");
		HttpProtocolParams.setUseExpectContinue(params, true);

		BasicHttpProcessor httpproc = new BasicHttpProcessor();

		httpproc.addInterceptor(new RequestContent());
		httpproc.addInterceptor(new RequestTargetHost());

		httpproc.addInterceptor(new RequestConnControl());
		httpproc.addInterceptor(new RequestUserAgent());
		httpproc.addInterceptor(new RequestExpectContinue());

		HttpRequestExecutor httpexecutor = new HttpRequestExecutor();

		HttpContext context = new BasicHttpContext(null);
		HttpHost host = new HttpHost("www.java2000.net", 80);

		DefaultHttpClientConnection conn = new DefaultHttpClientConnection();
		ConnectionReuseStrategy connStrategy = new DefaultConnectionReuseStrategy();

		context.setAttribute(ExecutionContext.HTTP_CONNECTION, conn);
		context.setAttribute(ExecutionContext.HTTP_TARGET_HOST, host);

		try {

			String[] targets = { "/", "/help.jsp" };

			for (int i = 0; i < targets.length; i++) {
				if (!conn.isOpen()) {
					Socket socket = new Socket(host.getHostName(), host
							.getPort());
					conn.bind(socket, params);
				}
				BasicHttpRequest request = new BasicHttpRequest("GET",
						targets[i]);
				System.out.println(">> Request URI: "
						+ request.getRequestLine().getUri());

				context.setAttribute(ExecutionContext.HTTP_REQUEST, request);
				request.setParams(params);
				httpexecutor.preProcess(request, httpproc, context);
				HttpResponse response = httpexecutor.execute(request, conn,
						context);
				response.setParams(params);
				httpexecutor.postProcess(response, httpproc, context);

				// 返回码
				System.out.println("<< Response: " + response.getStatusLine());
				// 返回的文件头信息
				Header[] hs = response.getAllHeaders();
				for (Header h : hs) {
					System.out.println(h.getName() + ":" + h.getValue());
				}
				// 输出主体信息
				System.out.println(EntityUtils.toString(response.getEntity()));
				System.out.println("==============");
				if (!connStrategy.keepAlive(response, context)) {
					conn.close();
				} else {
					System.out.println("Connection kept alive...");
				}
			}
		} finally {
			conn.close();
		}
	}

	/**
	 * @param args
	 * @throws IOException
	 * @throws ClientProtocolException
	 */
	public static void getHttpByProxyCredentials()
			throws ClientProtocolException, IOException {
		// 实例化一个HttpClient
		HttpClient httpClient = new DefaultHttpClient();
		// 设定目标站点
		HttpHost httpHost = new HttpHost("www.shanhe114.com");
		// 设置代理对象 ip/代理名称,端口
		HttpHost proxy = new HttpHost("proxy.tt", 8080);
		// 实例化验证
		CredentialsProvider credsProvider = new BasicCredentialsProvider();
		// 设定验证内容
		UsernamePasswordCredentials creds = new UsernamePasswordCredentials(
				"fttj", "ft07");
		// 创建验证
		credsProvider.setCredentials(new AuthScope(AuthScope.ANY_HOST,
				AuthScope.ANY_PORT), creds);
		httpClient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY,
				proxy);
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

	/**
	 * HttpClient 4处理文件上传的例子(MultipartEntity).<br>
	 * 需要 James Mime4j 0.5的版本，0.6的不行。
	 * 
	 * @author JAVA世纪网(java2000.net, laozizhu.com)
	 */
	public static void httpClientMultipartFormPost()
			throws ClientProtocolException, IOException, HttpException {
		HttpClient httpclient = new DefaultHttpClient();
		HttpPost httppost = new HttpPost("http://localhost");
		// 一个本地的文件
		FileBody bin = new FileBody(new File("d:/BIMG1181.JPG"));
		// 一个字符串
		StringBody comment = new StringBody("A binary file of some kind");
		// 多部分的实体
		MultipartEntity reqEntity = new MultipartEntity();
		// 增加
		reqEntity.addPart("bin", bin);
		reqEntity.addPart("comment", comment);
		// 设置
		httppost.setEntity(reqEntity);
		System.out.println("执行: " + httppost.getRequestLine());
		HttpResponse response = httpclient.execute(httppost);
		HttpEntity resEntity = response.getEntity();
		System.out.println("----------------------------------------");
		System.out.println(response.getStatusLine());
		if (resEntity != null) {
			System.out.println("返回长度: " + resEntity.getContentLength());
		}
		if (resEntity != null) {
			resEntity.consumeContent();
		}
	}

}
