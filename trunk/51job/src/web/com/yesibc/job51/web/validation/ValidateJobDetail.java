package com.yesibc.job51.web.validation;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.CompanyInfoSupport;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LocateCompanyInfo;
import com.yesibc.job51.web.support.LogHandler;

public class ValidateJobDetail {

	private static Log log = LogFactory.getLog(ValidateJobDetail.class);

	public final static String jobTag = "#Job Detail#";

	static long l = 0;

	private IBrowserCanvas browser;
	private boolean finish = false;
	private String url;
	private String title;
	private int index;
	private TestProcessContext processContext;

	public ValidateJobDetail(String title, String url, int index) {
		this.url = url;
		this.index = index;
		this.title = title;
		processContext = new TestProcessContext();
	}

	public void run() throws ApplicationException {
		if (url == null || "".equals(url)) {
			throw new ApplicationException("ValidateJobDetail error!");
		}

		browser = JobSupport.initLoading(processContext, title, index);
		onDocumnetComplete();

		try {
			finish = false;
			l = System.currentTimeMillis();
			log.info(processContext.getLogTitle() + "Start Loading " + url);
			browser.loadURL(url);
			boolean loadedOK = true;
			if (!waitingLoading(index, url)) {
				browser = JobSupport.reLoading(processContext, title, index);
				onDocumnetComplete();
				log.info(processContext.getLogTitle() + "ReStart Loading error1 " + url);
				browser.loadURL(url);
				if (!waitingLoading(index, url)) {
					loadedOK = false;
					ErrorHandler.errorLogAndMail(processContext.getLogTitle() + "Two times refresh and waiting error!");
				}
			}

			finish = false;
			log.info(processContext.getLogTitle() + "End Loading " + url + "!Loaded[" + loadedOK + "]Time is "
					+ (System.currentTimeMillis() - l));
			l = System.currentTimeMillis();

			parseCompany();

			parseEmailFromJobs();

			log.info(processContext.getLogTitle() + "Parsing [" + browser.getURL() + "] is OK!Time is "
					+ (System.currentTimeMillis() - l));
		} catch (Exception e) {
			throw new ApplicationException(processContext.getLogTitle() + " Parsing [" + browser.getURL()
					+ "] is error=SerchJobDetailEngine!" + e.getMessage() + "\n HTML contents:"
					+ browser.getDocument().getBody().getOuterHTML(), e);
		} finally {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(true);
		}
	}

	private void parseCompany() throws ApplicationException {
		String[] txts = { ClawerConstants.COMPANY_URL_NAME };
		List<IElement> ies = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"),
				"href", ClawerConstants.COMPANY_URL_TAG, txts);
		if (ies == null || ies.size() != 1) {
			throw new ApplicationException(processContext.getLogTitle() + " Company url is error found0!");
		}
		String url = ies.get(0).getAttribute("href", 0);
		if (!LocateCompanyInfo.checkComURL(url)) {
			throw new ApplicationException(processContext.getLogTitle() + " Company url is error found1!");
		}
		log.info(processContext.getLogTitle() + "Check url OK!");
		String companyId = CompanyInfoSupport.getCompanyCode(url);
		companyId = ClawerConstants.FROM_WHERE_51JOB + "_" + CompanyInfoSupport.getCompanyCode(url);
		Company company = ValidateWorkFLow.testCompanies.get(companyId);
		if (company == null) {
			throw new ApplicationException(processContext.getLogTitle() + " Get company is null!");
		}
		ParseCompanyDetailSupport.parseToCompany(company, processContext);
		log.info(processContext.getLogTitle() + " Parse Com Detail OK!\n" + company.toString());
	}

	public final static String[] mailStrs = { "mailto:" };

	public void parseEmailFromJobs() throws ApplicationException {
		List<IElement> ies = JobSupport.getElements(processContext.getBrowser().getDocument().getAll().tags("A"),
				"href", "mailto:");
		if (ies == null || ies.isEmpty()) {
			log.warn(processContext.getLogTitle() + "No mail found!");
			return;
		}

		String html = null;
		List<String> emailsList = new ArrayList<String>();
		for (IElement ie : ies) {
			html = ie.getInnerHTML();
			if (html == null || html.indexOf("51job") > 0) {
				continue;
			}

			if (!emailsList.contains(html)) {
				emailsList.add(html);
			}
		}

		if (emailsList.isEmpty()) {
			log.info(processContext.getLogTitle() + " Mail no found!");
		}

		List<String> emailsOk = new ArrayList<String>();
		for (String emails : emailsList) {
			log.info(processContext.getLogTitle() + " Mail found:" + emails);
			boolean split = false;

			for (String temp : ClawerConstants.EMAIL_SPLITS) {
				if (emails.indexOf(temp) > 0) {
					String[] emailsArray = emails.split(temp);
					for (String email : emailsArray) {
						emailsOk.add(email);
					}
					split = true;
					break;
				}
			}

			if (!split) {
				emailsOk.add(emails);
			}
		}

		log.info(processContext.getLogTitle() + " Mail size:" + emailsOk.size());
	}

	public IBrowserCanvas getBrowser() {
		return BrowserFactory.spawnMozilla();
	}

	private void onDocumnetComplete() {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				finish = true;
			}
		});
	}

	public boolean waitingLoading(int index, String url) {
		int i = 0;
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading start!");
		while (!finish) {
			i++;
			try {
				Thread.sleep(10000);
			} catch (InterruptedException e) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url + "] :", e);
			}
			if (i > 12) {
				ErrorHandler.errorLogAndMail(processContext.getLogTitle() + " URL[" + url
						+ "] waiting loading to long and exit to waiting now. Time is[" + i * 10 + "]s");
				finish = true;
				WebrendererContext.reFreshContext(index, processContext);
				return false;
			} else {
				LogHandler.debug(processContext.getLogTitle() + " URL[" + url + "] waiting loading……[" + i * 10 + "]s");
			}
		}
		LogHandler.info(processContext.getLogTitle() + " URL[" + url + "] waiting loading end![" + i * 10 + "]s");
		return true;
	}

	public boolean isFinish() {
		return finish;
	}

	public void setFinish(boolean finish) {
		this.finish = finish;
	}

	public static void main(String[] args) {
		// String[] urls = { "http://search.51job.com/job/38792100,c.html" };
		// SearchJobDetailEngine sce = new SearchJobDetailEngine("abc" + "," +
		// urls.toString(), urls, 0);
		// sce.start();

	}

	public static String getJobtag() {
		return jobTag;
	}

	public String getTitle() {
		return title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
