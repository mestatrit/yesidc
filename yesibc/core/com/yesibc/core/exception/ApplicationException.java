/**
 * $Id: AppException.java,v 1.5 2009/01/05 09:51:07 abel Exp $
 */
package com.yesibc.core.exception;

import org.apache.commons.lang.builder.ToStringBuilder;

/**
 * Business Exception Class.
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007/10/17 10:21:37
 */
public class ApplicationException extends Exception {

	private static final long serialVersionUID = 1L;

	
	public String message = "";
	
	public String key = "";
	
	public Object object = null;

	/**
	 * @return Returns the object.
	 */
	public Object getObject() {
		return this.object;
	}

	/**
	 * @param object The object to set.
	 */
	public void setObject(Object object) {
		this.object = object;
	}

	/**
	 * @return Returns the key.
	 */
	public String getKey() {
		return this.key;
	}

	/**
	 * @param key The key to set.
	 */
	public void setKey(String key) {
		this.key = key;
	}

	/**
	 * default
	 */
	public ApplicationException() {
		super();
	}

	/**
	 * @param errorMessage
	 */
	public ApplicationException(String errorMessage) {
		super(errorMessage);
		message = errorMessage;
	}

	/**
	 * @param errorMessage
	 * @param cause
	 */
	public ApplicationException(String errorMessage, Throwable cause) {
		super(errorMessage, cause);
		message = errorMessage;
	}

	/**
	 * @param key
	 * @param errorMessage
	 * @param cause
	 */
	public ApplicationException(String key,String errorMessage,Throwable cause) {
		super(errorMessage, cause);
		message = errorMessage;
		this.key = key;
	}

	/**
	 * @param key
	 * @param object
	 * @param cause
	 */
	public ApplicationException(String key,Object object,Throwable cause) {
		super(key, cause);
		this.key = key;
		this.object = object;
	}

	/**
	 * @param object
	 */
	public ApplicationException(Object object) {
		this.object = object;
	}
	
	/**
	 * @param cause
	 */
	public ApplicationException(Throwable cause) {
		super(cause);
	}

	@Override
	public String getMessage() {
		return message;
	}

	public void setMessage(String errorMessage) {
		message = errorMessage;
	}

	/**
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return new ToStringBuilder(this).append("object", this.object).append(
				"key", this.key).append("cause", this.getCause()).append(
				"localizedMessage", this.getLocalizedMessage()).append(
				"message", this.message).append("stackTrace",
				this.getStackTrace()).toString();
	}


}
