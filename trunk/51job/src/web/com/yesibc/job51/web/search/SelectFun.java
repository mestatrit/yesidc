package com.yesibc.job51.web.search;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.job51.web.support.FunctionDIV;
import com.yesibc.job51.web.support.LocateMainElements;
import com.yesibc.job51.web.support.LogHandler;

public class SelectFun {

	private static Log log = LogFactory.getLog(SelectFun.class);

	/**
	 * 
	 * 1.Get function button.
	 * 2.Get function DIV.
	 * 3.Cancel selected function.
	 * 4.Get selecting TD.
	 * 5.Get selecting check-box.
	 * 6.Get confirm button and close pop-windows.
	 * 
	 * @param processContext
	 * @param times
	 */
	public static void doFunClick(ProcessContext processContext, int times) {
		log.info("SelectInd times=" + times);
		long l = System.currentTimeMillis();
		IElement funIE = LocateMainElements.locateFunBtn(processContext
				.getBrowser());//1
		log.info(processContext.getLogTitle() + "Locate FunBtn OK!Time is "
				+ (System.currentTimeMillis() - l));
		l = System.currentTimeMillis();
		LogHandler.debug("doFunClick~!" + funIE.getOuterHTML() + "!");
		
		funIE.click();
		
		//2
		IElement funDIV = FunctionDIV.getFunDIV(processContext.getBrowser());

		//3cancel selected
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
			//4
			tdLocation = FunctionDIV.getFunTDElement(funDIV.getChildElements(),
					FunctionDIV.FUN_ARRAY[index][1]);
			tdLocation.click();

			//5
			String[] temp = { FunctionDIV.FUN_ARRAY[index][0],
					FunctionDIV.FUN_ARRAY[index][1], "input" };
			IElement checkBox = FunctionDIV.getFunCHKElement(temp,processContext.getBrowser());
			LogHandler.debug("Fun CK=" + checkBox.getOuterHTML());
			checkBox.click();
		}

		//6
		IElement cofirm = FunctionDIV.getFunCFMElement(processContext.getBrowser());
		LogHandler.debug("Fun confirm=" + cofirm.getOuterHTML());
		cofirm.click();
	}
}
