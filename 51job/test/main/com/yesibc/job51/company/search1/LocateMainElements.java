package com.yesibc.job51.company.search1;

import java.util.List;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.NestedRuntimeException;
import com.yesibc.job51.company.ErrorHandler;
import com.yesibc.job51.company.JobMain;
import com.yesibc.job51.company.JobSupport;
import com.yesibc.job51.company.LogHandler;

public class LocateMainElements {

	private static String[][] fun_tags = { { "onClick", "openLayer('popupFuntype')" }, { "name", "btnFuntype" } };
	private static String curFunKey = fun_tags[1][0];
	private static String curFunVal = fun_tags[1][1];

	private static String[][] ind_tags = { { "onClick", "openLayer('popupIndustry')" }, { "name", "btnIndustrytype" } };
	private static String curIndKey = ind_tags[1][0];
	private static String curIndVal = ind_tags[1][1];

	public static IElement locateFunBtn1() {
		IElement funIE = JobSupport.getElement(JobMain.getDoc().getAll().tags("INPUT"), curFunKey, curFunVal);
		if (funIE == null) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate function button!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate function button!");
		}
		return funIE;
	}

	public static IElement locateIndBtn1() {
		IElement indIE = JobSupport.getElement(JobMain.getDoc().getAll().tags("INPUT"), curIndKey, curIndVal);
		if (indIE == null) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate industry button!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate industry button!");
		}
		return indIE;
	}

	public static IElement locateFunBtn2() {
		IElement funIE = JobSupport.getElement(JobMain.getDoc().getAll().tags("INPUT"), curFunKey, curFunVal);
		if (funIE == null) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate function button!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate function button!");
		}
		return funIE;
	}

	public static IElement locateIndBtn2() {
		IElement indIE = JobSupport.getElement(JobMain.getDoc().getAll().tags("INPUT"), curIndKey, curIndVal);
		if (indIE == null) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate industry button!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate industry button!");
		}
		return indIE;
	}
	
	public static IElement locateMainSrchBtn() {
		List<IElement> ies = JobSupport.getElements(JobMain.getDoc().getAll().tags("INPUT"), "src",
				"http://images.51job.com/im/2009/search/c/jsearch.gif");
		if (ies == null || ies.size() != 1) {
			ErrorHandler.error(ErrorHandler.ERROR_PREFIX + "Can't locate main search button!");
			throw new NestedRuntimeException(ErrorHandler.ERROR_PREFIX + "Can't locate  main search button!");
		}
		return ies.get(0);
	}

	public static IElement locatePaging() {
		List<IElement> elements = JobSupport.getElements(JobMain.getDoc().getAll(), "A", "onclick", "zzSearch.jumpPage(this.href);",
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
