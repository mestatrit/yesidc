package com.yesibc.job51.common;

import javax.swing.JFrame;

import com.webrenderer.swing.IBrowserCanvas;

public class WebRenderEntity {
	
	private boolean loaded = true;
	public boolean isLoaded() {
		return loaded;
	}
	public void setLoaded(boolean loaded) {
		this.loaded = loaded;
	}
	private IBrowserCanvas browser;
	private JFrame frame;
	/**
	 * @return the browser
	 */
	public IBrowserCanvas getBrowser() {
		return browser;
	}
	/**
	 * @param browser the browser to set
	 */
	public void setBrowser(IBrowserCanvas browser) {
		this.browser = browser;
	}
	/**
	 * @return the frame
	 */
	public JFrame getFrame() {
		return frame;
	}
	/**
	 * @param frame the frame to set
	 */
	public void setFrame(JFrame frame) {
		this.frame = frame;
	}
}
