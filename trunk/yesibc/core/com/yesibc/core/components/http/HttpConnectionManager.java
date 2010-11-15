package com.yesibc.core.components.http;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import javax.net.ssl.SSLHandshakeException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpVersion;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

import com.yesibc.core.CoreConstants;

public class HttpConnectionManager {
	public ClientConnectionManager cm = null;
	public HttpParams params = null;
	public IdleConnectionEvictor connEvictor = null;
	public DefaultHttpClient httpClient = null;;
	public int maxTotalConnections = 50;
	public int timeout = 60000;
	public static final int EXECUTION_COUNT = 3;
	public static int idleTime = 60000;
	public String charset = CoreConstants.CHARSET_UTF8;
	public String userAgent = "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)";
	public HttpVersion httpVersion = HttpVersion.HTTP_1_1;
	public boolean useExpectContinue = false;
	private static Log log = LogFactory.getLog(HttpConnectionManager.class);

	// 异常自动恢复处理, 使用HttpRequestRetryHandler接口实现请求的异常恢复
	private static HttpRequestRetryHandler requestRetryHandler = new HttpRequestRetryHandler() {
		// 自定义的恢复策略
		public boolean retryRequest(IOException exception, int executionCount, HttpContext context) {
			// 设置恢复策略，在发生异常时候将自动重试3次
			if (executionCount >= EXECUTION_COUNT) {
				// Do not retry if over max retry count
				return false;
			}
			if (exception instanceof NoHttpResponseException) {
				// Retry if the server dropped connection on us
				return true;
			}
			if (exception instanceof SSLHandshakeException) {
				// Do not retry on SSL handshake exception
				return false;
			}
			HttpRequest request = (HttpRequest) context.getAttribute(ExecutionContext.HTTP_REQUEST);
			boolean idempotent = (request instanceof HttpEntityEnclosingRequest);
			if (!idempotent) {
				// Retry if the request is considered idempotent
				return true;
			}
			return false;
		}
	};

	private void initConnectionManager() {
		SchemeRegistry schemeRegistry = new SchemeRegistry();
		schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
		params = new BasicHttpParams();
		HttpProtocolParams.setVersion(params, httpVersion);
		HttpProtocolParams.setContentCharset(params, charset);
		HttpProtocolParams.setUserAgent(params, userAgent);
		HttpProtocolParams.setUseExpectContinue(params, useExpectContinue);
		ConnManagerParams.setMaxTotalConnections(params, maxTotalConnections);
		ConnManagerParams.setTimeout(params, timeout);

		/**
		 * <pre>
		 * ConnPerRouteBean connPerRoute = new ConnPerRouteBean(20);
		 * // Increase max connections for localhost:80 to 50
		 * HttpHost remoteHost = new HttpHost(&quot;http://shanghai.baixing.com&quot;, 80);
		 * connPerRoute.setMaxForRoute(new HttpRoute(remoteHost), 50);
		 * ConnManagerParams.setMaxConnectionsPerRoute(params, connPerRoute);
		 * </pre>
		 */
		
		cm = new ThreadSafeClientConnManager(params, schemeRegistry);
		httpClient = new DefaultHttpClient(cm, params);
		httpClient.setHttpRequestRetryHandler(requestRetryHandler);
		connEvictor = new IdleConnectionEvictor(cm);
		connEvictor.start();
	}

	public DefaultHttpClient getHttpClient() {
		if (httpClient == null) {
			log.info("HttpClient is null. So initConnectionManager.maxTotalConnections=" + maxTotalConnections);
			initConnectionManager();
		}
		return httpClient;
	}

	public DefaultHttpClient getNewHttpClient() {
		if (cm == null || params == null) {
			log.info("Params/Cm is null. So initConnectionManager.maxTotalConnections=" + maxTotalConnections);
			initConnectionManager();
		}
		return new DefaultHttpClient(cm, params);
	}

	public HttpParams getParams() {
		if (params == null) {
			log.info("Params is null. So initConnectionManager.maxTotalConnections=" + maxTotalConnections);
			initConnectionManager();
		}
		return params;
	}

	public void shutdown() throws InterruptedException {
		// Sleep 10 sec and let the connection evictor do its job
		Thread.sleep(20000);
		// Shut down the evictor thread
		connEvictor.shutdown();
		connEvictor.join();
		if (cm != null) {
			cm.shutdown();
		}
	}

	public void clean() {
		if (cm != null) {
			cm.closeExpiredConnections();
			cm.closeIdleConnections(idleTime, TimeUnit.MILLISECONDS);
		}
	}

	public static class IdleConnectionEvictor extends Thread {
		private final ClientConnectionManager cm;
		private volatile boolean shutdown;

		public IdleConnectionEvictor(ClientConnectionManager cm) {
			super();
			this.cm = cm;
		}

		@Override
		public void run() {
			try {
				while (!shutdown) {
					synchronized (this) {
						wait(10000);
						cm.closeExpiredConnections();
						cm.closeIdleConnections(idleTime, TimeUnit.MILLISECONDS);
					}
				}
			} catch (InterruptedException ex) {
				ex.printStackTrace();
			}
		}

		public void shutdown() {
			shutdown = true;
			synchronized (this) {
				notifyAll();
			}
		}

	}

	public int getMaxTotalConnections() {
		return maxTotalConnections;
	}

	public void setMaxTotalConnections(int maxTotalConnections) {
		this.maxTotalConnections = maxTotalConnections;
	}

	public int getTimeout() {
		return timeout;
	}

	public void setTimeout(int timeout) {
		this.timeout = timeout;
	}

	public void setParams(HttpParams params) {
		this.params = params;
	}

	public static int getIdleTime() {
		return idleTime;
	}

	public static void setIdleTime(int idleTime) {
		HttpConnectionManager.idleTime = idleTime;
	}

	public String getCharset() {
		return charset;
	}

	public void setCharset(String charset) {
		this.charset = charset;
	}

	public String getUserAgent() {
		return userAgent;
	}

	public void setUserAgent(String userAgent) {
		this.userAgent = userAgent;
	}

	public static HttpRequestRetryHandler getRequestRetryHandler() {
		return requestRetryHandler;
	}

	public static void setRequestRetryHandler(HttpRequestRetryHandler requestRetryHandler) {
		HttpConnectionManager.requestRetryHandler = requestRetryHandler;
	}

	public HttpVersion getHttpVersion() {
		return httpVersion;
	}

	public void setHttpVersion(HttpVersion httpVersion) {
		this.httpVersion = httpVersion;
	}

	public boolean isUseExpectContinue() {
		return useExpectContinue;
	}

	public void setUseExpectContinue(boolean useExpectContinue) {
		this.useExpectContinue = useExpectContinue;
	}
}
