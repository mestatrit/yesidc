package com.yesiic.common;

import java.util.Date;
import java.util.List;
import java.util.Map.Entry;
import java.util.concurrent.ThreadPoolExecutor;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.components.webrenderer.WebrendererSupport;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.StringUtils;
import com.yesiic.common.parse.ExecuteParser;
import com.yesiic.common.parse.ExecutorSupport;

public class InternetConnection {

	private static Log log = LogFactory.getLog(InternetConnection.class);
	private static boolean finish = false;
	private static long COUNTLOADED = 0;
	private static long WAITING_CONNECTION = 10000;
	private static Date reconnDate = null;
	private static boolean CONN_TAG = true;
	private static long waitingByInterval = ClawerConstants.WAITING_BY_INTERVAL;
	private static int threadsTimes4reconn = 20;
	private static long reconnectInterval = 120000;

	public static int reConn(int threadNumber, int current, String tag, List<ExecuteParser> eps,
			ThreadPoolExecutor threadPool) throws InterruptedException {
		// 如果已经访问了线程数*某一倍数，则进行重新连接。
		if (current % (threadsTimes4reconn * threadNumber) == 0) {
			try {
				if (refreshContextAndReconnInternet("REC By " + tag + "!", eps, threadPool, true)) {
					return 1;
				} else {
					return 0;
				}
			} catch (Exception e) {
				log.error("REC By " + tag + "!ERROR!", e);
			}
		}
		return 0;
	}

	public static boolean checkWaitingConn(String title) {
		int i = 0;
		try {
			while (true) {
				if (getConnTag()) {
					return true;
				}
				i++;
				Thread.sleep(waitingByInterval);
				if (i % 5 == 0) {
					log.info(title + "!checkWaitingConn!==[" + i * 2 + "]");
				}
			}
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail(title + "!checkWaitingConn!", e);
			return false;
		}

	}

	private synchronized static boolean getConnTag() {
		return CONN_TAG;
	}

	public synchronized static void setConnTag(boolean connTag) {
		CONN_TAG = connTag;
	}

	private static void reconnectInternet(String rid) throws ApplicationException {
		finish = false;
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
		InternetConnection.finish = finish;
	}

	public static void main(String[] args) {
		try {
			reconnectInternet("test");
		} catch (ApplicationException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unused")
	private void checkWebRendererRunning(String tag, int index) {
		for (Entry<Integer, WebRenderEntity> entry : WebrendererContext.WEBRENDER_ENTITIES.entrySet()) {
			int i = 0;

			if (entry.getKey() == ClawerConstants.THREADS_NUMBER || entry.getKey() == index) {
				LogHandler.info(tag + " Don't need to be checked.Index:" + entry.getKey());
				continue;
			}

			while (!entry.getValue().isLoaded()) {
				try {
					i++;
					Thread.sleep(threadsTimes4reconn);

					if (i > ClawerConstants.WAITING_TIMES) {
						entry.getValue().setLoaded(true);
						WebrendererContext.reFreshContext(entry.getKey(), tag + "-" + i);
						ErrorHandler.errorLogAndMail(tag + "Check running web waiting error when checkRunning!Time:"
								+ threadsTimes4reconn * i);
						break;
					}
				} catch (InterruptedException e) {
					ErrorHandler.errorLogAndMail("Error when check running web!", e);
				}
			}

		}

	}

	public synchronized static boolean refreshContextAndReconnInternet(String title, List<ExecuteParser> eps,
			ThreadPoolExecutor threadPool, boolean checkIntervalReconn) throws ApplicationException,
			InterruptedException {

		CONN_TAG = false;
		reconnDate = new Date();
		if (checkIntervalReconn) {
			if ((System.currentTimeMillis() - reconnDate.getTime()) < reconnectInterval) {
				log.warn(title + " refreshContextAndReconnInternet! reconn times is to close!");
				return false;
			}
		}

		ExecutorSupport.waitingThreadEnding(title, eps, threadPool);

		title = title + "[" + (++COUNTLOADED) + "]";
		LogHandler.info(title + " start!");
		int sizeOfWRE = WebrendererContext.WEBRENDER_ENTITIES.size();
		for (int i = 0; i < sizeOfWRE; i++) {
			WebrendererContext.reFreshContext(i, title + "-" + i);
		}
		reconnectInternet(title);
		log.info(title + " End!");
		CONN_TAG = true;
		return true;
	}

	@SuppressWarnings("static-access")
	public void setWaitingByInterval(long waitingByInterval) {
		this.waitingByInterval = waitingByInterval;
	}

	@SuppressWarnings("static-access")
	public void setThreadsTimes4reconn(int threadsTimes4reconn) {
		this.threadsTimes4reconn = threadsTimes4reconn;
	}

	@SuppressWarnings("static-access")
	public void setReconnectInterval(int reconnectInterval) {
		this.reconnectInterval = reconnectInterval;
	}

	@SuppressWarnings("static-access")
	public void setReconnectInterval(long reconnectInterval) {
		this.reconnectInterval = reconnectInterval;
	}

}
