package http;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpClientConnection;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
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

	public static void httpGet3() throws ClientProtocolException, IOException,
			HttpException {
		// 初始化，此处构造函数就与3.1中不同
		HttpClient httpclient = new DefaultHttpClient();

		HttpHost targetHost = new HttpHost("www.google.cn");
		// HttpGet httpget = new HttpGet("http://www.apache.org/");
		HttpGet httpget = new HttpGet("/");

		// 查看默认request头部信息
		System.out.println("Accept-Charset:"
				+ httpget.getFirstHeader("Accept-Charset"));
		// 以下这条如果不加会发现无论你设置Accept-Charset为gbk还是utf-8，他都会默认返回gb2312（本例针对google.cn来说）
		httpget.setHeader("User-Agent",
				"Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.1.2)");
		// 用逗号分隔显示可以同时接受多种编码
		httpget.setHeader("Accept-Language", "zh-cn,zh;q=0.5");
		httpget.setHeader("Accept-Charset", "GB2312,utf-8;q=0.7,*;q=0.7");
		// 验证头部信息设置生效
		System.out.println("Accept-Charset:"
				+ httpget.getFirstHeader("Accept-Charset").getValue());

		// Execute HTTP request
		System.out.println("executing request " + httpget.getURI());
		HttpResponse response = httpclient.execute(targetHost, httpget);
		// HttpResponse response = httpclient.execute(httpget);

		System.out.println("----------------------------------------");
		System.out.println("Location: " + response.getLastHeader("Location"));
		System.out.println(response.getStatusLine().getStatusCode());
		System.out.println(response.getLastHeader("Content-Type"));
		System.out.println(response.getLastHeader("Content-Length"));

		System.out.println("----------------------------------------");

		// 判断页面返回状态判断是否进行转向抓取新链接
		int statusCode = response.getStatusLine().getStatusCode();
		if ((statusCode == HttpStatus.SC_MOVED_PERMANENTLY)
				|| (statusCode == HttpStatus.SC_MOVED_TEMPORARILY)
				|| (statusCode == HttpStatus.SC_SEE_OTHER)
				|| (statusCode == HttpStatus.SC_TEMPORARY_REDIRECT)) {
			// 此处重定向处理 此处还未验证
			String newUri = response.getLastHeader("Location").getValue();
			httpclient = new DefaultHttpClient();
			httpget = new HttpGet(newUri);
			response = httpclient.execute(httpget);
		}

		// Get hold of the response entity
		HttpEntity entity = response.getEntity();

		// 查看所有返回头部信息
		Header headers[] = response.getAllHeaders();
		int ii = 0;
		while (ii < headers.length) {
			System.out.println(headers[ii].getName() + ": "
					+ headers[ii].getValue());
			++ii;
		}

		// If the response does not enclose an entity, there is no need
		// to bother about connection release
		if (entity != null) {
			// 将源码流保存在一个byte数组当中，因为可能需要两次用到该流，
			byte[] bytes = EntityUtils.toByteArray(entity);
			String charSet = "";

			// 如果头部Content-Type中包含了编码信息，那么我们可以直接在此处获取
			charSet = EntityUtils.getContentCharSet(entity);

			System.out.println("In header: " + charSet);
			// 如果头部中没有，那么我们需要 查看页面源码，这个方法虽然不能说完全正确，因为有些粗糙的网页编码者没有在页面中写头部编码信息
			String regEx;
			if (charSet == "") {
				regEx = "(?=<meta).*?(?<=charset=[\\'|\\\"]?)([[a-z]|[A-Z]|[0-9]|-]*)";
				Pattern p = Pattern.compile(regEx, Pattern.CASE_INSENSITIVE);
				Matcher m = p.matcher(new String(bytes)); // 默认编码转成字符串，因为我们的匹配中无中文，所以串中可能的乱码对我们没有影响
				boolean result = m.find();
				System.out.println("m.find(): " + result);
				if (m.groupCount() == 1) {
					charSet = m.group(1);
				} else {
					charSet = "";
				}
			}
			System.out.println("Last get: " + charSet);
			// 至此，我们可以将原byte数组按照正常编码专成字符串输出（如果找到了编码的话）
			System.out.println("Encoding string is: "
					+ new String(bytes, charSet));
		}

		httpclient.getConnectionManager().shutdown();
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

	protected final static Log log = LogFactory.getLog(HttpClientTest.class);

	public static void clientMultiThreadedExecution()
			throws ClientProtocolException, IOException, HttpException {
		// Create and initialize HTTP parameters
		HttpParams params = new BasicHttpParams();

		// Increase max total connection to 200
		ConnManagerParams.setMaxTotalConnections(params, 200);
		// Increase default max connection per route to 20
		ConnPerRouteBean connPerRoute = new ConnPerRouteBean(20);
		// Increase max connections for localhost:80 to 50
		HttpHost remoteHost = new HttpHost("http://search.51job.com", 80);
		connPerRoute.setMaxForRoute(new HttpRoute(remoteHost), 50);
		ConnManagerParams.setMaxConnectionsPerRoute(params, connPerRoute);
		HttpProtocolParams.setVersion(params, HttpVersion.HTTP_1_1);
		// Proxy
		//HttpHost proxy = new HttpHost("10.164.144.41", 3128);
		//params.setParameter(ConnRoutePNames.DEFAULT_PROXY, proxy);

		// Create and initialize scheme registry
		SchemeRegistry schemeRegistry = new SchemeRegistry();
		schemeRegistry.register(new Scheme("http", PlainSocketFactory
				.getSocketFactory(), 80));
		schemeRegistry.register(new Scheme("https", SSLSocketFactory
				.getSocketFactory(), 443));

		// Create an HttpClient with the ThreadSafeClientConnManager.
		// This connection manager must be used if more than one thread will
		// be using the HttpClient.
		ClientConnectionManager cm = new ThreadSafeClientConnManager(params,
				schemeRegistry);

		HttpClient httpClient = new DefaultHttpClient(cm, params);

		Map<String, String> map = new HashMap<String, String>();

		String[] urisToGet1 = {
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=1000,4800,4900&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=5000,5100,1800&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=5200,1500,2000&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=1600,1700,5300&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=1900,5600,5700&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=5800&industrytype=01&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400,0100,2500&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2600,2700,2800&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2900,0200,3000&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=3100,3200,0400&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=3300,2200,3400&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=3500,3600,0500&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=5400,3700,3800&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=3900,4000,0800&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=4100,5500,1300&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=4200,4300,0300&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=4400,4500,0900&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2100,4600,4700&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=0600,0700,2300&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=1400,1100,1200&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=1000,4800,4900&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=5000,5100,1800&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=5200,1500,2000&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=1600,1700,5300&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=1900,5600,5700&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=5800&industrytype=37&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2400,0100,2500&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2600,2700,2800&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2900,0200,3000&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=3100,3200,0400&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=3300,2200,3400&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=3500,3600,0500&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=5400,3700,3800&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=3900,4000,0800&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=4100,5500,1300&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=4200,4300,0300&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=4400,4500,0900&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=2100,4600,4700&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=0600,0700,2300&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14",
				"http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=1400,1100,1200&industrytype=38&issuedate=9&providesalary=99&keywordtype=2&curr_page=1&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0,0&radius=-1&ord_field=0&list_type=1&fromType=14"

		};
		GetThread[] threads = new GetThread[urisToGet1.length];
		for (int i = 0; i < threads.length; i++) {
			HttpGet httpget = new HttpGet(urisToGet1[i]);
			threads[i] = new GetThread(httpClient, httpget, i + 3, map);
		}

		// start the threads
		for (int j = 0; j < threads.length; j++) {
			threads[j].start();
		}
	}

	/**
	 * A thread that performs a GET.
	 */
	static class GetThread extends Thread {

		private final HttpClient httpClient;
		private final HttpContext context;
		private final HttpGet httpget;
		private final int id;
		private Map<String, String> map;

		public GetThread(HttpClient httpClient, HttpGet httpget, int id,
				Map<String, String> map) {
			this.httpClient = httpClient;
			this.context = new BasicHttpContext();
			this.httpget = httpget;
			this.id = id;
			this.map = map;
		}

		/**
		 * Executes the GetMethod and prints some status information.
		 */
		@Override
		public void run() {

			log.info(id + " - start!");
			long start = System.currentTimeMillis();
			try {

				// execute the method
				HttpResponse response = httpClient.execute(httpget, context);

				log.info(id + " - times:"
						+ (System.currentTimeMillis() - start));
				map.put(String.valueOf(id), String.valueOf(id));
				// get the response body as an array of bytes
				HttpEntity entity = response.getEntity();
				if (entity != null) {
					byte[] bytes = EntityUtils.toByteArray(entity);
					// log.info(id + " - " + bytes.length + " bytes read");
				}
				log.info(id + " - times1:"
						+ (System.currentTimeMillis() - start));

			} catch (Exception e) {
				httpget.abort();
				log.info(id + " - error: " + e);
			}
		}

	}

	public static void main(String[] args) {
		try {
			clientMultiThreadedExecution();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
