package com.yesibc.core.components.webrenderer;

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

public class WebrendererSupport {

	private final static String SPACER = "";

	public static void main(String[] args) {
		System.out.println(removeSpace("a b"));
	}

	public static String removeSpace(String str) {
		if (str == null) {
			return "";
		}
		str = str.trim();
		str = str.replace("\n", SPACER).replace("\t", SPACER).replace(" ", SPACER);
		return str;
	}

	public WebrendererSupport() {
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
			String name = removeSpace(current.getAttribute(attribute, 0));
			if (name.indexOf(attrVal) > -1) {
				return current;
			}
		}
		return null;
	}

	private static Log log = LogFactory.getLog(WebrendererSupport.class);

	public static List<IElement> getElements(IElementCollection ies, String attribute, String attrVal)
			throws ApplicationException {
		if (ies == null || ies.length() < 1) {
			return null;
		}
		List<IElement> elements = new ArrayList<IElement>();
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			String name = removeSpace(current.getAttribute(attribute, 0));
			if (name.indexOf(attrVal) > -1) {
				elements.add(current);
			}
		}
		if (log.isDebugEnabled()) {
			log.debug("elements size:" + elements.size());
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
			String name = removeSpace(current.getAttribute(attribute, 0));

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
			String name = removeSpace(current.getAttribute(attribute, 0));
			if ("".equals(name)) {
				continue;
			}

			innerHtml = removeSpace(current.getInnerHTML());
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
			String name = removeSpace(current.getAttribute(attribute, 0));
			if ("".equals(name)) {
				continue;
			}

			if (name.indexOf(attrVal) < 0) {
				continue;
			}

			innerHtml = removeSpace(current.getInnerHTML());
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
				String value = removeSpace(current.getAttribute(attribute, 0));
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
				if (value.indexOf(txt) > -1) {
					ieLMTs.add(current);
				}
			}
		}
		return ieLMTs;
	}

	public static void addListener(IBrowserCanvas browser, final String user, final String pswd) {
		browser.addPromptListener(new PromptListener() {
			public void onPromptDialog(PromptEvent e) {
				if (6 == e.getDialogType()) {
					e.setUserName(user);
					e.setPassword(pswd);
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
