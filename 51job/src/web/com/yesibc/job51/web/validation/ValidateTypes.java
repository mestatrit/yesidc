package com.yesibc.job51.web.validation;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.FileUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.support.JobSupport;

public class ValidateTypes {

	private static Log log = LogFactory.getLog(ValidateTypes.class);
	public final static boolean DEBUG = true;// 调试用
	private static int BUFFER_SIZE = 8096;// 缓冲区大小

	/**
	 * 将HTTP资源另存为文件
	 * 
	 * @param destUrl
	 *            String
	 * @param fileName
	 *            String
	 * @throws Exception
	 */
	public static void saveToFile1(String destUrl, String fileName) throws IOException {
		FileOutputStream fos = null;
		BufferedInputStream bis = null;
		HttpURLConnection httpUrl = null;
		URL url = null;
		byte[] buf = new byte[BUFFER_SIZE];
		int size = 0;

		// 建立链接
		url = new URL(destUrl);
		httpUrl = (HttpURLConnection) url.openConnection();
		// 连接指定的资源
		httpUrl.connect();
		// 获取网络输入流
		bis = new BufferedInputStream(httpUrl.getInputStream());
		// 建立文件
		fos = new FileOutputStream(fileName);

		if (DEBUG)
			System.out.println("正在获取链接[" + destUrl + "]的内容...\n将其保存为文件[" + fileName + "]");

		// 保存文件
		while ((size = bis.read(buf)) != -1)
			fos.write(buf, 0, size);

		// Writer out = new OutputStreamWriter(fos, "8859_1");
		// out.write(StringUtils.getStreamString(bis));
		// out.close();

		fos.close();
		bis.close();
		httpUrl.disconnect();
	}

	/**
	 * 将HTTP资源另存为文件
	 * 
	 * @param destUrl
	 *            String
	 * @param fileName
	 *            String
	 * @throws Exception
	 */
	public static void saveToFileWithEncode(String destUrl, String fileName) throws IOException {
		HttpURLConnection httpUrl = null;
		URL url = null;

		// 建立链接
		url = new URL(destUrl);
		httpUrl = (HttpURLConnection) url.openConnection();
		// 连接指定的资源
		httpUrl.connect();
		// 获取网络输入流
		String str = StringUtils.getStream2String(httpUrl.getInputStream(), "GBK");

		System.out.println(str);

		FileUtils.WriteByPrintStream(fileName, str);

		httpUrl.disconnect();
	}

	/**
	 * 将HTTP资源另存为文件
	 * 
	 * @param destUrl
	 *            String
	 * @param fileName
	 *            String
	 * @throws Exception
	 */
	private static String getStrFromRemote(String destUrl) throws IOException {
		HttpURLConnection httpUrl = null;
		URL url = null;
		// 建立链接
		url = new URL(destUrl);
		httpUrl = (HttpURLConnection) url.openConnection();
		// 连接指定的资源
		httpUrl.connect();
		// 获取网络输入流
		String str = StringUtils.getStream2String(httpUrl.getInputStream(), "GBK");
		httpUrl.disconnect();
		return str;
	}

	public static boolean validateWithNewVersion(String fileName, String url) throws IOException {
		String str = FileUtils.readTxt(fileName, null).trim();
		String newStr = getStrFromRemote(url).trim();
		return str.equals(newStr);
	}

	public static String oldStr = getOldComNature();

	public static void validateCompanyNature(IBrowserCanvas browser) throws ApplicationException {
		List<IElement> elements = JobSupport.getElements(browser.getDocument().getAll(), "SELECT", "name", "cotype");
		if (elements == null || elements.size() != 1) {
			throw new ApplicationException("ValidateCompanyNature elements error1!");
		}
		String html = elements.get(0).getOuterHTML().replace(ClawerConstants.TAG_SPACE, ClawerConstants.TAG_SPACE_TRIM)
				.replace(ClawerConstants.TAG_SPACE_HTML, ClawerConstants.TAG_SPACE_TRIM).replace("=\"selected\"", ClawerConstants.TAG_SPACE_TRIM);
		if (!oldStr.equalsIgnoreCase(html)) {
			throw new ApplicationException("ValidateCompanyNature error2!");
		}
	}

	private static String getOldComNature() {
		String path = StringUtils.getRealPath(ValidateWorkFLow.class, "web/validation", "web/validation");
		path = path + "cType.js";
		String old = FileUtils.readTxt(path, null).trim().replace(ClawerConstants.TAG_SPACE,
				ClawerConstants.TAG_SPACE_TRIM);
		log.info("old nature:" + old);
		return old;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// validateInd();
		validateFun();
	}

	private static void validateFun() {
		try {
			String fileName = "H:/YesITC/yesidc/51job/src/web/com/yesibc/job51/web/validation/fun.js";
			String url = "http://js.51jobcdn.com/in/js/2009/funtype_array_c.js?20100204";
			// getStrFromRemote(url, fileName);
			saveToFileWithEncode(url, fileName);
			System.out.println(validateWithNewVersion(fileName, url));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unused")
	private static void validateInd() {
		try {
			String fileName = "H:/YesITC/yesidc/51job/src/web/com/yesibc/job51/web/validation/ind.js";
			String url = "http://js.51jobcdn.com/in/js/2009/indtype_array_c.js?20100204";
			// getStrFromRemote(url, fileName);
			// saveToFile(url, fileName);
			System.out.println(validateWithNewVersion(fileName, url));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
