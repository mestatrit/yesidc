package com.yesiic.common.parse;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ProcessContext;

public abstract class TypeLinkParser extends AbstractParser implements Parser {

	public void parse(ProcessContext processContext) throws ApplicationException {
		prepareParse(processContext);

		parsing(processContext);

		afterParse(processContext);
	}

	protected abstract void parsing(ProcessContext processContext) throws ApplicationException;

}
