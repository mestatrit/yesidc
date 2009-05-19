/**
 * $Id: VMXHttpClient.java,v 1.2 2007/11/16 06:53:40 abel Exp $
 */

package com.yesibc.core.components.vmx;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @author Jasonne.liu,Abel.Ye o_olle_e@hotmail.com create time: Oct 15, 2007
 *         10:26:54 AM
 */
public class VMXHttpClient {

	private static Log log = LogFactory.getLog(VMXHttpClient.class);
	private static Log VmxLog = LogFactory.getLog("CrossCallVmxLog");

	public String callVMX(String xmlRequest, String url, String urlBak)
			throws Exception {

		log.debug("vmx address  : " + url);

		HttpURLConnection conn = (HttpURLConnection) new URL(url)
				.openConnection();

		conn.setDoOutput(true);

		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new OutputStreamWriter(conn
					.getOutputStream()));
		} catch (Exception e) {
			log.debug("vmx address " + url
					+ " is invalide,and connection another vmx address");
			log.debug("vmx bak address  : " + urlBak);
			conn = (HttpURLConnection) new URL(urlBak).openConnection();
			conn.setDoOutput(true);
			writer = new BufferedWriter(new OutputStreamWriter(conn
					.getOutputStream()));
		}

		writer.write(xmlRequest);
		writer.flush();

		VmxLog
				.info("----------------------------------------- send request of input xml to vmx server: ["
						+ xmlRequest + "]");

		BufferedReader reader = null;
		try {
			reader = new BufferedReader(new InputStreamReader(conn
					.getInputStream()));
			VmxLog
					.info("----------------------------------------- get response from vmx server success ");
		} catch (Exception e) {
			VmxLog
					.info("----------------------------------------- get response from vmx server failed ");
		}

		StringBuffer result = new StringBuffer();
		String str;
		while ((str = reader.readLine()) != null) {
			result.append(str + "\n");
		}

		writer.close();
		reader.close();
		conn.disconnect();

		VmxLog
				.info("----------------------------------------- return response of output xml from vmx server: ["
						+ result.toString() + "]");

		return result.toString();

	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}
}
