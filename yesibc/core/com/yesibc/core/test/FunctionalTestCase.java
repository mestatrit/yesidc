/**
 * $Id: FunctionalTestCase.java,v 1.2 2007/11/06 03:10:41 abel Exp $
 */
package com.yesibc.core.test;

import com.thoughtworks.selenium.DefaultSelenium;
import com.thoughtworks.selenium.Selenium;
import junit.framework.TestCase;
import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.openqa.selenium.server.SeleniumServer;

/**
 * Selenium class to integration test
 * 
 * @author Abel.Ye o_olle_e@hotmail.com create time: Oct 10, 2007 9:29:24 AM
 */
public abstract class FunctionalTestCase extends TestCase {

	protected static final String DEFAULT_EXPLORER = "*iexplore";

	protected static final String DEFAULT_BASEURL = "http://localhost:8080";

	protected static final String DEFAULT_TIME = "30000";

	private static PropertiesConfiguration config = new PropertiesConfiguration();

	static {
		try {
			config.load("selenium.properties");
		} catch (ConfigurationException e) {
		}
	}

	protected Selenium user;

	@Override
	public void setUp() {
		user = new DefaultSelenium("localhost", SeleniumServer.DEFAULT_PORT,
				getExplorer(), getBaseURL());
		user.start();
	}

	@Override
	public void tearDown() {
		user.stop();
	}

	/**
	 * return explorer.
	 */
	public static String getExplorer() {
		return config.getString("selenium.explorer", DEFAULT_EXPLORER);
	}

	/**
	 * return base URL. 
	 */
	public static String getBaseURL() {
		return config.getString("selenium.baseurl", DEFAULT_BASEURL);
	}
}
