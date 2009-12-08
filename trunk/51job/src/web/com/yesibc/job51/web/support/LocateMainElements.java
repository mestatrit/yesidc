package com.yesibc.job51.web.support;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.NestedRuntimeException;


public class LocateMainElements {

	private static Log log = LogFactory.getLog(LocateMainElements.class);
	private static String[][] fun_tags = { { "onClick", "openLayer('popupFuntype')" }, { "name", "btnFuntype" } };
	private static String curFunKey = fun_tags[1][0];
	private static String curFunVal = fun_tags[1][1];

	private static String[][] ind_tags = { { "onClick", "openLayer('popupIndustry')" }, { "name", "btnIndustrytype" } };
	private static String curIndKey = ind_tags[1][0];
	private static String curIndVal = ind_tags[1][1];

	public static IElement locateFunBtn(IBrowserCanvas browser) {
		IElement funIE = JobSupport.getElement(browser.getDocument().getAll().tags("INPUT"), curFunKey, curFunVal);
		if (funIE == null) {
			log.error(ErrorHandler.ERROR_PREFIX + "Can't locate function button!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate function button!");
		}
		return funIE;
	}

	public static IElement locateIndBtn(IBrowserCanvas browser) {
		IElement indIE = JobSupport.getElement(browser.getDocument().getAll().tags("INPUT"), curIndKey, curIndVal);
		if (indIE == null) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate industry button!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate industry button!");
		}
		return indIE;
	}
	
	public static IElement locateMainSrchBtn(IBrowserCanvas browser) {
		List<IElement> ies = JobSupport.getElements(browser.getDocument().getAll().tags("INPUT"), "src",
				"http://images.51job.com/im/2009/search/c/jsearch.gif");
		if (ies == null || ies.size() != 1) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate main search button!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate  main search button!");
		}
		return ies.get(0);
	}

	public static IElement locatePaging(IBrowserCanvas browser) {
		List<IElement> elements = JobSupport.getElements(browser.getDocument().getAll(), "A", "onclick", "zzSearch.jumpPage(this.href);",
				"http://images.51job.com/im/2009/pageron.gif");
		if(elements==null){
			return null;
		}else if (elements != null && elements.size() > 2) {
			LogHandler.debug(elements.get(0).getOuterHTML());
			LogHandler.debug(elements.get(1).getOuterHTML());
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate Paging!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate Paging!");
		}
		return elements.get(0);
	}

}
