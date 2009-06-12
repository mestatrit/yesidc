package com.yesibc.job51.company;

import java.awt.BorderLayout;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JPanel;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.dom.IElementCollection;
import com.webrenderer.swing.event.PromptEvent;
import com.webrenderer.swing.event.PromptListener;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerUtils;

public class JobSupport {

	public static IElement getElement(IElementCollection ies, String attribute, String attrVal) {
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			String name = ClawerUtils.removeSpace(current.getAttribute(attribute, 0));
			// LogHandler.info("name=" + name);
			if (name.indexOf(attrVal) > -1) {
				return current;
			}
		}
		return null;
	}

	public static List<IElement> getElements(IElementCollection ies, String tag, String attribute, String attrVal) {
		if (ies == null || ies.length() < 1) {
			return null;
		}

		attrVal = StringUtils.trim2Empty(attrVal);
		List<IElement> elements = new ArrayList<IElement>();
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			if (!tag.equals(current.getTagName())) {
				continue;
			}
			String name = ClawerUtils.removeSpace(current.getAttribute(attribute, 0));
			if ("".equals(name)) {
				continue;
			}

			if ("".equals(attrVal)) {
				elements.add(current);
				continue;
			}

			if (name.indexOf(attrVal) > -1) {
				elements.add(current);
			}
		}
		return elements;
	}

	public static List<IElement> getElements(IElementCollection ies, String tag, String attribute, String attrVal,
			String innerTxt) {
		if (ies == null || ies.length() < 1) {
			return null;
		}

		attrVal = StringUtils.trim2Empty(attrVal);
		List<IElement> elements = new ArrayList<IElement>();
		String innerHtml = "";
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			if (!tag.equals(current.getTagName())) {
				continue;
			}
			String name = ClawerUtils.removeSpace(current.getAttribute(attribute, 0));
			if ("".equals(name)) {
				continue;
			}

			innerHtml = ClawerUtils.removeSpace(current.getInnerHTML());
			if ("".equals(attrVal)) {
				if (innerHtml.indexOf(innerTxt) > -1) {
					elements.add(current);
				}
				continue;
			}

			if (name.indexOf(attrVal) > -1) {
				if (innerHtml.indexOf(innerTxt) > -1) {
					elements.add(current);
				}
			}
		}
		return elements;
	}

	public static IElement elementByLoop = null;

	public static IElement getElementByLoop(IElementCollection ies, String tag, String attribute, String attrVal) {
		if (elementByLoop != null) {
			return elementByLoop;
		}
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			if (!tag.equals(current.getTagName())) {
				IElementCollection children = current.getChildElements();
				if (children.length() > 0) {
					getElementByLoop(children, tag, attribute, attrVal);
				}
			} else {
				String value = ClawerUtils.removeSpace(current.getAttribute(attribute, 0));
				if (value.indexOf(attrVal) > -1) {
					elementByLoop = current;
					return current;
				}
				IElementCollection children = current.getChildElements();
				if (children.length() > 0) {
					getElementByLoop(children, tag, attribute, attrVal);
				}
			}
		}
		return elementByLoop;
	}

	public static void waiting() {
		try {
			Thread.sleep(JobMain.WAITING);
		} catch (InterruptedException e) {
			ErrorHandler.error("Waiting failure!", e);
		}
	}

	public static void addListener(IBrowserCanvas browser) {
		browser.addPromptListener(new PromptListener() {
			// The onPromptDialog method is fired whenever the browser
			// wants to show a dialog. Here we have the option
			// of stopping the dialog from showing.
			public void onPromptDialog(PromptEvent e) {
				// Print out some info about the event we got
				LogHandler.info("We got a Dialog with type:" + e.getDialogType());
				LogHandler.info("Title: " + e.getDialogTitle());
				LogHandler.info("Text: " + e.getDialogText());

				e.setButtonResult(PromptEvent.BUTTON_OK);
				e.setButtonResult(PromptEvent.BUTTON_YES);
			}
		});
	}
	
	public static void showFrame(IBrowserCanvas browser,String title) {
		JFrame frame = new JFrame(title);
		JPanel panel = new JPanel(new BorderLayout());
		panel.add(BorderLayout.CENTER, browser.getComponent());
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setContentPane(panel);
		frame.setSize(640, 480);
		frame.setVisible(true);
	}


}
