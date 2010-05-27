package com.yesibc.job51.web.support;

import java.awt.BorderLayout;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JPanel;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.dom.IElementCollection;
import com.webrenderer.swing.event.PromptEvent;
import com.webrenderer.swing.event.PromptListener;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.web.search.ProcessContext;
import com.yesibc.job51.web.search.WebrendererContext;

public class JobSupport {

	public static long WAITING = 0;

	public static final String LEFT_TAG = "{";
	public static final String RIGHT_TAG = "}";

	public static IBrowserCanvas initLoading(ProcessContext processContext, String title, int index, int positionOfURL,
			boolean retry) {
		// title = getCrIndex2Title(title, positionOfURL);
		// WebLinkSupport.doCount(title, index, retry);

		IBrowserCanvas browser = WebrendererContext.WEBRENDER_ENTITIES.get(index).getBrowser();
		setProcessContext(browser, processContext, title);
		if (ClawerConstants.SHOW_FRAME) {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).getFrame().setTitle(processContext.getLogTitle());
		}
		WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(false);

		return browser;
	}

	public static IBrowserCanvas initLoading(ProcessContext processContext, String title, int index) {
		// WebLinkSupport.doCount(title, index, retry);

		IBrowserCanvas browser = WebrendererContext.WEBRENDER_ENTITIES.get(index).getBrowser();
		setProcessContext(browser, processContext, title);
		if (ClawerConstants.SHOW_FRAME) {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).getFrame().setTitle(processContext.getLogTitle());
		}
		WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(false);

		return browser;
	}

	public static IBrowserCanvas reLoading(ProcessContext processContext, String title, int index) {

		WebrendererContext.reFreshContext1(index, title + "-" + index);

		IBrowserCanvas browser = WebrendererContext.WEBRENDER_ENTITIES.get(index).getBrowser();
		setProcessContext(browser, processContext, title);
		if (ClawerConstants.SHOW_FRAME) {
			WebrendererContext.WEBRENDER_ENTITIES.get(index).getFrame().setTitle(processContext.getLogTitle());
		}
		WebrendererContext.WEBRENDER_ENTITIES.get(index).setLoaded(false);

		return browser;
	}

	public static String getCrIndex2Title(String title, int positionOfURL) {
		if (title.indexOf(LEFT_TAG) > -1) {
			int i = title.indexOf(LEFT_TAG);
			String temp = title.substring(0, i + LEFT_TAG.length());
			title = temp + positionOfURL + RIGHT_TAG;
		} else {
			title = title + LEFT_TAG + positionOfURL + RIGHT_TAG;
		}
		return title;
	}

	public static void main(String[] args) {
		String url = "#Paging#ToT-20[16]#CrToI[917]#CrToC-53";
		System.out.println(getCrIndex2Title(url, 1));
	}

	private static void setProcessContext(IBrowserCanvas browser, ProcessContext processContext, String head) {
		processContext.setBrowser(browser);
		processContext.setLogTitle(head);
	}

	public JobSupport() {
		this.elementByLoop = null;
		ieLMTs = new ArrayList<IElement>();
	}

	public static IElement getElement(IElementCollection ies, String[] attributes, String[] attrVals, String[] txts) {
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			int j = 0;
			boolean have = true;
			for (String attribute : attributes) {
				String name = current.getAttribute(attribute, 0);
				if (name.indexOf(attrVals[j]) < 0) {
					have = false;
					break;
				}
				j++;
			}
			if (have) {
				boolean ko = false;
				if (txts != null) {
					String html = current.getOuterHTML();
					for (String txt : txts) {
						if (html.indexOf(txt) < 0) {
							ko = true;
							break;
						}
					}
				}
				if (!ko) {
					return current;
				}
			}
		}
		return null;
	}

	public static IElement getElement(IElementCollection ies, String attribute, String attrVal) {
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			String name = ClawerUtils.removeSpace(current.getAttribute(attribute, 0));
			LogHandler.debug("name=" + name);
			if (name.indexOf(attrVal) > -1) {
				return current;
			}
		}
		return null;
	}

	private static Log log = LogFactory.getLog(JobSupport.class);

	public static List<IElement> getElements(IElementCollection ies, String attribute, String attrVal)
			throws ApplicationException {
		if (ies == null || ies.length() < 1) {
			log.info("IES is null!");
			return null;
		}
		List<IElement> elements = new ArrayList<IElement>();
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			String name = ClawerUtils.removeSpace(current.getAttribute(attribute, 0));
			LogHandler.info("name=" + name);
			if (name.indexOf(attrVal) > -1) {
				elements.add(current);
			}
		}
		return elements;
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

	public static List<IElement> getElements(IElementCollection ies, String attribute, String attrVal,
			String[] innerTxts) {
		if (ies == null || ies.length() < 1 || innerTxts == null || innerTxts.length < 1) {
			return null;
		}

		attrVal = StringUtils.trim2Empty(attrVal);
		String innerHtml = "";
		List<IElement> elements = new ArrayList<IElement>();
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			String name = ClawerUtils.removeSpace(current.getAttribute(attribute, 0));
			if ("".equals(name)) {
				continue;
			}

			if (name.indexOf(attrVal) < 0) {
				continue;
			}

			innerHtml = ClawerUtils.removeSpace(current.getInnerHTML());
			boolean have = true;
			for (String innerTxt : innerTxts) {
				if (innerHtml.indexOf(innerTxt) < 0) {
					have = false;
				}
			}
			if (have) {
				elements.add(current);
			}
		}
		return elements;
	}

	public static List<IElement> getElementsByTxt(IElementCollection ies, String[] innerTxts) {
		if (ies == null || ies.length() < 1) {
			return new ArrayList<IElement>();
		}

		List<IElement> elements = new ArrayList<IElement>();
		String innerHtml = "";
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			innerHtml = current.getOuterHTML();
			boolean have = true;
			for (String innerTxt : innerTxts) {
				if (innerHtml.indexOf(innerTxt) < 0) {
					have = false;
					break;
				} else {
					LogHandler.debug(innerHtml);
				}
			}
			if (have) {
				elements.add(current);
			}

		}
		return elements;
	}

	private IElement elementByLoop = null;
	private List<IElement> ieLMTs = null;

	public IElement getElementByLoop(IElementCollection ies, String tag, String attribute, String attrVal) {
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

	public IElement getElementByTxtAndLoop(IElementCollection ies, String tag, String txt) {
		if (elementByLoop != null) {
			return elementByLoop;
		}
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			if (!tag.equals(current.getTagName())) {
				IElementCollection children = current.getChildElements();
				if (children.length() > 0) {
					getElementByTxtAndLoop(children, tag, txt);
				}
			} else {
				String value = current.getOuterHTML();
				LogHandler.debug(value);
				if (value.indexOf(txt) > -1) {
					elementByLoop = current;
					return current;
				}
				IElementCollection children = current.getChildElements();
				if (children.length() > 0) {
					getElementByTxtAndLoop(children, tag, txt);
				}
			}
		}
		return elementByLoop;
	}

	public List<IElement> getElementsByLoop(IElementCollection ies, String tag) {
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			if (!tag.equals(current.getTagName())) {
				IElementCollection children = current.getChildElements();
				if (children.length() > 0) {
					getElementsByLoop(children, tag);
				}
			} else {
				ieLMTs.add(current);
			}
		}
		return ieLMTs;
	}

	public List<IElement> getElementsByTxtAndLoop(IElementCollection ies, String tag, String txt) {
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			// LogHandler.info(current.getOuterHTML());
			if (!tag.equals(current.getTagName())) {
				IElementCollection children = current.getChildElements();
				if (children.length() > 0) {
					getElementsByTxtAndLoop(children, tag, txt);
				}
			} else {
				String value = current.getOuterHTML();
				// LogHandler.info(value);
				if (value.indexOf(txt) > -1) {
					ieLMTs.add(current);
				}
			}
		}
		return ieLMTs;
	}

	public static void waiting() {
		try {
			Thread.sleep(WAITING);
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
				LogHandler.info("Title: " + e.getDialogTitle() + "Text: " + e.getDialogText());
				LogHandler.info("username=" + ClawerConstants.DIALOG_USERNAME + ",password="
						+ ClawerConstants.DIALOG_PASSWORD);

				if (6 == e.getDialogType()) {
					e.setUserName(ClawerConstants.DIALOG_USERNAME);
					e.setPassword(ClawerConstants.DIALOG_PASSWORD);
					e.setButtonResult(PromptEvent.BUTTON_OK);
				} else {
					e.setButtonResult(PromptEvent.BUTTON_YES);
				}
			}
		});
	}

	public static JFrame showFrame(IBrowserCanvas browser, String title) {
		JFrame frame = new JFrame(title);
		JPanel panel = new JPanel(new BorderLayout());
		panel.add(BorderLayout.CENTER, browser.getComponent());
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setContentPane(panel);
		frame.setSize(640, 480);
		frame.setVisible(true);
		return frame;
	}

	public void setElementByLoop(IElement elementByLoop) {
		this.elementByLoop = elementByLoop;
	}

	public void setIeLMTs(List<IElement> ieLMTs) {
		this.ieLMTs = ieLMTs;
	}

}
