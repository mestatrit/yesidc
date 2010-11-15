package com.yesiic.common.parse;

import java.util.Map;

import com.yesibc.core.components.http.Httpclient4Util;
import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ProcessContext;

public class HttpClientParseTool implements ParseTool {

	public void prepareParse(ProcessContext processContext, Map<String, String> finish) throws ApplicationException {
		processContext.setHtml(Httpclient4Util.get(processContext.getWp().getUrl()));
	}

}
