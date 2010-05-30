package com.yesibc.job51.web.validation;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.components.webrenderer.WebrendererSupport;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.web.support.CompanyInfoSupport;

public class ValidateFirstPages {

	private static Log log = LogFactory.getLog(ValidateFirstPages.class);

	private String title = "test first page";

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		List<String> testEmails = new ArrayList<String>();
		String str = "1";
		testEmails.add(str);
		System.out.println(testEmails.size());
		System.out.println(testEmails.contains("1"));
		testEmails.add(str);
		System.out.println(testEmails.size());

		String url = "http://search.51job.com/job/42628684,c.html";
		int position = url.indexOf(ClawerConstants.JOB_URL_POSTFIX);
		String jobCode = url.substring(ClawerConstants.JOB_URL_PREFIX.length(), position);
		System.out.println(jobCode);
	}

	public void firstPagesValidation(IBrowserCanvas browser) throws ApplicationException {
		TestProcessContext processContext = new TestProcessContext();
		processContext.setBrowser(browser);
		processContext.setLogTitle(title + browser.getURL());
		putCompanyLinks2Context(processContext);
		putJObsURL2Context(processContext);
	}

	private void putJObsURL2Context(TestProcessContext processContext) throws ApplicationException {
		List<IElement> elements = WebrendererSupport.getElements(processContext.getBrowser().getDocument().getAll(), "A",
				"href", ClawerConstants.JOB_URL_PREFIX);
		if (elements == null || elements.isEmpty()) {
			throw new ApplicationException("FirstPagesValidation elements error!");
		}

		String name = "";
		String jobCode = "";
		String url = "";
		int size = 0;
		int position = 0;

		for (IElement ie : elements) {
			//LocateCompanyInfo.validateCompanyEltByJobElt(ie);
			
			url = ClawerUtils.removeSpace(ie.getAttribute("href", 0));
			if (!url.endsWith(ClawerConstants.JOB_URL_POSTFIX)) {
				throw new ApplicationException("FirstPagesValidation  endsWith JOB_URL_POSTFIX error!");
			}
			name = StringUtils.parseOutHTML(ClawerUtils.removeSpace(ie.getInnerHTML()));
			if (name.equals("")) {
				continue;
			}

			position = url.indexOf(ClawerConstants.JOB_URL_POSTFIX);
			jobCode = url.substring(ClawerConstants.JOB_URL_PREFIX.length(), position);
			ValidateWorkFLow.testJobsURL.add(url);

			// Save 2 DB.

			size++;
			log.info(processContext.getLogTitle() + "Put [" + jobCode + "," + name + "] url=[" + url + "] to job map!");

		}
	}



	public static void putCompanyLinks2Context(TestProcessContext processContext) throws ApplicationException {
		List<IElement> elements = WebrendererSupport.getElements(processContext.getBrowser().getDocument().getAll(), "A",
				"href", ClawerConstants.COMPANY_URL_TAG);
		String name = "";
		String companyId = "";
		String url = "";
		int size = 0;

		if (elements == null || elements.isEmpty()) {
			throw new ApplicationException("FirstPagesValidation putCompanyLinks2Context error!");
		}

		for (IElement ie : elements) {
			url = ClawerUtils.removeSpace(ie.getAttribute("href", 0));
			if (url.equals("")) {
				continue;
			}
			name = StringUtils.parseOutHTML(ClawerUtils.removeSpace(ie.getInnerHTML()));
			if (name.equals("")) {
				continue;
			}
			companyId = ClawerConstants.FROM_WHERE_51JOB + "_" + CompanyInfoSupport.getCompanyCode(url);
			Company com = new Company();
			com.setCompanyName(name);
			com.setUrl(url);
			com.setCompanyCode(companyId);
			com.setLoadOK(Company.LOAD_KO);
			ValidateWorkFLow.testCompanies.put(companyId, com);

			// save 2 DB.

			size++;
			log.info(processContext.getLogTitle() + "Put [" + companyId + "," + name + "] url=[" + url
					+ "] to company map!");

		}

	}
}
