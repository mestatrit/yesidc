package com.yesibc.job51.web.support;

import java.util.Map.Entry;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.components.webrenderer.WebrendererSupport;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.WebrendererContext;

public class WebLinkSupport {

	private static boolean finish = false;
	private static long COUNTLOADED = 0;
	private static long WAITING_CONNECTION = 10000;

	public synchronized static void reconnectInternet(String rid) throws ApplicationException {
		finish = false;
		rid = rid + "[" + (++COUNTLOADED) + "]";
		try {
			WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES.get(ClawerConstants.THREADS_NUMBER);
			IBrowserCanvas browser = wre.getBrowser();
			onDocumnetComplete(browser);
			browser.loadURL("http://192.168.1.1/Status_Router.asp");
			waitingLoading(rid + "|getCutButton!");

			LogHandler.debug(rid + browser.getDocument().getBody().getOuterHTML());

			IElement ie = getCutButton(browser);

			if (ie == null) {
				ErrorHandler.errorLogAndMail(rid + "reconnectInternet error:can not get cut button!First Step!\n" + rid
						+ browser.getDocument().getBody().getOuterHTML());
				handleReconnect(rid, browser);
				return;
			}

			LogHandler.debug(rid + ie.getOuterHTML());

			// String IP = logIP(rid, browser);
			// LogHandler.info(rid + " Old IP:[" + IP + "]");

			finish = false;
			ie.click();
			waitingLoading(rid + "|getConnectButton!");

			try {
				Thread.sleep(WAITING_CONNECTION);
			} catch (InterruptedException e) {
				throw new ApplicationException("ReconnectInternet error Thread.sleep!", e);
			}

			finish = false;
			handleReconnect(rid, browser);

			// IP = logIP(rid, browser);
			// LogHandler.info(rid + " New IP:[" + IP + "]");
		} finally {
			finish = false;
		}
	}

	@SuppressWarnings("unused")
	private static String logIP(String rid, IBrowserCanvas browser) {

		IElement ieTable = browser.getDocument().getElementById("AutoNumber9");
		if (ieTable == null) {
			ErrorHandler.errorLogAndMail(rid + "Can not find IP Table!"
					+ browser.getDocument().getBody().getOuterHTML());
			return "";
		}

		WebrendererSupport js = new WebrendererSupport();
		LogHandler.debug(rid + "!TR message:" + ieTable.getChildElements().item(1).getOuterHTML());
		LogHandler.debug(rid + "!TR message1:"
				+ ieTable.getChildElements().item(1).getChildElements().item(1).getOuterHTML());

		IElement ieTR = js.getElementByTxtAndLoop(ieTable.getChildElements().item(1).getChildElements().item(1)
				.getChildElements(), "TR", ClawerConstants.RECONNECT_IP_TAG);

		if (ieTR == null) {
			ErrorHandler.errorLogAndMail(rid + "Can not find IP TXT!" + browser.getDocument().getBody().getOuterHTML());
			return "";
		}

		LogHandler.debug(rid + "!TR message:" + ieTR.getOuterHTML());

		IElement ieTD = ieTR.getChildElements().item(5);

		LogHandler.debug(rid + "!TD message:" + ieTD.getOuterHTML());

		String IP = StringUtils.parseOutHTML(ieTD.getOuterHTML());

		return IP;
	}


	private static void handleReconnect(String rid, IBrowserCanvas browser) throws ApplicationException {
		IElement ie = getConnectButton(browser);
		if (ie == null) {
			ErrorHandler.errorLogAndMail(rid + "reconnectInternet error:can not get connect button!Second Step!\n"
					+ rid + browser.getDocument().getBody().getOuterHTML());
			return;
		}

		finish = false;
		ie.click();
		waitingLoading(rid + "|getCutButton!");
		finish = false;

		try {
			Thread.sleep(WAITING_CONNECTION);
		} catch (InterruptedException e) {
			throw new ApplicationException("ReconnectInternet error Thread.sleep!", e);
		}

		ie = getCutButton(browser);
		if (ie == null) {
			ErrorHandler.errorLogAndMail(rid + "reconnectInternet error:can not get cut button!Three Step!\n" + rid
					+ browser.getDocument().getBody().getOuterHTML());
		} else {
			LogHandler.info(rid + "reconnectInternet OK!");
		}
	}

	private static IElement getConnectButton(IBrowserCanvas browser) {
		return WebrendererSupport.getElement(browser.getDocument().getAll().tags("INPUT"), "ONCLICK",
				ClawerConstants.RECONNECT_RECONN_TAG);
	}

	private static IElement getCutButton(IBrowserCanvas browser) {
		return WebrendererSupport.getElement(browser.getDocument().getAll().tags("INPUT"), "ONCLICK",
				ClawerConstants.RECONNECT_CUT_TAG);
	}

	public static void waitingLoading(String rid) {
		try {
			int i = 0;
			LogHandler.info(rid + "reconnectInternet waiting loading start!");
			while (!finish) {
				i++;
				Thread.sleep(2000);
				LogHandler.debug(rid + "reconnectInternet waiting loading……[" + i * 2 + "]s");
				if (i > 20) {
					ErrorHandler.error(rid + " Error waitingLoading@!");
					break;
				}
			}
			LogHandler.info(rid + "reconnectInternet waiting loading end![" + i * 2 + "]s");
		} catch (InterruptedException e) {
			ErrorHandler.error(rid + "reconnectInternet:", e);
		}
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
		try {
			reconnectInternet("test");
		} catch (ApplicationException e) {
			e.printStackTrace();
		}
	}

	public static void checkRunningWeb(String tag, int index) {
		int i = 0;
		int j = 0;
		for (Entry<Integer, WebRenderEntity> entry : WebrendererContext.WEBRENDER_ENTITIES.entrySet()) {

			if (entry.getKey() == ClawerConstants.THREADS_NUMBER || entry.getKey() == index) {
				j++;
				LogHandler.info(tag + "Check running web waiting time:" + entry.getKey()
						+ " don't needed to be checked[" + j + "].");
				continue;
			}

			while (!entry.getValue().isLoaded()) {
				try {
					i++;
					LogHandler.info(tag + "Check running web waiting time:" + ClawerConstants.WAITING_TIME_LOADING * i);
					Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);

					if (i > 12) {
						entry.getValue().setLoaded(true);
						ErrorHandler.errorLogAndMail(tag + "Check running web waiting error!Time:"
								+ ClawerConstants.WAITING_TIME_LOADING * i);
					}
				} catch (InterruptedException e) {
					ErrorHandler.errorLogAndMail("Error when check running web!", e);
				}
			}

		}

	}

	public static void refreshContext(String title) throws ApplicationException {
		LogHandler.info(title + " start!");
		int sizeOfWRE = WebrendererContext.WEBRENDER_ENTITIES.size();
		for (int i = 0; i < sizeOfWRE; i++) {
			WebrendererContext.reFreshContext(i, title + "-" + i);
		}
		WebLinkSupport.reconnectInternet(title);
		LogHandler.info(title + " End!");
	}

}
