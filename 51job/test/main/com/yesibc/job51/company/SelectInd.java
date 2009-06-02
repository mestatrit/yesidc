package com.yesibc.job51.company;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;

public class SelectInd {

	private static Log log = LogFactory.getLog(SelectFun.class);

	public static void doIndClick(IElement iElement, int times) {
		log.info("doIndClick~!" + iElement.getOuterHTML() + "!");
		iElement.click();
		IElement indDIV = JobMain.getDoc().getElementById(JobMain.INDTAG);
		LogHandler.debug("Ind DIV=" + indDIV.getOuterHTML());

		// sichx || cancel selected
		List<IElement> ies = JobSupport.getElements(JobMain.getDoc().getAll(), "INPUT", JobMain.IND_ID_NAME,
				JobMain.IND_ID_VAL_CANCEL);
		for (IElement ie : ies) {
			JobSupport.waiting();
			ie.click();
		}

		int index = 0;
		IElement checkBox = null;
		for (int i = 0; i < JobMain.SELECT_TIMES; i++) {
			index = times * JobMain.SELECT_TIMES + i;
			if (index >= JobMain.FUN_ARRAY.length) {
				break;
			}

			checkBox = JobSupport.getElement(JobMain.getDoc().getAll(), JobMain.IND_ID_NAME, JobMain.IND_ID_VAL_NULL
					+ JobMain.IND_ARRAY[index]);
			ErrorHandler.errorIElement(checkBox, "doIndClick~!" + JobMain.IND_ID_NAME + "," + JobMain.IND_ID_VAL_NULL
					+ JobMain.IND_ARRAY[index]);
			LogHandler.debug("IND CK=" + checkBox.getOuterHTML());
			checkBox.click();
		}

		// click confirm
		JobSupport.elementByLoop = null;
		IElement cofirm = JobSupport.getElementByLoop(indDIV.getChildElements(), "SPAN", "onclick", "confirmLayer('popupIndustry')");
		ErrorHandler.errorIElement(cofirm, "Ind confirm~!" + "SPAN,onclick,confirmLayer");
		LogHandler.debug("Ind confirm=" + cofirm.getOuterHTML());
		cofirm.click();
	}

}
