package cn.com.vnvtrip.fection.sms.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 读取fection 的配置信息
 * 
 * @author longgangbai
 * 
 */
public class Env {

	private static Logger logger = Logger.getLogger(Env.class.getName());
	private static Properties props = null;
	private static Env env = null;

	static {
		// 获取classpath路径配置悉尼性
		File file = new File(Env.class
				.getResource("/fectionService.properties").getFile());

		if (file.exists()) {
			try {
				InputStream in = new FileInputStream(file);
				props = new Properties();
				props.load(in);
			} catch (IOException e) {
				logger.log(Level.WARNING, "加载fection 的配置失败!");
			}
		} else {
			logger.log(Level.WARNING, "fection 的配置文件不存在，请检查..");
		}
	}

	/**
	 * 
	 */
	private Env() {
	}

	/**
	 * 防止获取配置信息发生异步现象
	 * 
	 */
	public static synchronized Env getEnv() {
		if (env == null) {
			env = new Env();
		}
		return env;
	}

	/**
	 * 获取配置的 Properties
	 * 
	 * @return
	 */
	public Properties getProperties() {
		return props;
	}

	public static void main(String[] args) {
		System.out.println(Env.class.getResource("/fectionService.properties")
				.getFile());
	}
}
