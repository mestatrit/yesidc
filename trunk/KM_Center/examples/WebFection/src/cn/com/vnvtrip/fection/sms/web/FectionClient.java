package cn.com.vnvtrip.fection.sms.web;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import cn.com.vnvtrip.fection.sms.service.SMSService;
import cn.com.vnvtrip.fection.sms.utils.Constants;
import cn.com.vnvtrip.fection.sms.utils.Env;
import cn.com.vnvtrip.fection.sms.utils.HTTPClient;

/**
 * 
 * @author longgangbai
 * 
 */
public class FectionClient {
	private static Properties p = null;

	public FectionClient() {
		if (p == null) {
			p = Env.getEnv().getProperties();
		}
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
		paramMaps.put("username", p
				.getProperty(Constants.FECTION_CLIENT_USERNAME));
		paramMaps.put("password", p
				.getProperty(Constants.FECTION_CLIENT_PASSWORD));
		return HTTPClient.executeHttp(httpurl, paramMaps, map);
	}

	public static void main(String[] args) {
		String httpurl = "http://sms.api.bz/fetion.php";
		Map map = new HashMap();
		map.put("username", "15801987485");
		map.put("password", "123456a");
		map.put("sendto", "15801987485");
		map.put("message", "this is a wxch sms!");
		SMSService.getSmsService().executeHttp(httpurl, map, null);
	}
}
