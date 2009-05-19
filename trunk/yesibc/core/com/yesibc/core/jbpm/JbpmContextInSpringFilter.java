package com.yesibc.core.jbpm;

import org.jbpm.JbpmConfiguration;
import org.jbpm.JbpmContext;

import com.yesibc.core.spring.SpringContext;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.Serializable;
import java.security.Principal;

public class JbpmContextInSpringFilter implements Filter, Serializable {
	private static final long serialVersionUID = 1L;
	String jbpmConfigurationResource = null;
	String jbpmContextName = null;
	boolean isAuthenticationEnabled = true;

	public void init(FilterConfig filterConfig) throws ServletException {
		// get the jbpm configuration resource
		this.jbpmConfigurationResource = filterConfig
				.getInitParameter("jbpm.configuration.resource");
		// get the jbpm context to be used from the jbpm configuration
		this.jbpmContextName = filterConfig
				.getInitParameter("jbpm.context.name");
		if (jbpmContextName == null) {
			jbpmContextName = JbpmContext.DEFAULT_JBPM_CONTEXT_NAME;
		}
		// see if authentication is turned off
		String isAuthenticationEnabledText = filterConfig
				.getInitParameter("authentication");
		if ((isAuthenticationEnabledText != null)
				&& ("disabled".equalsIgnoreCase(isAuthenticationEnabledText))) {
			isAuthenticationEnabled = false;
		}
	}

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
