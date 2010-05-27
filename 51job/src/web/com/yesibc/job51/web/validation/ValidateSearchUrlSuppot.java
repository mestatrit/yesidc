package com.yesibc.job51.web.validation;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.yesibc.job51.company.ErrorHandler;
import com.yesibc.job51.company.JobSupport;
import com.yesibc.job51.company.LogHandler;
import com.yesibc.job51.web.support.FunctionDIV;
import com.yesibc.job51.web.support.IndustryDIV;

public class ValidateSearchUrlSuppot {

	private static Log log = LogFactory.getLog(ValidateSearchUrlSuppot.class);

	public static void doFunClick(IElement iElement, IBrowserCanvas browser, int times) {
		log.debug("doFunClick~!" + iElement.getOuterHTML() + "!");
		iElement.click();
		IElement funDIV = FunctionDIV.getFunDIV(browser);

		// cancel selected
		List<IElement> ies = FunctionDIV.getSelectedFunTR(funDIV);
		for (IElement ie : ies) {
			ie.click();
		}

		int index = 0;
		IElement tdLocation = null;
		for (int i = 0; i < FunctionDIV.SELECT_PER_TIMES; i++) {
			index = times * FunctionDIV.SELECT_PER_TIMES + i;
			if (index >= FunctionDIV.FUN_ARRAY.length) {
				break;
			}
			tdLocation = FunctionDIV.getFunTDElement(funDIV.getChildElements(), FunctionDIV.FUN_ARRAY[index][1]);
			tdLocation.click();

			// afchx ||
			String[] temp = { FunctionDIV.FUN_ARRAY[index][0], FunctionDIV.FUN_ARRAY[index][1], "input" };
			IElement checkBox = FunctionDIV.getFunCHKElement(temp, browser);
			log.debug("Fun CK=" + checkBox.getOuterHTML());
			checkBox.click();
		}

		// click confirm
		IElement cofirm = FunctionDIV.getFunCFMElement(browser);
		log.debug("Fun confirm=" + cofirm.getOuterHTML());
		cofirm.click();
	}

	public static void doIndClick(IElement iElement,IBrowserCanvas browser, int times) {
		log.info("doIndClick~!" + iElement.getOuterHTML() + "!");
		iElement.click();
		IElement indDIV = IndustryDIV.getIndDIV(browser);
		LogHandler.debug("Ind DIV=" + indDIV.getOuterHTML());

		// cancel selected
		List<IElement> ies = IndustryDIV.getSelectedIndTR(indDIV);
		for (IElement ie : ies) {
			JobSupport.waiting();
			ie.click();
		}

		int index = 0;
		IElement checkBox = null;
		for (int i = 0; i < IndustryDIV.SELECT_PER_TIMES; i++) {
			index = times * IndustryDIV.SELECT_PER_TIMES + i;
			if (index >= IndustryDIV.IND_ARRAY.length) {
				break;
			}

			String[] temp = { IndustryDIV.IND_ARRAY[index][0], IndustryDIV.IND_ARRAY[index][1], "input" };
			checkBox = IndustryDIV.getIndCHKElement(temp,browser);
			LogHandler.debug("IND CK=" + checkBox.getOuterHTML());
			checkBox.click();
		}

		// click confirm
		IElement cofirm = IndustryDIV.getFunCFMElement(browser);
		ErrorHandler.errorIElement(cofirm, "Ind confirm~!" + "SPAN,onclick,confirmLayer");
		LogHandler.debug("Ind confirm=" + cofirm.getOuterHTML());
		cofirm.click();
	}

}
