package com.yesibc.job51.service;

import com.yesibc.core.exception.ApplicationException;

public interface ResumeHandlerService {
	
	void handleResume(String resumeHTML) throws ApplicationException;
}
