package com.yesibc.job51.company;

import java.awt.AWTException;
import java.awt.BorderLayout;
import java.awt.Robot;
import java.awt.event.InputEvent;

import javax.swing.JFrame;
import javax.swing.JPanel;

import com.webrenderer.swing.BrowserFactory;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.dom.IElement;
import com.webrenderer.swing.dom.IElementCollection;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;

public class Test1 {

	public final static String URL_SEARCH = "http://search.51job.com/jobsearch/advance_search.php";
	public final static String URL_SEARCH_BAK = "file:///D:/yesibc/51job/51JOB/test.html";
	static IBrowserCanvas browser;
	static boolean FINISH = false;
	static String funTag = "popupFuntype";
	static String indTag = "popupIndustry";
	private static Robot robot;

	private static void onDocumentComplete(final IBrowserCanvas browser) {
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
		try {
			robot = new Robot();
		} catch (AWTException ex) {
			ex.printStackTrace();
		}
		BrowserFactory.setLicenseData("30dtrial", "6KR60ASK2KG378HCEBB128NP");
		browser = BrowserFactory.spawnMozilla();
		onDocumentComplete(browser);
		browser.loadURL(URL_SEARCH_BAK);

		showFrame();

		waitingLoading();
		String id = "test";
		String leftScript = "leftA=document.getElementById('" + id + "').offsetLeft; alert(leftA);";
		String x = browser.executeScriptWithReturn(leftScript);
		String rightScript = "leftB=document.getElementById('" + id + "').offsetTop;alert(leftB);";
		String y = browser.executeScriptWithReturn(rightScript);
		System.out.println("x=" + x + ",y=" + y);
	}

	/**
	 * (popupFuntype.innerHTML); (popupIndustry.innerHTML);
	 * 
	 * @param ies
	 */
	@SuppressWarnings("unused")
	private static void doClick(IElement[] ies) {
		ies[0].click();
		IDocument doc = browser.getDocument();
		IElement funDIV = doc.getElementById(funTag);
		System.out.println("Fun funDIV1=" + funDIV.getOuterHTML());

		// IElementCollection divs = doc.getAll().tags("DIV");
		// IElement funDIV = getElement(divs, "id", funTag);

		elementByLoop = null;
		IElementCollection children = funDIV.getChildElements();
		System.out.println("children=" + children.length());
		IElement first = getElementByLoop(children, "TD", "layerid", "popupFuntype");
		String tempId = first.getId();
		System.out.println("tempId=" + tempId);
		System.out.println("first=" + first.getOuterHTML());
		String id = "td" + tempId + System.currentTimeMillis();
		first.putId(id);
		System.out.println("id=" + first.getId());
		System.out.println("first1=" + first.getOuterHTML());

		String leftScript = "var left=getLeft();function getLeft(){" //
			+ " e=document.getElementById('" + id + "');" 
			+ " var left=e.offsetLeft; "
            + " while(e)"
            + " { "
            + "     left+=e.offsetLeft; e=e.offsetParent;"
            + " } return left;"
            + " }  left; "; 


		String x = browser.executeScriptWithReturn(leftScript);
		String rightScript = "var top=getTop();function getTop(){"
			+ " e=document.getElementById('" + id + "');" 
			+ " top=e.offsetTop;"
			+ " while(e)"
			+ " { "
			+ "     top+=e.offsetTop; e=e.offsetParent;"
			+ " } return top;"
			+ " } ;top;		" ;
		String y = browser.executeScriptWithReturn(rightScript);
		System.out.println("x=" + x + ",y=" + y);
		
		robot.mouseMove(0, 0);
		robot.mousePress(InputEvent.BUTTON1_MASK);
		robot.mouseRelease(InputEvent.BUTTON1_MASK);
		// first.click();
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
				if (attrVal.equals(name)) {
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

	@SuppressWarnings("unused")
	private static IElement getElement(IElementCollection ies, String attribute, String attrVal) {
		for (int i = 0; i < ies.length(); i++) {
			IElement current = ies.item(i);
			String name = current.getAttribute(attribute, 0);
			if (attrVal.equals(name)) {
				System.out.println("Find name=" + name);
				return current;
			}
		}
		System.out.println("no name=" + attrVal);
		return null;
	}

	@SuppressWarnings("unused")
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
			System.out.println("waiting loading����[" + i * 0.5 + "]s");
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
