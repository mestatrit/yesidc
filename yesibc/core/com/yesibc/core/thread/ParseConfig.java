/**
 * $Id: ParseConfig.java,v 1.0  2007-6-28 下午09:14:15 davidye Exp $
 */

package com.yesibc.core.thread;

/**
 * @author David.ye o_olle_e@hotmail.com create time: 2007-6-28 下午09:14:15
 */
import org.jdom.*;
import org.jdom.input.SAXBuilder;


import java.io.*;
import java.util.*;

public class ParseConfig {
	@SuppressWarnings("unchecked")
	static Hashtable Listens = null;

	static ConsumeThreadPoolPara consumeThreadPoolPara = null;

	private static String configxml = "listen.xml";

	static {
		try {
			getConsumeThreadPoolPara();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // 得到消费的线程池的参数
	}

	/**
	 * 装载文档
	 * 
	 * @return 返回根结点
	 * @throws JDOMException
	 * @throws IOException 
	 */
	public static Element loadDocument() throws JDOMException, IOException {
		SAXBuilder parser = new SAXBuilder(); // 新建立构造器
		try {
			Document document = parser.build(configxml);
			Element root = document.getRootElement();
			return root;
		} catch (JDOMException e) {
			// logger.error("listen.xml文件格式非法！");
			throw new JDOMException();
		}
	}

	public static ConsumeThreadPoolPara getConsumeThreadPoolPara() throws IOException {
		if (consumeThreadPoolPara == null) {
			try {
				Element root = loadDocument();
				Element consumeThreadPool = root.getChild("ConsumeThreadPool");
				if (consumeThreadPool != null) { // 代表有数据库配置
					consumeThreadPoolPara = new ConsumeThreadPoolPara();
					Element minPools = consumeThreadPool.getChild("minPools");
					consumeThreadPoolPara.setMinPools(Integer.parseInt(minPools
							.getTextTrim()));
					Element maxPools = consumeThreadPool.getChild("maxPools");
					consumeThreadPoolPara.setMaxPools(Integer.parseInt(maxPools
							.getTextTrim()));
					Element checkThreadPeriod = consumeThreadPool
							.getChild("checkThreadPeriod");
					consumeThreadPoolPara.setCheckThreadPeriod(Integer
							.parseInt(checkThreadPeriod.getTextTrim()));
				}
			} catch (JDOMException e) {
			}
		}
		return consumeThreadPoolPara;
	}
}
