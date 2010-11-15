package com.yesiic.common.parse;

import java.util.Map;

import com.webrenderer.swing.MutableRequestHeaders;
import com.webrenderer.swing.RequestHeader;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.BrowserSupport;
import com.yesiic.common.ProcessContext;

public class WebrendererParseTool implements ParseTool {

	public void prepareParse(ProcessContext processContext, Map<String, String> finish) throws ApplicationException {
		BrowserSupport.prepareLoading(processContext);
		BrowserSupport.onDocumnetComplete(BrowserSupport.getBrowser(processContext), finish);
		// netWorkListener(processContext);
		BrowserSupport.getBrowser(processContext).loadURL(processContext.getWp().getUrl());
		BrowserSupport.waitingLoading(processContext, finish);
	}

	@SuppressWarnings("unused")
	private void netWorkListener(ProcessContext processContext) {
		BrowserSupport.getBrowser(processContext).addNetworkListener(new NetworkAdapter() {
			public void onHTTPInterceptHeaders(NetworkEvent e) {
				e.setRequestHeaders("msie");
				MutableRequestHeaders mr = e.getMutableRequestHeaders();
				RequestHeader[] rhs = mr.getAllHeaders();
				if (rhs != null) {
					for (RequestHeader rh : rhs) {
						// rh = null;
						System.out.println("getName=" + rh.getName() + ",getValue=" + rh.getValue());
					}
				}

				RequestHeader rh1 = new RequestHeader("User-Agent", "msie");
				mr.addHeader(rh1, true);
			}
		});
	}

}
