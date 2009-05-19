/**
 * $Id: JbpmContextInSpringFilter.java,v 1.2 2009/02/16 09:08:21 abel Exp $
 */
package com.yesibc.core.workflow.jbpm;

import java.io.IOException;
import java.io.Serializable;
import java.security.Principal;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.jbpm.JbpmConfiguration;
import org.jbpm.JbpmContext;

import com.yesibc.core.CoreConstants;
import com.yesibc.core.spring.SpringContext;

/**
 * @author abel.ye
 * 
 */
public class JbpmContextInSpringFilter implements Filter, Serializable {
	private static Log log = LogFactory.getLog(JbpmContextInSpringFilter.class);
	private static final long serialVersionUID = 1L;
	String jbpmConfigurationResource = null;
	String jbpmContextName = null;
	boolean isAuthenticationEnabled = true;

	/*
	 * Read parameters from configuration
	 * 
	 * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 */
	public void init(FilterConfig filterConfig) throws ServletException {
		// get the jbpm configuration resource
		this.jbpmConfigurationResource = filterConfig
				.getInitParameter(CoreConstants.JBPM_CONFIGURATION_RESOURCE);
		// get the jbpm context to be used from the jbpm configuration
		this.jbpmContextName = filterConfig
				.getInitParameter(CoreConstants.JBPM_CONTEXT_NAME);
		if (jbpmContextName == null) {
			jbpmContextName = JbpmContext.DEFAULT_JBPM_CONTEXT_NAME;
		}
		// see if authentication is turned off
		String isAuthenticationEnabledText = filterConfig
				.getInitParameter(CoreConstants.JBPM_AUTHENTICATION);
		if ((isAuthenticationEnabledText != null)
				&& (CoreConstants.JBPM_AUTHENTICATION_DISABLED
						.equalsIgnoreCase(isAuthenticationEnabledText))) {
			isAuthenticationEnabled = false;
		}
	}

	/* overwrite
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	public void doFilter(ServletRequest servletRequest,
			ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		String actorId = null;
		// see if we can get the authenticated swimlaneActorId
		if (servletRequest instanceof HttpServletRequest) {
			HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
			Principal userPrincipal = httpServletRequest.getUserPrincipal();
			if (userPrincipal != null) {
				actorId = userPrincipal.getName();
			}
		}
		JbpmContext jbpmContext = getJbpmConfiguration().createJbpmContext(
				jbpmContextName);

		jbpmContext = getJbpmConfiguration().createJbpmContext();
		
		log.info("&&&&doFilter***" + jbpmContext.getSession().toString());
		log.info("&&&&doFilter1***" + jbpmContext.getConnection().toString());
		
		try {
			if (isAuthenticationEnabled) {
				jbpmContext.setActorId(actorId);
			}
			filterChain.doFilter(servletRequest, servletResponse);
		} finally {
			jbpmContext.close();
		}
	}

	protected JbpmConfiguration getJbpmConfiguration() {
		return (JbpmConfiguration) SpringContext.getBean("jbpmConfiguration");
	}

	public void destroy() {
	}

}
