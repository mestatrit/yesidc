package cn.cetelem.track.log;

import java.text.MessageFormat;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Jan 6, 2009 9:17:24 AM
 */

public class CommonLogger {
	
	/**
	 * Handle to the Current Logger
	 */
	private Logger logger = null;

	/**
	 * Private constructor that is not available for public use.
	 * 
	 * @param logger
	 *            Logger to use
	 */
	private CommonLogger(Logger logger) {
		this.logger = logger;
	}

	/**
	 * <p/> All <code>SwanetLogger</code> callers are assumed to get a
	 * SwanetLogger instance by this method instead of the traditional
	 * constructor's way.
	 * </p>
	 * 
	 * @param clazz
	 *            caller class
	 * @return SwanetLogger instance
	 */
	public static CommonLogger getLogger(Class<?> clazz) {
		Logger logger = Logger.getLogger(clazz);
		return new CommonLogger(logger);
	}

	/**
	 * <p/> All <code>SwanetLogger</code> callers are assumed to get a
	 * SwanetLogger instance by this method instead of the traditional
	 * constructor's way.
	 * </p>
	 * 
	 * @param name
	 *            logger name
	 * @return SwanetLogger instance
	 */
	public static CommonLogger getLogger(String name) {
		Logger logger = Logger.getLogger(name);
		return new CommonLogger(logger);
	}

	/**
	 * Log a message object with the DEBUG level. To print a stack trace use the
	 * {@link #logDebug(Object,Throwable)} form instead.
	 * 
	 * @param message
	 *            the message object to log.
	 */
	public void logDebug(Object message) {
		log(Level.DEBUG, message);
	}

	/**
	 * Log a message object with the DEBUG level including the stack trace of
	 * the <code>Throwable t</code> passed as parameter
	 * 
	 * @param message
	 *            the message object to log.
	 * @param t
	 *            the exception to log, including its stack trace.
	 */
	public void logDebug(Object message, Throwable t) {
		log(Level.DEBUG, message, t);
	}

	/**
	 * Log a message object with the ERROR level. To print a stack trace use the
	 * {@link #logError(Object,Throwable)} form instead.
	 * 
	 * @param message
	 *            the message object to log.
	 */
	public void logError(Object message) {
		log(Level.ERROR, message);
	}

	/**
	 * Log a message object with the ERROR level including the stack trace of
	 * the <code>Throwable t</code> passed as parameter
	 * 
	 * @param message
	 *            the message object to log.
	 * @param t
	 *            the exception to log, including its stack trace.
	 */
	public void logError(Object message, Throwable t) {
		log(Level.ERROR, message, t);
	}

	/**
	 * Log a message object with the FATAL level.
	 * 
	 * @param message
	 *            the message object to log.
	 */
	public void logFatal(Object message) {
		log(Level.FATAL, message);
	}

	/**
	 * Log a message object with the FATAL level including the stack trace of
	 * the <code>Throwable t</code> passed as parameter
	 * 
	 * @param message
	 *            the message object to log.
	 * @param t
	 *            the exception to log, including its stack trace.
	 */
	public void logFatal(Object message, Throwable t) {
		log(Level.FATAL, message, t);
	}

	/**
	 * Log a message object with the WARN level.
	 * 
	 * @param message
	 *            the message object to log.
	 */
	public void logWarning(Object message) {
		log(Level.WARN, message);
	}

	/**
	 * Log a message object with the WARN level including the stack trace of the
	 * <code>Throwable t</code> passed as parameter
	 * 
	 * @param message
	 *            the message object to log.
	 * @param t
	 *            the exception to log, including its stack trace.
	 */
	public void logWarning(Object message, Throwable t) {
		log(Level.WARN, message, t);
	}

	/**
	 * Log a message object with the INFO level.
	 * 
	 * @param message
	 *            the message object to log.
	 */
	public void logInfo(Object message) {
		log(Level.INFO, message);
	}

	/**
	 * Log a message object with the INFO level including the stack trace of the
	 * <code>Throwable t</code> passed as parameter
	 * 
	 * @param message
	 *            the message object to log.
	 * @param t
	 *            the exception to log, including its stack trace.
	 */
	public void logInfo(Object message, Throwable t) {
		log(Level.INFO, message, t);
	}

	/**
	 * To judge a level is supported by the logger or not.
	 * 
	 * @param level
	 *            Priority for example:Level.ERROR.
	 * @return boolean support the level will return true, otherwise return
	 *         false.
	 */
	public boolean isEnabled(Level level) {
		return logger.isEnabledFor(level);
	}

	/**
	 * To judge if DEBUG level is enabled by the logger or not.
	 * 
	 * @return boolean support the level will return true, otherwise return
	 *         false.
	 */
	public boolean isDebug() {
		return logger.isEnabledFor(Level.DEBUG);
	}

	/**
	 * To judge if INFO level is enabled by the logger or not.
	 * 
	 * @return boolean support the level will return true, otherwise return
	 *         false.
	 */
	public boolean isInfo() {
		return logger.isEnabledFor(Level.INFO);
	}

	/**
	 * To judge if WARN level is enabled by the logger or not.
	 * 
	 * @return boolean support the level will return true, otherwise return
	 *         false.
	 */
	public boolean isWarn() {
		return logger.isEnabledFor(Level.WARN);
	}

	/**
	 * To set the logger can support what level.
	 * 
	 * @param level
	 *            Priority for example:Level.WARN.
	 */
	public void setLevel(Level level) {
		logger.setLevel(level);
	}

	/**
	 * Log the message at the specified level
	 * 
	 * @param level
	 *            Level to use for the message
	 * @param message
	 *            The message to Log
	 */
	public void log(Level level, Object message) {
		if (logger != null && logger.isEnabledFor(level)) {
			logger.log(level, message);
		}
	}

	/**
	 * Log the message and the exception at the specified level
	 * 
	 * @param level
	 *            Level to log the message at
	 * @param message
	 *            Message to log
	 * @param t
	 *            The exception to log
	 */
	public void log(Level level, Object message, Throwable t) {
		if (logger != null && logger.isEnabledFor(level)) {
			logger.log(level, message, t);
		}
	}

	/**
	 * Logs a message with an arry of parameters. The message should contain a
	 * formatting string and the objects being passed have to support toString()
	 * method
	 * 
	 * @param level
	 *            Log level
	 * @param theMessage
	 *            the message to log
	 * @param objArray
	 *            Array of parameters to log
	 */
	public void logArray(Level level, String theMessage, Object[] objArray) {
		if (logger != null && logger.isEnabledFor(level)) {
			logger.log(level, MessageFormat.format(theMessage, objArray));
		}
	}

	/**
	 * Logs a message with a single object as additional paraeter. The message
	 * should contain a formatting string and the objects being passed have to
	 * support toString() method
	 * 
	 * @param level
	 *            Log level
	 * @param theMessage
	 *            the message to log
	 * @param object1
	 *            Object to log
	 */
	public void log1(Level level, String theMessage, Object object1) {
		if (logger != null && logger.isEnabledFor(level)) {
			Object[] args = { object1 };
			logger.log(level, MessageFormat.format(theMessage, args));
		}
	}

	/**
	 * Logs a message with two objects as additional paraeter. The message
	 * should contain a formatting string and the objects being passed have to
	 * support toString() method
	 * 
	 * @param level
	 *            Log level
	 * @param theMessage
	 *            the message to log
	 * @param object1
	 *            Object to log
	 * @param object2
	 *            Object to log
	 */
	public void log2(Level level, String theMessage, Object object1,
			Object object2) {
		if (logger != null && logger.isEnabledFor(level)) {
			Object[] args = { object1, object2 };
			logger.log(level, MessageFormat.format(theMessage, args));
		}
	}

	/**
	 * Logs a message with three objects as additional paraeter. The message
	 * should contain a formatting string and the objects being passed have to
	 * support toString() method
	 * 
	 * @param level
	 *            Log level
	 * @param theMessage
	 *            the message to log
	 * @param object1
	 *            Object to log
	 * @param object2
	 *            Object to log
	 * @param object3
	 *            Object to log
	 */
	public void log3(Level level, String theMessage, Object object1,
			Object object2, Object object3) {
		if (logger != null && logger.isEnabledFor(level)) {
			Object[] args = { object1, object2, object3 };
			logger.log(level, MessageFormat.format(theMessage, args));
		}
	}

	/**
	 * Logs a message with four objects as additional paraeter. The message
	 * should contain a formatting string and the objects being passed have to
	 * support toString() method
	 * 
	 * @param level
	 *            Log level
	 * @param theMessage
	 *            the message to log
	 * @param object1
	 *            Object to log
	 * @param object2
	 *            Object to log
	 * @param object3
	 *            Object to log
	 * @param object4
	 *            Object to log
	 */
	public void log4(Level level, String theMessage, Object object1,
			Object object2, Object object3, Object object4) {
		if (logger != null && logger.isEnabledFor(level)) {
			Object[] args = { object1, object2, object3, object4 };
			logger.log(level, MessageFormat.format(theMessage, args));
		}
	}
}
