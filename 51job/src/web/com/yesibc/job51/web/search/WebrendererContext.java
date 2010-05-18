package com.yesibc.job51.web.search;

import java.util.HashMap;
import java.util.Map;

import javax.swing.JFrame;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.support.ErrorHandler;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LogHandler;
import com.yesibc.job51.web.support.WebRenderEntity;

public class WebrendererContext {

	private static Log log = LogFactory.getLog(WebrendererContext.class);

	static long l = 0;
	public static Map<Integer, WebRenderEntity> WEBRENDER_ENTITIES = initContext();

	static {
		l = System.currentTimeMillis();
		BrowserFactory.setLicenseData(ClawerConstants.WEBRENDERER_ID, ClawerConstants.WEBRENDERER_SN);
		// BrowserFactory.setLicenseData("30dtrial",
		// "CSK00OUP9KH5JJJK02C02S78");
		LogHandler.per("WebrendererContext Load license OK! Time is " + (System.currentTimeMillis() - l));

	}

	public synchronized static void reFreshContext(int index, ProcessContext processContext) {

		WebRenderEntity wre = WEBRENDER_ENTITIES.get(index);
		try {
			BrowserFactory.destroyBrowser(wre.getBrowser());
			if (ClawerConstants.SHOW_FRAME) {
				wre.getFrame().dispose();
			}
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail("Destory Browser Error!", e);
		}
		wre.setBrowser(null);

		IBrowserCanvas browser = BrowserFactory.spawnMozilla();
		browser.enableImageLoading(false);
		JobSupport.addListener(browser);
		wre.setLoaded(true);
		wre.setBrowser(browser);
		if (ClawerConstants.SHOW_FRAME) {
			JFrame frame = JobSupport.showFrame(browser, "Loading");
			wre.setFrame(frame);
		}
		WEBRENDER_ENTITIES.put(index, wre);

		reconnectByRefreshConext(processContext, index);
		log.info("reFreshContext: " + index + " BROWSERS OK!");
	}

	public synchronized static void reFreshContext1(int index, String title) {

		WebRenderEntity wre = WEBRENDER_ENTITIES.get(index);
		try {
			BrowserFactory.destroyBrowser(wre.getBrowser());
			if (ClawerConstants.SHOW_FRAME) {
				wre.getFrame().dispose();
			}
		} catch (Exception e) {
			ErrorHandler.errorLogAndMail(title + " Destory Browser Error!", e);
		}
		wre.setBrowser(null);

		IBrowserCanvas browser = BrowserFactory.spawnMozilla();
		browser.enableImageLoading(false);
		JobSupport.addListener(browser);
		wre.setLoaded(true);
		wre.setBrowser(browser);
		if (ClawerConstants.SHOW_FRAME) {
			JFrame frame = JobSupport.showFrame(browser, title);
			wre.setFrame(frame);
		}
		WEBRENDER_ENTITIES.put(index, wre);

		log.info("reFreshContext: " + index + " BROWSERS OK!");
	}

	private static void reconnectByRefreshConext(ProcessContext processContext, int index) {
		long temp = (System.currentTimeMillis() - l);
		if (temp < ClawerConstants.RECONNECT_INTERVAL) {
			ErrorHandler.errorLogAndMail("reFreshContext reconnecting:[" + index + "]" + processContext.getLogTitle()
					+ "@interval:" + temp / (1000 * 60));
			return;
		}

	}

	public static Map<Integer, WebRenderEntity> initContext() {
		Map<Integer, WebRenderEntity> webRenderEntity = new HashMap<Integer, WebRenderEntity>();
		for (int i = 0; i < ClawerConstants.THREADS_NUMBER + 1; i++) {
			IBrowserCanvas browser = BrowserFactory.spawnMozilla();
			browser.enableImageLoading(false);
			JobSupport.addListener(browser);
			WebRenderEntity wre = new WebRenderEntity();
			wre.setLoaded(true);
			wre.setBrowser(browser);
			if (ClawerConstants.SHOW_FRAME) {
				JFrame frame = JobSupport.showFrame(browser, "Loading");
				wre.setFrame(frame);
			}
			webRenderEntity.put(i, wre);

		}
		log.info("Initial " + ClawerConstants.THREADS_NUMBER + " BROWSERS OK!");
		return webRenderEntity;
	}

	public static void releaseContext(Integer i) {
		WebRenderEntity wre = WEBRENDER_ENTITIES.get(i);
		JFrame frame = wre.getFrame();
		frame.dispose();
		wre = null;
	}

	public static void releaseContextAll() {
		for (Map.Entry<Integer, WebRenderEntity> entry : WEBRENDER_ENTITIES.entrySet()) {
			entry.getValue().getFrame().dispose();
		}

		WEBRENDER_ENTITIES.clear();
	}

	public static void main(String[] args) {
	}
}
