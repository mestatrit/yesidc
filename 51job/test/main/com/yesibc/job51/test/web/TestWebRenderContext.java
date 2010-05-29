package com.yesibc.job51.test.web;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.web.search.WebrendererContext;
import com.yesibc.job51.web.support.WebRenderEntity;

public class TestWebRenderContext {
	public static void main(String[] args) {
		int size = WebrendererContext.WEBRENDER_ENTITIES.size();
		for (int i = 0; i < size; i++) {
			WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES.get(i);
			IBrowserCanvas browser = wre.getBrowser();
			browser.loadURL("http://www.google.com/");
			onDocumnetComplete(browser, wre);
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
			onDocumnetComplete(browser, wre);
			if (!wre.isLoaded()) {
				System.out.println(i + " loaded!");
			}
		}

	}

	private static void onDocumnetComplete(IBrowserCanvas browser, final WebRenderEntity wre) {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				wre.setLoaded(false);
			}
		});
	}
}
