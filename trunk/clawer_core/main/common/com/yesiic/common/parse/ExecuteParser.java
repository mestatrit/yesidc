package com.yesiic.common.parse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesiic.common.ErrorHandler;
import com.yesiic.common.ProcessContext;

public class ExecuteParser implements Runnable {
	Parser parser;
	ProcessContext processContext;
	boolean ok = false;
	long start = 0;
	boolean error = false;
	private static Log log = LogFactory.getLog(ExecuteParser.class);

	public ExecuteParser(Parser parser, ProcessContext processContext) {
		this.parser = parser;
		this.processContext = processContext;
		start = System.currentTimeMillis();
		log.info(processContext.getLogTitle() + "===Start===" + processContext.getWp().getUrl());
	}

	public void run() {
		try {
			parser.parse(processContext);
		} catch (Exception e) {
			error = true;
			ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "#Exception#", e);
		} finally {
			ok = true;
			log.info(processContext.getLogTitle() + "===End===Time=" + (System.currentTimeMillis() - start));
		}
	}

	public boolean isOk() {
		return ok;
	}

	public long getStart() {
		return start;
	}

	public boolean isError() {
		return error;
	}

	public ProcessContext getProcessContext() {
		return processContext;
	}

}
