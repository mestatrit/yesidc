package com.yesibc.job51.web.support;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.components.webrenderer.WebrendererSupport;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.web.search.ProcessContext;

public class LocateMainElements {

	private static Log log = LogFactory.getLog(LocateMainElements.class);
	private static String[][] fun_tags = { { "onClick", "openLayer('popupFuntype')" }, { "name", "btnFuntype" } };
	private static String curFunKey = fun_tags[1][0];
	private static String curFunVal = fun_tags[1][1];

	private static String[][] ind_tags = { { "onClick", "openLayer('popupIndustry')" }, { "name", "btnIndustrytype" } };
	private static String curIndKey = ind_tags[1][0];
	private static String curIndVal = ind_tags[1][1];

	private static String PAGING_TAG1 = "zzSearch.jumpPage( this.href );return false;";
	private static String PAGING_TAG2 = "http://search.51job.com/list";

	public static void main(String[] args) {
		String url = "http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&funtype=2400%2C0100%2C2500&industrytype=01%2C37%2C38&issuedate=9&providesalary=99&keywordtype=2&lang=c&stype=2&workyear=99&cotype=99&degreefrom=99&jobterm=01&fromType=1";
		ProcessContext processContext = new ProcessContext();
		IBrowserCanvas browser = BrowserSupport.initLoading(processContext, "locatePage", 0);
		browser.loadURL(url);
		try {
			locatePage(browser, ">3<");
		} catch (ApplicationException e) {
			e.printStackTrace();
		}
	}

	public static IElement locatePage(IBrowserCanvas browser, String pageNum) throws ApplicationException {
		String[] kes = { "href", "onClick" };
		String[] values = { PAGING_TAG2, PAGING_TAG1 };
		String[] txts = { pageNum };
		IElement pageIE = WebrendererSupport.getElement(browser.getDocument().getAll().tags("A"), kes, values, txts);
		if (pageIE == null) {
			log.error(ErrorHandler.ERROR_PREFIX + "Can't locate Page!\n"
					+ browser.getDocument().getBody().getOuterHTML());
			throw new ApplicationException(ErrorHandler.ERROR_PREFIX + "Can't locate Page!");
		}
		return pageIE;
	}

	public static IElement locateFunBtn(IBrowserCanvas browser) throws ApplicationException {
		IElement funIE = WebrendererSupport.getElement(browser.getDocument().getAll().tags("INPUT"), curFunKey,
				curFunVal);
		if (funIE == null) {
			log.error(ErrorHandler.ERROR_PREFIX + "Can't locate function button!");
			throw new ApplicationException(ErrorHandler.ERROR_PREFIX + "Can't locate function button!");
		}
		return funIE;
	}

	public static IElement locateIndBtn(IBrowserCanvas browser) throws ApplicationException {
		IElement indIE = WebrendererSupport.getElement(browser.getDocument().getAll().tags("INPUT"), curIndKey,
				curIndVal);
		if (indIE == null) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate industry button!");
			throw new ApplicationException(ErrorHandler.ERROR_PREFIX + "Can't locate industry button!");
		}
		return indIE;
	}

	public static IElement locateMainSrchBtn(IBrowserCanvas browser) throws ApplicationException {
		List<IElement> ies = WebrendererSupport.getElements(browser.getDocument().getAll().tags("INPUT"), "src",
				"http://img01.51jobcdn.com/im/2009/search/c/jsearch.gif");
		if (ies == null || ies.size() != 1) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate main search button!");
			throw new ApplicationException(ErrorHandler.ERROR_PREFIX + "Can't locate  main search button!");
		}
		return ies.get(0);
	}

	public static IElement locatePaging(IBrowserCanvas browser) throws ApplicationException {
		List<IElement> elements = WebrendererSupport.getElements(browser.getDocument().getAll(), "A", "onclick",
				"zzSearch.jumpPage(this.href);", "http://images.51job.com/im/2009/pageron.gif");
		if (elements == null) {
			return null;
		} else if (elements != null && elements.size() > 2) {
			LogHandler.debug(elements.get(0).getOuterHTML());
			LogHandler.debug(elements.get(1).getOuterHTML());
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate Paging!");
			throw new ApplicationException(ErrorHandler.ERROR_PREFIX + "Can't locate Paging!");
		}
		return elements.get(0);
	}

}
