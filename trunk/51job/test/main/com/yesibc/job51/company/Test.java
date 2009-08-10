package com.yesibc.job51.company;

import java.awt.AWTException;
import java.awt.BorderLayout;
import java.awt.Robot;
import java.awt.event.InputEvent;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JPanel;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.dom.IElementCollection;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.utils.StringUtils;

public class Test {

	public final static String URL_SEARCH = "http://search.51job.com/jobsearch/advance_search.php";
	public final static String URL_SEARCH_BAK = "file:///D:/yesibc/51job/51JOB/jobsearch/advance_search.html";
	static IBrowserCanvas browser;
	static boolean FINISH = false;
	static String funTag = "popupFuntype";
	static String indTag = "popupIndustry";
	private static String[] funArray = { "2400", "0100" };
	private static String[] indArray = { "01", "37" };
	static int funIndex = 0;
	static int indIndex = 0;
	

	public static void onDocumentComplete(final IBrowserCanvas browser) {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				FINISH = true;
			}
		});
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		BrowserFactory.setLicenseData("30dtrial", "6KR60ASK2KG378HCEBB128NP");
		browser = BrowserFactory.spawnMozilla();
		onDocumentComplete(browser);
		browser.loadURL(URL_SEARCH_BAK);

		showFrame();

		waitingLoading();

		IElement[] ies = locateButton();

		for (int i = 0; i < funArray.length; i++) {
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			doFunClick(ies, i);
		}

		for (int i = 0; i < indArray.length; i++) {
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			doIndClick(ies, i);
		}

		System.out.println("onDocumentComplete2 getInnerHTML");
	}

	/**
	 * (popupFuntype.innerHTML); (popupIndustry.innerHTML);
	 * 
	 * @param ies
	 */
	private static void doFunClick(IElement[] ies, int i) {
		ies[0].click();
		IDocument doc = browser.getDocument();
		IElement funDIV = doc.getElementById(funTag);
		System.out.println("Fun funDIV1=" + funDIV.getOuterHTML());

		// sfchx || cancel selected
		IElementCollection checkBoxOKs = doc.getAll().tags("INPUT");
		if (checkBoxOKs != null && checkBoxOKs.length() > 0) {
			IElement checkBoxOK = getElement(checkBoxOKs, "id", "sfchx");
			if (checkBoxOK != null) {
				System.out.println("Fun checkBoxOK=" + checkBoxOK.getOuterHTML());
				checkBoxOK.click();
			}
		}

		// locate to td
		IElementCollection children = funDIV.getChildElements();
		elementByLoop = null;
		IElement tdLocation = getElementByLoop(children, "TD", "pcode", funArray[i]);
		tdLocation.click();

		// afchx ||
		elementByLoop = null;
		IElementCollection checkBoxs = doc.getAll().tags("INPUT");
		IElement checkBox = getElement(checkBoxs, "id", "afchx" + funArray[i]);
		checkBox.click();
		// (children, "INPUT", "id", "afchx");
		System.out.println("Fun checkBox=" + checkBox.getOuterHTML());

		// click confirm
		elementByLoop = null;
		IElement cofirm = getElementByLoop(children, "SPAN", "onclick", "confirmLayer");
		System.out.println("Fun cofirm=" + cofirm.getOuterHTML());
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		cofirm.click();
	}

	/**
	 * (popupFuntype.innerHTML); (popupIndustry.innerHTML);
	 * 
	 * @param ies
	 */
	private static void doIndClick(IElement[] ies, int i) {
		ies[1].click();
		IDocument doc = browser.getDocument();
		IElement funDIV = doc.getElementById(indTag);
		System.out.println("Ind indDIV1=" + funDIV.getOuterHTML());

		// sichx || cancel selected
		IElementCollection allInputs = doc.getAll().tags("INPUT");
		if (allInputs != null && allInputs.length() > 0) {
			List<IElement> checkBoxOKs = getElements(allInputs, "INPUT", "id", "sichxs");
			for (IElement e : checkBoxOKs) {
				System.out.println("Fun checkBoxOK=" + e.getOuterHTML());
				e.click();
			}
		}

		// aichx ||
		elementByLoop = null;
		IElementCollection checkBoxs = doc.getAll().tags("INPUT");
		IElement checkBox = getElement(checkBoxs, "id", "aichx" + indArray[i]);
		checkBox.click();
		System.out.println("Ind checkBox=" + checkBox.getOuterHTML());

		// click confirm
		elementByLoop = null;
		IElement cofirm = getElementByLoop(funDIV.getChildElements(), "SPAN", "onclick", "confirmLayer");
		System.out.println("Ind cofirm=" + cofirm.getOuterHTML());
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		cofirm.click();
		System.out.println("Ind indDIV2=" + funDIV.getOuterHTML());
	}

	static IElement elementByLoop = null;

	private static IElement getElementByLoop(IElementCollection ies, String tag, String attribute, String attrVal) {
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
				String name = current.getAttribute(attribute, 0);
				if (name.indexOf(attrVal) > -1) {
					elementByLoop = current;
					System.out.println("Find value=" + current.getInnerHTML());
					System.out.println("Find code=" + current.getAttribute("pcode", 0));
					System.out.println("Find getAttribute=" + attribute + ",name=" + name);
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

	private static List<IElement> getElements(IElementCollection ies, String tag, String attribute, String attrVal) {
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
			String name = StringUtils.trim2Empty(current.getAttribute(attribute, 0));
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

	private static IElement getElement(IElementCollection ies, String attribute, String attrVal) {
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			String name = current.getAttribute(attribute, 0);
			if (name.indexOf(attrVal) > -1) {
				System.out.println("Find name=" + name);
				return current;
			}
		}
		System.out.println("no name=" + attrVal);
		return null;
	}

	private static IElement[] locateButton() {
		IDocument doc = browser.getDocument();
		IElementCollection inputs = doc.getAll().tags("INPUT");
		IElement funBT = null;
		IElement indBT = null;
		IElement[] ie = new IElement[2];
		for (int i = 0; i < inputs.length(); i++) {
			IElement current = inputs.item(i);
			String buttonStr = current.getOuterHTML();
			System.out.println("buttonStr" + i + "=" + buttonStr);
			if (buttonStr.indexOf(funTag) > -1) {
				funBT = current;
				ie[0] = funBT;
			} else if (buttonStr.indexOf(indTag) > -1) {
				indBT = current;
				ie[1] = indBT;
				break;
			}
		}
		return ie;
	}

	private static void waitingLoading() {
		int i = 0;
		while (!FINISH) {
			i++;
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			System.out.println("waiting loading¡­¡­[" + i * 0.5 + "]s");
		}
	}

	private static void showFrame() {
		JFrame frame = new JFrame("Advanced DOM Example");
		JPanel panel = new JPanel(new BorderLayout());
		panel.add(BorderLayout.CENTER, browser.getComponent());
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setContentPane(panel);
		frame.setSize(640, 480);
		frame.setVisible(true);
	}

}
