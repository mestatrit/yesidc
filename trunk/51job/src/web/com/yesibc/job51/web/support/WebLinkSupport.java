package com.yesibc.job51.web.support;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.web.search.WebrendererContext;

public class WebLinkSupport {

	protected static boolean finish = false;

	public static void reconnectInternet() {
		WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES.get(1);
		IBrowserCanvas browser = wre.getBrowser();
		onDocumnetComplete(browser);
		browser.loadURL("http://192.168.1.1/Status_Router.asp");
		waitingLoading(""+System.currentTimeMillis());
		
	}

	public static void waitingLoading(String rid) {
		int i = 0;
		LogHandler.info(rid + "reconnectInternet waiting loading start!");
		while (!finish) {
			i++;
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				ErrorHandler.error(rid + "reconnectInternet:", e);
			}
			LogHandler.info(rid + "reconnectInternet waiting loading……[" + i
					* 0.5 + "]s");
		}
		LogHandler.info(rid + "reconnectInternet waiting loading end![" + i
				* 0.5 + "]s");
	}


	private static void onDocumnetComplete(IBrowserCanvas browser) {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				finish = true;
			}
		});
		browser.ad(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				finish = true;
			}
		});
	}
}
