package com.yesibc.job51.web.search;

import java.util.HashMap;
import java.util.Map;

import javax.swing.JFrame;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.web.support.JobSupport;
import com.yesibc.job51.web.support.LogHandler;
import com.yesibc.job51.web.support.WebRenderEntity;

public class WebrendererContext {

	private static Log log = LogFactory.getLog(WebrendererContext.class);

	static long l = 0;
	public static Map<Integer, WebRenderEntity> WEBRENDER_ENTITIES = initContext();

	static {
		l = System.currentTimeMillis();
		BrowserFactory.setLicenseData(ClawerConstants.WEBRENDERER_ID,
				ClawerConstants.WEBRENDERER_SN);
		// BrowserFactory.setLicenseData("30dtrial",
		// "CSK00OUP9KH5JJJK02C02S78");
		LogHandler.per("WebrendererContext Load license OK! Time is "
				+ (System.currentTimeMillis() - l));

	}

	public static Map<Integer, WebRenderEntity> initContext() {
		Map<Integer, WebRenderEntity> webRenderEntity = new HashMap<Integer, WebRenderEntity>();
		for (int i = 0; i < ClawerConstants.THREADS_NUMBER; i++) {
			IBrowserCanvas browser = BrowserFactory.spawnMozilla();
			browser.enableImageLoading(false);
			JobSupport.addListener(browser);
			WebRenderEntity wre=new WebRenderEntity();
			wre.setBrowser(browser);
			if (ClawerConstants.TEST_WEB) {
				JFrame frame = JobSupport.showFrame(browser, "Loading");
				wre.setFrame(frame);
			}	
			webRenderEntity.put(i, wre);
		}
		log.info("Initial " + ClawerConstants.THREADS_NUMBER + " BROWSERS OK!");
		return webRenderEntity;
	}

	public static void releaseContext(Integer i){
		WebRenderEntity wre = WEBRENDER_ENTITIES.get(i);
		JFrame frame = wre.getFrame();
		frame.dispose();		
		wre = null;
	}
	
	public static void releaseContextAll(){
		for(Map.Entry<Integer, WebRenderEntity> entry : WEBRENDER_ENTITIES.entrySet()){
			entry.getValue().getFrame().dispose();
		}
		
		WEBRENDER_ENTITIES.clear();
	}
	
	public static void main(String[] args) {
		for (int i = 0; i < 20; i++) {
			System.out.println(WEBRENDER_ENTITIES.get(i).toString());
		}
		System.out.println("dddddddddddd" + WEBRENDER_ENTITIES.get(2).toString());
	}
}