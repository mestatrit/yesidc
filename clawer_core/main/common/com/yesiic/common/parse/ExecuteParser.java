package com.yesiic.common.parse;

import com.yesiic.common.ErrorHandler;
import com.yesiic.common.ProcessContext;

public class ExecuteParser implements Runnable {
	Parser parser;
	ProcessContext processContext;

	public ExecuteParser(Parser parser, ProcessContext processContext) {
		this.parser = parser;
		this.processContext = processContext;
	}

	public void run() {
		try {
			parser.parse(processContext);
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "#Exception#", e);
		}
	}

}
