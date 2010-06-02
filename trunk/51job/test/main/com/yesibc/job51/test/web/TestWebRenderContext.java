package com.yesibc.job51.test.web;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.web.search.CompanyJobContext;
import com.yesibc.job51.web.search.SearchListEngine;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.WebRenderEntity;

public class TestWebRenderContext {

	public static void main(String[] args) {
		CompanyJobContext.initSearchList(null);
		for (int thread = 0; thread < 20; thread++) {
			SearchListEngine sce = new SearchListEngine("SearchList#" + thread, CompanyJobContext.getSearchListWP()
					.get(thread), thread);
			sce.start();
		}
	}

	@SuppressWarnings("unused")
	private static void test1() {
		int size = WebrendererContext.WEBRENDER_ENTITIES.size();
		for (int i = 0; i < size; i++) {
			WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES.get(i);
			IBrowserCanvas browser = wre.getBrowser();
			browser.loadURL("http://www.google.com/");
			onDocumnetComplete(browser, wre, i);
			if (!wre.isLoaded()) {
				System.out.println(i + " loaded!");
			}
		}

		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		for (int i = 0; i < size; i++) {
			WebrendererContext.reFreshContext(i, "aaa" + i);
			WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES.get(i);
			IBrowserCanvas browser = wre.getBrowser();
			browser.loadURL("http://www.baidu.com/");
			onDocumnetComplete(browser, wre, i);
			if (!wre.isLoaded()) {
				System.out.println(i + " loaded!");
			}
		}
	}

	private final static Log log = LogFactory.getLog(TestWebRenderContext.class);

	private static void onDocumnetComplete(IBrowserCanvas browser, final WebRenderEntity wre, final int i) {
		final long start = System.currentTimeMillis();
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				log.info(i + "-[" + (System.currentTimeMillis() - start) + "].");
				wre.setLoaded(false);
			}
		});
	}
}
