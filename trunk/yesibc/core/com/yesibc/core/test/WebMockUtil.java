package com.yesibc.core.test;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.mock.web.MockServletConfig;
import org.springframework.mock.web.MockServletContext;

public class WebMockUtil {
	/**
	 * @return MockServletContext
	 */
	public static ServletContext getServletContext() {
		return new MockServletContext();
	}

	/**
	 * 
	 * @return MockServletConfig
	 */
	public static ServletConfig getServletConfig() {
		return new MockServletConfig(getServletContext());
	}

	/**
	 * @return MockHttpServletRequest
	 */
	public static HttpServletRequest getHttpServletRequest() {
		MockHttpServletRequest mockRequest = new MockHttpServletRequest(
				getServletContext(), "POST", "");
		mockRequest.setSession(getHttpSession());
		return mockRequest;
	}

	/**
	 * @return MockHttpServletResponse
	 */
	public static HttpServletResponse getHttpServletResponse() {
		return new MockHttpServletResponse();
	}

	/**
	 * @return MockHttpSession
	 */
	public static HttpSession getHttpSession() {
		return new MockHttpSession(getServletContext());
	}

	private WebMockUtil() {
		// Do nothing
	}

}
