package com.yesiic.common;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class HostInfo {
	public static String hostinfo = "[can not resolve host info]";

	static {
		try {
			InetAddress address = InetAddress.getLocalHost();
			String hostname = address.getHostName();
			String ipaddress = address.getHostAddress();
			hostinfo = "[" + hostname + ":" + ipaddress + "]";
		} catch (UnknownHostException e) {
			// do nothing
		}

	}
}
