package com.yesibc.job51.web.support;

import java.util.Map.Entry;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.search.WebrendererContext;

public class WebLinkSupport {

	private static boolean finish = false;
	private static boolean going = false;
	private static long COUNTLOADED = 0;

	public static void reconnectInternet(String rid) {
		going = true;
		try {
			WebRenderEntity wre = WebrendererContext.WEBRENDER_ENTITIES.get(ClawerConstants.THREADS_NUMBER);
			IBrowserCanvas browser = wre.getBrowser();
			onDocumnetComplete(browser);
			browser.loadURL("http://192.168.1.1/Status_Router.asp");
			waitingLoading(rid + "|getCutButton!");

			LogHandler.debug(rid + browser.getDocument().getBody().getOuterHTML());

			IElement ie = getCutButton(browser);

			if (ie == null) {
				ErrorHandler.errorLogAndMail(rid + "reconnectInternet error:can not get cut button!First Step!");
				handleReconnect(rid, browser);
				return;
			}

			LogHandler.debug(rid + ie.getOuterHTML());

			// String IP = logIP(rid, browser);
			// LogHandler.info(rid + " Old IP:[" + IP + "]");

			setFinish(false);
			ie.click();

			waitingLoading(rid + "|getConnectButton!");

			handleReconnect(rid, browser);

			// IP = logIP(rid, browser);
			// LogHandler.info(rid + " New IP:[" + IP + "]");
		} finally {
			going = false;
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

		JobSupport js = new JobSupport();
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

	public static boolean isGoing() {
		return going;
	}

	public static void setGoing(boolean going) {
		WebLinkSupport.going = going;
	}

	private static void handleReconnect(String rid, IBrowserCanvas browser) {
		IElement ie = getConnectButton(browser);
		if (ie == null) {
			ErrorHandler.errorLogAndMail(rid + "reconnectInternet error:can not get connect button!Second Step!");
			return;
		}
		setFinish(false);
		ie.click();
		waitingLoading(rid + "|getCutButton!");
		ie = getCutButton(browser);
		if (ie == null) {
			ErrorHandler.errorLogAndMail(rid + "reconnectInternet error:can not get cut button!Three Step!");
		} else {
			LogHandler.info(rid + "reconnectInternet OK!");
		}
	}

	private static IElement getConnectButton(IBrowserCanvas browser) {
		return JobSupport.getElement(browser.getDocument().getAll().tags("INPUT"), "ONCLICK",
				ClawerConstants.RECONNECT_RECONN_TAG);
	}

	private static IElement getCutButton(IBrowserCanvas browser) {
		return JobSupport.getElement(browser.getDocument().getAll().tags("INPUT"), "ONCLICK",
				ClawerConstants.RECONNECT_CUT_TAG);
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
			LogHandler.info(rid + "reconnectInternet waiting loading……[" + i * 1.5 + "]s");
		}
		LogHandler.info(rid + "reconnectInternet waiting loading end![" + i * 1.5 + "]s");
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
					LogHandler.info(tag + "Check running web waiting time:" + ClawerConstants.WAITING_TIME * i);
					Thread.sleep(ClawerConstants.WAITING_TIME);

					if (i > 12) {
						entry.getValue().setLoaded(true);
						ErrorHandler.errorLogAndMail(tag + "Check running web waiting error!Time:"
								+ ClawerConstants.WAITING_TIME * i);
					}
				} catch (InterruptedException e) {
					ErrorHandler.errorLogAndMail("Error when check running web!", e);
				}
			}

		}

	}

	private static long current = System.currentTimeMillis();

	public synchronized static void doCount(String tag, int index, boolean retry) {

		if (ClawerConstants.TEST_WEB) {
			return;
		}

		// checkWebReconnecting(tag);
		COUNTLOADED++;
		boolean rec = false;
		long refreshTime = System.currentTimeMillis() - current;

		if (retry) {
			if (refreshTime >= ClawerConstants.RECONNECT_INTERVAL) {
				rec = true;
			}
		} else {
			if ((COUNTLOADED + 1) % ClawerConstants.COUNT_LOADED == 0
					&& refreshTime >= (ClawerConstants.RECONNECT_INTERVAL / 2)) {
				rec = true;
			}
		}

		if (rec) {
			current = System.currentTimeMillis();
			tag = tag + "[" + retry + "]";
			checkRunningWeb(tag, index);
			LogHandler.info(tag + "reconnect internet start!" + COUNTLOADED);
			long start = System.currentTimeMillis();
			reconnectInternet(tag);
			LogHandler.info(tag + "reconnect internet end! time is " + (System.currentTimeMillis() - start));
		}
	}

}
