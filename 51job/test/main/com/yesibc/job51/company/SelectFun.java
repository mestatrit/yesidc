package com.yesibc.job51.company;

import java.util.List;

import com.webrenderer.swing.dom.IElement;
import com.yesibc.job51.company.search1.FunctionDIV;

public class SelectFun {


	public static void doFunClick(IElement iElement, int times) {
		LogHandler.debug("doFunClick~!" + iElement.getOuterHTML() + "!");
		iElement.click();
		IElement funDIV = FunctionDIV.getFunDIV();

		// cancel selected
		List<IElement> ies = FunctionDIV.getSelectedFunTR(funDIV);
		for (IElement ie : ies) {
			JobSupport.waiting();
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
			String[] temp = {FunctionDIV.FUN_ARRAY[index][0],FunctionDIV.FUN_ARRAY[index][1],"input"};
			IElement checkBox = FunctionDIV.getFunCHKElement(temp);
			LogHandler.debug("Fun CK=" + checkBox.getOuterHTML());
			checkBox.click();
		}

		// click confirm
		IElement cofirm = FunctionDIV.getFunCFMElement();
		LogHandler.debug("Fun confirm=" + cofirm.getOuterHTML());
		cofirm.click();
	}
}
