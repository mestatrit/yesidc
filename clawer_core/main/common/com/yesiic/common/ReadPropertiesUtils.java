package com.yesiic.common;

import com.yesibc.core.utils.ReadProperties;

public class ReadPropertiesUtils {
	private static ReadProperties sourProperties;
	private static ReadProperties serverConfProperties;

	public static ReadProperties getCodeValConf() {
		if (sourProperties == null) {
			sourProperties = ReadProperties.getInst("codeval");
		}
		return sourProperties;
	}

	public static ReadProperties getServConf() {
		if (serverConfProperties == null) {
			serverConfProperties = ReadProperties.getInst("server");
		}
		return serverConfProperties;
	}

	public static String getValByKey(String key) {
		return getCodeValConf().getValuesByKey("codeval", key);
	}

	public static String getServerConfByKey(String key) {
		return getServConf().getValuesByKey("server", key);
	}

}
