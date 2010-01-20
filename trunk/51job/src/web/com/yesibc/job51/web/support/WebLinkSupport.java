package com.yesibc.job51.web.support;

import java.util.Map.Entry;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.WebrendererContext;

public class WebLinkSupport {

	private static boolean finish = false;
	private static boolean going = false;

	public static void reconnectInternet(String rid) {
		going = true;
		try {
			WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES
					.get(ClawerConstants.THREADS_NUMBER);
			IBrowserCanvas browser = wre.getBrowser();
			onDocumnetComplete(browser);
			browser.loadURL("http://192.168.1.1/Status_Router.asp");
			waitingLoading(rid + "|getCutButton!");

			LogHandler.debug(rid
					+ browser.getDocument().getBody().getOuterHTML());

			IElement ie = getCutButton(browser);

			if (ie == null) {
				ErrorHandler
						.errorLogAndMail(rid
								+ "reconnectInternet error:can not get cut button!First Step!");
				handleReconnect(rid, browser);
				return;
			}

			LogHandler.debug(rid + ie.getOuterHTML());

			setFinish(false);
			ie.click();

			waitingLoading(rid + "|getConnectButton!");

			handleReconnect(rid, browser);
		} finally {
			going = false;
		}
	}

	public static boolean isGoing() {
		return going;
	}

	public static void setGoing(boolean going) {
		WebLinkSupport.going = going;
	}

	private static void handleReconnect(String rid, IBrowserCanvas browser) {
		IElement ie = getConnectButton(browser);
		if (ie == null) {
			ErrorHandler
					.errorLogAndMail(rid
							+ "reconnectInternet error:can not get connect button!Second Step!");
			return;
		}
		setFinish(false);
		ie.click();
		waitingLoading(rid + "|getCutButton!");
		ie = getCutButton(browser);
		if (ie == null) {
			ErrorHandler
					.errorLogAndMail(rid
							+ "reconnectInternet error:can not get cut button!Three Step!");
		} else {
			LogHandler.info(rid + "reconnectInternet OK!");
		}
	}

	private static IElement getConnectButton(IBrowserCanvas browser) {
		return JobSupport.getElement(browser.getDocument().getAll().tags(
				"INPUT"), "ONCLICK", ClawerConstants.RECONNECT_RECONN_TAG);
	}

	private static IElement getCutButton(IBrowserCanvas browser) {
		return JobSupport.getElement(browser.getDocument().getAll().tags(
				"INPUT"), "ONCLICK", ClawerConstants.RECONNECT_CUT_TAG);
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
	public static boolean isFinish() {
		return finish;
	}

	/**
	 * @param finish
	 *            the finish to set
	 */
	public static void setFinish(boolean finish) {
		WebLinkSupport.finish = finish;
	}

	public static void main(String[] args) {
		reconnectInternet("test");
	}

	public static void checkRunningWeb(String tag) {
		int i = 0;
		for (Entry<Integer, WebRenderEntity> entry : WebrendererContext.WEBRENDER_ENTITIES
				.entrySet()) {

			if (entry.getKey() == ClawerConstants.THREADS_NUMBER) {
				continue;
			}

			while (!entry.getValue().isLoaded()) {
				try {
					i++;
					LogHandler.info(tag + "Check running web waiting time:"
							+ ClawerConstants.WAITING_TIME * i);
					Thread.sleep(ClawerConstants.WAITING_TIME);
				} catch (InterruptedException e) {
					ErrorHandler.errorLogAndMail(
							"Error when check running web!", e);
				}
			}

		}

	}
}
