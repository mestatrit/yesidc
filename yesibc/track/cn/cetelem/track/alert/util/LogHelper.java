package cn.cetelem.track.alert.util;

import org.apache.log4j.Level;

import cn.cetelem.track.log.CommonLogger;
import cn.cetelem.track.log.LogFactory;

/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Jan 4, 2009 5:16:13 PM
 */

public class LogHelper {
	
	protected final static CommonLogger log = LogFactory.getCommonLogger(LogHelper.class);
	
	public static void log(String level, String message){
		Level l = Level.toLevel(level);
		log.log(l, message);
	}
	
}
