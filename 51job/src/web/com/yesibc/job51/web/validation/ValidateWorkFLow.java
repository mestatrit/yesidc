package com.yesibc.job51.web.validation;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.webrenderer.swing.IBrowserCanvas;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.Company;

public class ValidateWorkFLow {

	public final static String path = getCurFilePath();
	public static List<String> testJobsURL = new ArrayList<String>();
	public static List<String> testEmails = new ArrayList<String>();
	public static Map<String, Company> testCompanies = new HashMap<String, Company>();

	public void init() {
		ClawerConstants.TEST_DAO = true;
		ClawerConstants.TEST_WEB = true;
		ClawerConstants.TEST_WEB_NUM = 2;
	}

	private static String getCurFilePath() {
		String path = StringUtils.getRealPath(ValidateWorkFLow.class, "web/validation", "web/validation");
		return path;
	}

	/**
	 * @param args
	 * @throws IOException
	 */
	public static void main(String[] args) {
		try {
			validateIndustryTypeWithRemoteFile();
			validateFunTypeWithRemoteFile();
			IBrowserCanvas browser = validateSearchURLs();
			validateFirstSearchLinkAndPaging(browser);
			validateJobDetail();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static IBrowserCanvas validateSearchURLs() throws ApplicationException {
		return ValidateSearchUrl.validateSearchUrl();
	}

	private static void validateJobDetail() throws ApplicationException {
		ValidateJobDetail vj = new ValidateJobDetail("validateJobDetail " + testJobsURL.get(0), testJobsURL.get(0), 0);
		vj.run();
		vj = new ValidateJobDetail("validateJobDetail " + testJobsURL.get(testJobsURL.size() - 1), testJobsURL
				.get(testJobsURL.size() - 1), 0);
		vj.run();
	}

	private static void validateFirstSearchLinkAndPaging(IBrowserCanvas browser) throws ApplicationException {
		ValidateFirstPages fpv = new ValidateFirstPages();
		fpv.firstPagesValidation(browser);
	}

	private static void validateFunTypeWithRemoteFile() throws Exception {
		String fileName = path + "fun.js";
		String url = "http://js.51jobcdn.com/in/js/2009/funtype_array_c.js?20100204";
		if (!ValidateTypes.validateWithNewVersion(fileName, url)) {
			throw new ApplicationException("validateFunTypeWithRemoteFile");
		}
	}

	private static void validateIndustryTypeWithRemoteFile() throws Exception {
		String fileName = path + "ind.js";
		String url = "http://js.51jobcdn.com/in/js/2009/indtype_array_c.js?20100204";
		if (!ValidateTypes.validateWithNewVersion(fileName, url)) {
			throw new ApplicationException("validateIndustryTypeWithRemoteFile");
		}
	}

}
