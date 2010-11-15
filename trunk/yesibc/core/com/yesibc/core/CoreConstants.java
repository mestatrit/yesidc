/**
 * $Id: Constants.java,v 1.8 2008/12/10 08:24:09 abel Exp $
 */

package com.yesibc.core;

/**
 * Constants
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: 2007-9-12 上午10:36:41
 */
public class CoreConstants {

	public static final String CHARSET_UTF8 = "utf-8";
	public static final String CHARSET_GBK = "GBK";

	/**
	 * spring configuration file.
	 */
	public static final String DEFAULT_CONTEXT = "classpath*:spring/*.xml";

	/**
	 * xfire configuration file.
	 */
	public static final String DEFAULT_XFIRE_CONTEXT = "classpath*:xfire/*.xml";

	/**
	 * spring configuration file for test.
	 */
	public static final String DEFAULT_TEST_CONTEXT = "classpath*:spring/test/*.xml";

	/**
	 * int:DEFAULT_PAGE_SIZE
	 */
	public static int DEFAULT_PAGE_SIZE = 10;

	/**
	 * int:DEFAULT_PAGE_START
	 */
	public static int DEFAULT_PAGE_START = 1;

	public static final String ORDER_ASC = "asc";

	public static final String ORDER_DESC = "desc";

	public static final String LOCALE_KEY = "org.apache.struts.action.LOCALE";

	public static final String MESSAGES_KEY = "org.apache.struts.action.MESSAGE";

	public static final String LANGUAGE_EN = "en";

	public static final String LANGUAGE_FR = "fr";

	public static final String LANGUAGE_ZH = "zh";

	/**
	 * jbpm part
	 */

	public static final String JBPM_CONFIGURATION_RESOURCE = "jbpm.configuration.resource";
	public static final String JBPM_CONTEXT_NAME = "jbpm.context.name";
	public static final String JBPM_AUTHENTICATION = "authentication";
	public static final String JBPM_AUTHENTICATION_DISABLED = "disabled";

}
