package com.yesitc.baixing.web.parse;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.parse.AbstractParser;
import com.yesiic.common.parse.Parser;

public class ParseType extends AbstractParser implements Parser {

	public void parse(ProcessContext processContext) throws ApplicationException {
		prepareParse(processContext);
		
		
		
		afterParse(processContext);
	}

}
