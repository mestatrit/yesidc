package com.yesiic.common.parse;

import java.util.Map;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ProcessContext;

public interface ParseTool {

	void prepareParse(ProcessContext processContext, Map<String, String> finish) throws ApplicationException;
}
