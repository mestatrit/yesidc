package com.yesibc.job51.test.web;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.web.search.CompanyJobContext;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.WebRenderEntity;

public class TestWebRenderContext {
	public static void main(String[] args) {
		CompanyJobContext.initSearchList(null);
		for (int i = 0; i < 20; i++) {
			WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES.get(i);
			wre.setLoaded(true);

			IBrowserCanvas browser = wre.getBrowser();
			browser
					.loadURL(CompanyJobContext.getSearchListWP().get(i)
							.getUrl());
			onDocumnetComplete(browser, wre, i);
		}

		int ok = 0;
		while (true) {

			for (int i = 0; i < 20; i++) {
				WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES
						.get(i);
				if (wre.getMap().containsKey("1")) {
					ok++;
					System.out.println(i + " loaded!");
				}
			}
			if (ok == 20) {
				log.info("All loaded.");
				break;
			}
		}

		for (int i = 0; i < 20; i++) {
			WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES.get(i);
			IBrowserCanvas browser = wre.getBrowser();
			browser.loadURL(CompanyJobContext.getSearchListWP().get(i + 20)
					.getUrl());
			onDocumnetComplete(browser, wre, i + 20);
		}
	}

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

	private final static Log log = LogFactory
			.getLog(TestWebRenderContext.class);

	private static void onDocumnetComplete(IBrowserCanvas browser,
			final WebRenderEntity wre, final int i) {
		final long start = System.currentTimeMillis();
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				log
						.info(i + "-[" + (System.currentTimeMillis() - start)
								+ "].");
				wre.setMap("1", "1");
			}
		});
	}
}
