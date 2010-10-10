package com.yesitc.baixing;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.htmlparser.Node;
import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.tags.Div;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.tags.TableColumn;
import org.htmlparser.tags.TableRow;
import org.htmlparser.tags.TableTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

import com.ibm.icu.util.Calendar;
import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.dao.EntityDao;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesiic.common.ClawerConstants;
import com.yesiic.common.ErrorHandler;
import com.yesiic.common.LogHandler;
import com.yesiic.common.ProcessContext;
import com.yesiic.common.WebRenderEntity;
import com.yesiic.common.WebrendererContext;
import com.yesiic.webswith.model.WebElements;

@SuppressWarnings("unchecked")
public class ImportTypes {

	static boolean loaded = false;
	static IBrowserCanvas browser = null;
	static ProcessContext processContext = null;
	private static Log log = LogFactory.getLog(ImportTypes.class);
	static EntityDao<WebElements> dao = (EntityDao<WebElements>) SpringContext
			.getBean("dao");

	/**
	 * @param args
	 * @throws ApplicationException
	 */
	public static void main(String[] args) throws ApplicationException {
		try {
			String url = "http://beijing.baixing.com/";
			loadUrl(url);
			TableColumn[] tdHtml = getAllTypesByTD();
			log.info("==tdHtml=" + tdHtml.length);
			List<WebElements> divs = new ArrayList<WebElements>();
			WebElements top = getTop();
			int x = 0;
			for (TableColumn tc : tdHtml) {
				log.info("==tc=" + (++x));
				parse2WES(tc, divs, top);
			}
			parseCategories2DB(divs);
			log.info("==divs=" + divs.size());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private static void parseCategories2DB(List<WebElements> wes) {
		for (WebElements we : wes) {
			dao.saveOrUpdate(we);
			// for (WebElements sub : we.getChildren()) {
			// dao.saveOrUpdate(sub);
			// }
		}
	}

	private static void parse2WES(TableColumn tdHtml, List<WebElements> divs,
			WebElements top) {
		NodeList nodelist = tdHtml.getChildren();
		Node[] nodes = nodelist.toNodeArray();
		WebElements temp = null;
		Date now = Calendar.getInstance().getTime();
		int j = 0;
		int k = 0;
		String code = null;
		for (int i = 0; i < nodes.length; i++) {
			if (nodes[i] instanceof Div) {
				LinkTag link = (LinkTag) nodes[i].getChildren().elementAt(0)
						.getChildren().elementAt(0);
				k = 0;
				code = link.getLink().substring(1,
						(link.getLink().length() - 1));
				List<WebElements> wes = dao.findByNameValue(WebElements.class,
						"code", code);
				if (wes != null && !wes.isEmpty()) {
					log.info("==wes.size=" + wes.size() + ",code=" + code
							+ ",j==" + j);
					temp = wes.get(0);
					divs.add(temp);
					continue;
				} else {
					temp = new WebElements();
				}
				j++;
				temp.setCode(code);
				temp.setName(link.getLinkText());
				temp.setCodeLevel(new Long(2));
				temp.setCreateDate(now);
				temp.setCreateUser(ClawerConstants.CREATE_USER);
				temp.setUpdateDate(now);
				temp.setUpdateUser(ClawerConstants.UPDATE_USER);
				temp.setSortList(new Long(j));
				temp.setParent(top);
				log.info("==getLink=" + temp.getCode() + ",getLinkText="
						+ temp.getName());
			}
			if (temp == null) {
				continue;
			}

			if (nodes[i] instanceof LinkTag) {
				LinkTag link = (LinkTag) nodes[i];
				if (link.getLink().indexOf("?") > -1) {
					continue;
				}
				k++;
				code = link.getLink().substring(1,
						(link.getLink().length() - 1));
				WebElements sub = getSub(temp, code);
				if (sub != null) {
					sub.setSortList(new Long(k));
					continue;
				} else {
					sub = new WebElements();
				}
				sub.setCode(code);
				sub.setName(link.getLinkText());
				sub.setCodeLevel(new Long(3));
				sub.setCreateDate(now);
				sub.setCreateUser(ClawerConstants.CREATE_USER);
				sub.setUpdateDate(now);
				sub.setUpdateUser(ClawerConstants.UPDATE_USER);
				sub.setSortList(new Long(k));
				sub.setParent(temp);
				// dao.saveOrUpdate(sub);
				log.info("==getLink=" + sub.getCode() + ",getLinkText="
						+ sub.getName());
			}
		}
	}

	private static WebElements getSub(WebElements temp, String code) {
		for (WebElements we : temp.getChildren()) {
			if (code.equals(we.getCode())) {
				return we;
			}
		}
		return null;
	}

	private static TableColumn[] getAllTypesByTD() throws ParserException {
		String categories = browser.getDocument().getElementById("categories")
				.getOuterHTML();
		Parser parser = Parser.createParser(categories, "utf8");
		NodeFilter tableFilter = new NodeClassFilter(TableTag.class);
		NodeList nodelist = parser.parse(tableFilter);
		TableTag table = (TableTag) nodelist.elementAt(0);
		TableRow[] trs = table.getRows();
		TableColumn[] tds = trs[0].getColumns();
		return tds;
	}

	private static WebElements getTop() {
		List<WebElements> wes = dao.findByNameValue(WebElements.class, "code",
				"types");
		if (wes != null && !wes.isEmpty()) {
			return wes.get(0);
		}
		WebElements top = new WebElements();
		Date now = Calendar.getInstance().getTime();
		top.setCode("types");
		top.setName("类别");
		top.setCodeLevel(new Long(1));
		top.setCreateDate(now);
		top.setCreateUser(ClawerConstants.CREATE_USER);
		top.setUpdateDate(now);
		top.setUpdateUser(ClawerConstants.UPDATE_USER);
		top.setSortList(new Long(2));

		dao.save(top);

		return top;
	}

	private static void loadUrl(String url) throws ParserException {
		ClawerConstants.THREADS_NUMBER = 1;
		processContext = new ProcessContext();
		WebRenderEntity en = WebrendererContext.WEBRENDER_ENTITIES.get(1);

		browser = en.getBrowser();
		onDocumnetComplete();

		processContext.setBrowser(browser);
		processContext.setLogTitle("Test");

		browser.loadURL(url);

		waitingLoading(url);

	}

	private static void onDocumnetComplete() {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				loaded = true;
			}
		});
	}

	public static void waitingLoading(String url) {
		int i = 0;
		LogHandler.info(processContext.getLogTitle()
				+ " waiting loading start!");
		while (!loaded) {
			i++;
			try {
				Thread.sleep(ClawerConstants.WAITING_TIME_LOADING);
			} catch (InterruptedException e) {
				ErrorHandler.error(processContext.getLogTitle() + " URL[" + url
						+ "] :", e);
			}
			if (i > 12) {
				ErrorHandler
						.errorLogAndMail(processContext.getLogTitle()
								+ " URL["
								+ url
								+ "] waiting loading to long and exit to waiting now. Time is["
								+ i * 10 + "]s");
				break;
			} else {
				LogHandler.info(processContext.getLogTitle() + " URL[" + url
						+ "] waiting loading……[" + i * 10 + "]s");
			}
		}
		LogHandler.info(processContext.getLogTitle()
				+ "  waiting loading end![" + i * 2 + "]s");
	}
}