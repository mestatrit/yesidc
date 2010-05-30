package com.yesibc.job51.test.dao;

import com.webrenderer.swing.IBrowserCanvas;
import com.yesibc.job51.web.search.ProcessContext;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.BrowserSupport;

public class Test3 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ProcessContext processContext = new ProcessContext();
		String title = "title";
		int index = 0;
		IBrowserCanvas browser = BrowserSupport.initLoading(processContext, title, index);
		System.out.println("======1"+browser.equals(processContext.getBrowser()));;
		System.out.println("======111"+(browser==processContext.getBrowser()));
		WebrendererContext.reFreshContext4Waiting(index, processContext);
		System.out.println("======2"+browser.equals(processContext.getBrowser()));;
		System.out.println("======222"+(browser==processContext.getBrowser()));
		

	}

}
