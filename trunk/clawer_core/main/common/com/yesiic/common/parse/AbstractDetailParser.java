package com.yesiic.common.parse;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.BeanPrinter;
import com.yesibc.core.utils.CollectionUtils;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ProcessContext;
import com.yesiic.person.model.SimPerson;
import com.yesiic.person.model.SimPersonContactInfo;

public abstract class AbstractDetailParser extends AbstractParser implements Parser {

	private static Log log = LogFactory.getLog(AbstractDetailParser.class);

	public void parse(ProcessContext processContext) throws ApplicationException {

		prepareParse(processContext);

		if (filter(processContext)) {
			return;
		}

		parsing(processContext);

		if (!ClawerConstants.TEST_DAO && processContext.getSimPersons() != null
				&& !processContext.getSimPersons().isEmpty()) {
			if (processContext.getSimPersons().size() > 1) {
				log.info("getSimPersons size:" + processContext.getSimPersons().size());
			}
			save2DB(processContext);
		}

		finish.clear();

		afterParse(processContext);

	}

	protected boolean filter(ProcessContext processContext) throws ApplicationException {
		String content = getContentIncludeFilter(processContext);
		processContext.setFetchedContent(content);
		if (getFilter(processContext)) {
			log.info(processContext.getLogTitle() + "-" + processContext.getFilterMsg());
			return true;
		}
		return false;
	}

	protected abstract String getContentIncludeFilter(ProcessContext processContext) throws ApplicationException;

	protected abstract boolean getFilter(ProcessContext processContext);

	protected void save2DB(ProcessContext processContext) {
		Date now = new Date();
		for (SimPerson simPerson : processContext.getSimPersons()) {
			try {
				simPerson.setWebId(processContext.getWp().getId());
				simPerson.setCreateDate(now);
				simPerson.setUpdateDate(now);
				if (!CollectionUtils.isEmpty(simPerson.getSimPersonContactInfos())) {
					for (SimPersonContactInfo sci : simPerson.getSimPersonContactInfos()) {
						sci.setUpdateDate(now);
					}
				}
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
