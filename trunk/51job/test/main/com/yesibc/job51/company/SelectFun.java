package com.yesibc.job51.company;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.dom.IElementCollection;
import com.yesibc.core.exception.NestedRuntimeException;

public class SelectFun {

	private static Log log = LogFactory.getLog(SelectFun.class);

	public static void doFunClick(IElement iElement, int times) {
		log.info("doFunClick~!" + iElement.getOuterHTML() + "!");
		iElement.click();
		IElement funDIV = JobMain.getDoc().getElementById(JobMain.FUNTAG);
		if (funDIV == null) {
			ErrorHandler.error("FunDIV is null!");
			throw new NestedRuntimeException("FunDIV is null!");
		}
		LogHandler.debug("Fun DIV=" + funDIV.getOuterHTML());

		// sfchx || cancel selected
		List<IElement> ies = JobSupport.getElements(JobMain.getDoc().getAll(), "INPUT", JobMain.FUNSUB_ID_NAME,
				JobMain.FUNSUB_ID_VAL_CANCEL);
		for (IElement ie : ies) {
			JobSupport.waiting();
			ie.click();
		}

		int index = 0;
		IElement tdLocation = null;
		IElementCollection checkBoxs = null;
		IElement checkBox = null;
		for (int i = 0; i < JobMain.SELECT_TIMES; i++) {
			index = times * JobMain.SELECT_TIMES + i;
			if (index >= JobMain.FUN_ARRAY.length) {
				break;
			}
			JobSupport.elementByLoop = null;
			tdLocation = JobSupport.getElementByLoop(funDIV.getChildElements(), "TD", JobMain.FUN_ID_NAME,
					JobMain.FUN_ARRAY[index]);
			ErrorHandler.errorIElement(tdLocation, "doFunClick~!" + JobMain.FUN_ID_NAME + ","
					+ JobMain.FUN_ARRAY[index]);
			LogHandler.debug("Fun TD=" + tdLocation.getOuterHTML());
			tdLocation.click();

			// afchx ||
			checkBoxs = JobMain.getDoc().getAll().tags("INPUT");
			checkBox = JobSupport.getElement(checkBoxs, JobMain.FUNSUB_ID_NAME, JobMain.FUNSUB_ID_VAL_NULL
					+ JobMain.FUN_ARRAY[index]);
			ErrorHandler.errorIElement(checkBox, "doFunClick~!Sub " + JobMain.FUNSUB_ID_VAL_NULL + ","
					+ JobMain.FUN_ARRAY[index]);
			LogHandler.debug("Fun CK=" + checkBox.getOuterHTML());
			checkBox.click();
		}

		// click confirm
		JobSupport.elementByLoop = null;
		IElement cofirm = JobSupport.getElementByLoop(JobMain.getDoc().getAll(), "SPAN", "onclick", "confirmLayer('popupFuntype')");
		ErrorHandler.errorIElement(cofirm, "Fun confirm~!" + "SPAN,onclick,confirmLayer");
		LogHandler.debug("Fun confirm=" + cofirm.getOuterHTML());
		cofirm.click();
	}

}
