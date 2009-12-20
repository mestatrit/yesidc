package com.yesibc.job51.web.support;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.WebrendererContext;

public class WebLinkSupport {

	protected static boolean finish = false;

	public static void reconnectInternet(String rid) {
		WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES.get(1);
		IBrowserCanvas browser = wre.getBrowser();
		onDocumnetComplete(browser);
		browser.loadURL("http://192.168.1.1/Status_Router.asp");
		waitingLoading(rid + "|getCutButton");
		
		LogHandler.info(rid + browser.getDocument().getBody().getOuterHTML());
		
		IElement ie = getCutButton(browser);
		
		LogHandler.info(rid + ie.getOuterHTML());
		
		if (ie == null) {
			ErrorHandler.errorLogAndMail(rid
					+ "reconnectInternet error:can not get cut button!");
			return;
		}
		setFinish(false);
		ie.click();
		waitingLoading(rid + "|getConnectButton");
		ie = getConnectButton(browser);
		if (ie == null) {
			ErrorHandler.errorLogAndMail(rid
					+ "reconnectInternet error:can not get connect button!");
			return;
		}
		setFinish(false);
		ie.click();
		ie = getCutButton(browser);
		waitingLoading(rid + "|getCutButton");
		if (ie == null) {
			ErrorHandler.errorLogAndMail(rid
					+ "reconnectInternet error:can not get cut button!");
		} else {
			LogHandler.info(rid + "reconnectInternet OK!");
		}
	}

	private static IElement getConnectButton(IBrowserCanvas browser) {
		return JobSupport.getElement(browser.getDocument().getAll().tags(
				"button"), "VALUE", ClawerConstants.RECONNECT_RECONN);
	}

	private static IElement getCutButton(IBrowserCanvas browser) {
		return JobSupport.getElement(browser.getDocument().getAll().tags(
				"button"), "VALUE", ClawerConstants.RECONNECT_CUT);
	}

	public static void waitingLoading(String rid) {
		int i = 0;
		LogHandler.info(rid + "reconnectInternet waiting loading start!");
		while (!finish) {
			i++;
			try {
				Thread.sleep(1500);
			} catch (InterruptedException e) {
				ErrorHandler.error(rid + "reconnectInternet:", e);
			}
			LogHandler.info(rid + "reconnectInternet waiting loading……[" + i
					* 1.5 + "]s");
		}
		LogHandler.info(rid + "reconnectInternet waiting loading end![" + i
				* 1.5 + "]s");
	}

	private static void onDocumnetComplete(IBrowserCanvas browser) {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				finish = true;
			}
		});
	}

	/**
	 * @return the finish
	 */
	public static synchronized boolean isFinish() {
		return finish;
	}

	/**
	 * @param finish
	 *            the finish to set
	 */
	public static synchronized void setFinish(boolean finish) {
		WebLinkSupport.finish = finish;
	}
	
	public static void main(String[] args){
		reconnectInternet("test");
	}
}
