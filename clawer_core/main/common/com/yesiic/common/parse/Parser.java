package com.yesiic.common.parse;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ProcessContext;

public interface Parser {
	public void parse(ProcessContext processContext) throws ApplicationException;
}
