package com.yesibc.job51.common;

import java.util.HashMap;
import java.util.Map;

import javax.swing.JFrame;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.yesibc.core.components.webrenderer.WebrendererSupport;

public class WebrendererContext {

	private static Log log = LogFactory.getLog(WebrendererContext.class);

	static long l = 0;
	public static Map<Integer, WebRenderEntity> WEBRENDER_ENTITIES = initContext();

	static {
		l = System.currentTimeMillis();
		BrowserFactory.setLicenseData(ClawerConstants.WEBRENDERER_ID, ClawerConstants.WEBRENDERER_SN);
		LogHandler.per("WebrendererContext Load license OK! Time is " + (System.currentTimeMillis() - l));

	}

	public synchronized static void reFreshContext4Waiting(int index, ProcessContext processContext) {
		reFreshContext(index, processContext.getLogTitle());
		processContext.setBrowser(WEBRENDER_ENTITIES.get(index).getBrowser());
	}

	public synchronized static void reFreshContext(int index, String title) {

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
		WebrendererSupport.addListener(browser, ClawerConstants.DIALOG_USERNAME, ClawerConstants.DIALOG_PASSWORD);
		wre.setLoaded(true);
		wre.setBrowser(browser);
		if (ClawerConstants.SHOW_FRAME) {
			JFrame frame = WebrendererSupport.showFrame(browser, "Loading");
			wre.setFrame(frame);
		}
		WEBRENDER_ENTITIES.put(index, wre);

		log.info("reFreshContext: " + index + " BROWSERS OK!");
	}

	public static Map<Integer, WebRenderEntity> initContext() {
		Map<Integer, WebRenderEntity> webRenderEntity = new HashMap<Integer, WebRenderEntity>();
		for (int i = 0; i < ClawerConstants.THREADS_NUMBER + 1; i++) {
			IBrowserCanvas browser = BrowserFactory.spawnMozilla();
			browser.enableImageLoading(false);
			WebrendererSupport.addListener(browser, ClawerConstants.DIALOG_USERNAME, ClawerConstants.DIALOG_PASSWORD);
			WebRenderEntity wre = new WebRenderEntity();
			wre.setLoaded(true);
			wre.setBrowser(browser);
			if (ClawerConstants.SHOW_FRAME) {
				JFrame frame = WebrendererSupport.showFrame(browser, "Loading");
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
