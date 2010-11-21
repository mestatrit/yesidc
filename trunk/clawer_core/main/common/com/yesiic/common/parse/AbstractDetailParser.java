package com.yesiic.common.parse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.BeanPrinter;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ProcessContext;
import com.yesiic.person.model.SimPerson;

public abstract class AbstractDetailParser extends AbstractParser implements Parser {

	private static Log log = LogFactory.getLog(AbstractDetailParser.class);

	public void parse(ProcessContext processContext) throws ApplicationException {

		prepareParse(processContext);

		parsing(processContext);

		if (!ClawerConstants.TEST_DAO && processContext.getSimPersons() != null && !processContext.getSimPersons().isEmpty()) {
			save2DB(processContext);
		}

		finish.clear();

		afterParse(processContext);

	}

	protected void save2DB(ProcessContext processContext) {
		for (SimPerson simPerson : processContext.getSimPersons()) {
			try {
				webPagesDao.save(simPerson);
			} catch (Exception e) {
				log.error(processContext.getLogTitle() + "====BeanPrinter S====");
				BeanPrinter.printAttributes(simPerson, "|");
				log.error(processContext.getLogTitle() + "====BeanPrinter E====");
				log.error(e.getMessage());
			}
		}
	}

	protected abstract void parsing(ProcessContext processContext) throws ApplicationException;

}
