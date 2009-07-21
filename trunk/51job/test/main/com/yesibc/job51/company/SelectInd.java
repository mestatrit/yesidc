package com.yesibc.job51.company;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.job51.company.search1.IndustryDIV;

public class SelectInd {

	private static Log log = LogFactory.getLog(SelectFun.class);

	public static void doIndClick(IElement iElement, int times) {
		log.info("doIndClick~!" + iElement.getOuterHTML() + "!");
		iElement.click();
		IElement indDIV = IndustryDIV.getIndDIV();
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
			checkBox = IndustryDIV.getIndCHKElement(temp);
			LogHandler.debug("IND CK=" + checkBox.getOuterHTML());
			checkBox.click();
		}

		// click confirm
		IElement cofirm = IndustryDIV.getFunCFMElement();
		ErrorHandler.errorIElement(cofirm, "Ind confirm~!" + "SPAN,onclick,confirmLayer");
		LogHandler.debug("Ind confirm=" + cofirm.getOuterHTML());
		cofirm.click();
	}

}
