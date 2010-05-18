package com.yesibc.job51.web.search;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.IndustryDIV;
import com.yesibc.job51.web.support.LocateMainElements;
import com.yesibc.job51.web.support.LogHandler;

public class SelectInd {

	private static Log log = LogFactory.getLog(SelectInd.class);

	/**
	 * 
	 * 1.Get industry button.
	 * 2.Get industry DIV.
	 * 3.Cancel selected industry.
	 * 4.Get selecting check-box.
	 * 5.Get confirm button and close pop-windows.
	 * 
	 * @param processContext
	 * @param times
	 * @throws ApplicationException 
	 */
	public static void doIndClick(ProcessContext processContext, int times) throws ApplicationException {
		log.info("SelectInd times=" + times);

		long l = System.currentTimeMillis();
		IElement indIE = LocateMainElements.locateIndBtn(processContext
				.getBrowser());//1
		log.info(processContext.getLogTitle() + "Locate IndBtn OK!Time is "
				+ (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();

		indIE.click();
		IElement indDIV = IndustryDIV.getIndDIV(processContext.getBrowser());//2
		LogHandler.debug("Ind DIV=" + indDIV.getOuterHTML());

		//3.cancel selected
		List<IElement> ies = IndustryDIV.getSelectedIndTR(indDIV);
		for (IElement ie : ies) {
			ie.click();
		}

		int index = 0;
		IElement checkBox = null;
		for (int i = 0; i < IndustryDIV.SELECT_PER_TIMES; i++) {
			index = times * IndustryDIV.SELECT_PER_TIMES + i;
			if (index >= IndustryDIV.IND_ARRAY.length) {
				break;
			}

			//4
			String[] temp = { IndustryDIV.IND_ARRAY[index][0],
					IndustryDIV.IND_ARRAY[index][1], "input" };
			checkBox = IndustryDIV.getIndCHKElement(temp,processContext.getBrowser());
			LogHandler.debug("IND CK=" + checkBox.getOuterHTML());
			checkBox.click();
		}

		//5.click confirm
		IElement cofirm = IndustryDIV.getFunCFMElement(processContext.getBrowser());
		ErrorHandler.errorIElement(cofirm, "Ind confirm~!"
				+ "SPAN,onclick,confirmLayer");
		LogHandler.debug("Ind confirm=" + cofirm.getOuterHTML());
		cofirm.click();
	}

}
