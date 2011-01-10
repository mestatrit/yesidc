package cn.com.vnvtrip.fection.sms.service;

import java.io.InputStream;
import java.util.Map;

import cn.com.vnvtrip.fection.sms.utils.HTTPClient;

public class SMSService {
	private static SMSService smsService = null;

	private SMSService() {

	}

	public static SMSService getSmsService() {
		if (smsService == null) {
			smsService = new SMSService();
		}
		return smsService;
	}

	/**
	 * 
	 * @param httpurl
	 * @return
	 */
	public String execute(String httpurl) {
		return HTTPClient.execute(httpurl);
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
	public InputStream executeHttp(String httpurl, String xmlInfo,
			Map<String, String> map) {
		return HTTPClient.executeHttp(httpurl, xmlInfo, map);
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
	public InputStream executeHttp(String httpurl,
			Map<String, String> paramMaps, Map<String, String> map) {
		return HTTPClient.executeHttp(httpurl, paramMaps, map);
	}
}
