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
import org.htmlparser.tags.LinkTag;
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
public class InitBaseConf {

	static boolean loaded = false;
	static IBrowserCanvas browser = null;
	static ProcessContext processContext = null;
	static String START = "长宁网页/平面设计/印刷";
	static String HAVE_EXISTED = "长宁周边的"; //
	private static Log log = LogFactory.getLog(InitBaseConf.class);
	static EntityDao<WebElements> dao = (EntityDao<WebElements>) SpringContext
			.getBean("dao");

	/**
	 * @param args
	 * @throws ApplicationException
	 */
	public static void main(String[] args) throws ApplicationException {
		try {
			String url = "http://www.baixing.com/?changeLocation=yes&sheng=%E6%89%80%E6%9C%89%E5%9F%8E%E5%B8%82";
			loadUrl(url);
			List<WebElements> cityList = parse2CityList();
			parseCities2DB(cityList);
			List<WebElements> districtsList = new ArrayList<WebElements>(); 
			
			url = "http://beijing.baixing.com/";
			loadUrl(url);
			parse2DistrictList(districtsList,"beijing");
			url = "http://shanghai.baixing.com/";
			loadUrl(url);
			parse2DistrictList(districtsList,"shanghai");
			
			parseDistricts2DB(districtsList);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private static List<WebElements> parse2DistrictList(List<WebElements> districtList,String city) throws ParserException {
		String districts = browser.getDocument().getElementById("areas").getOuterHTML();
		Parser parser = Parser.createParser(districts, "utf8");
		NodeFilter linkFilter = new NodeClassFilter(LinkTag.class);
		NodeList nodelist = parser.parse(linkFilter);
		Node[] nodes = nodelist.toNodeArray();
		String line = "";

		List<WebElements> cityWEs = dao.findByNameValue(WebElements.class, "code", city);
		WebElements cityWe = cityWEs.get(0);
		
		Date now = Calendar.getInstance().getTime();
		for (int i = 0; i < nodes.length; i++) {
			LinkTag link = (LinkTag) nodes[i];
			line = link.getLink();
			WebElements we = new WebElements();
			we.setCode(line.substring(11));
			we.setName(link.getLinkText());
			we.setCodeLevel(new Long(3));
			we.setCreateDate(now);
			we.setCreateUser(ClawerConstants.CREATE_USER);
			we.setUpdateDate(now);
			we.setUpdateUser(ClawerConstants.UPDATE_USER);
			we.setSortList(new Long(i));
			we.setParent(cityWe);

			districtList.add(we);
			log.info("==line=" + line + ",Code=" + we.getCode() + ",name="
					+ link.getLinkText());

		}		
		return districtList;
	}

	private static List<WebElements> parse2CityList()
			throws ParserException {
		String cities = browser.getDocument().getElementById("cityTable").getOuterHTML();
		Parser parser = Parser.createParser(cities, "utf8");
		NodeFilter linkFilter = new NodeClassFilter(LinkTag.class);
		NodeList nodelist = parser.parse(linkFilter);
		Node[] nodes = nodelist.toNodeArray();
		String line = "";

		Date now = Calendar.getInstance().getTime();

		List<WebElements> cityList = new ArrayList<WebElements>();
		for (int i = 0; i < nodes.length; i++) {
			LinkTag link = (LinkTag) nodes[i];
			line = link.getLink();
			WebElements we = new WebElements();
			we.setCode(line.substring(7, line.indexOf(".")));
			we.setName(link.getLinkText());
			we.setCodeLevel(new Long(2));
			we.setCreateDate(now);
			we.setCreateUser(ClawerConstants.CREATE_USER);
			we.setUpdateDate(now);
			we.setUpdateUser(ClawerConstants.UPDATE_USER);
			we.setSortList(new Long(i));

			cityList.add(we);
			log.info("line=" + line + ",Code=" + we.getCode() + ",name="
					+ link.getLinkText());

		}
		return cityList;
	}

	private static void parseDistricts2DB(List<WebElements> districtsList) {
		for(WebElements we: districtsList){
			dao.save(we);
		}
	}

	private static void parseCities2DB(List<WebElements> citiesList) {
		WebElements top = getTopCity();
		for(WebElements we: citiesList){
			we.setParent(top);
			dao.save(we);
		}

	}

	private static WebElements getTopCity() {
		WebElements top = new WebElements();
		Date now = Calendar.getInstance().getTime();
		top.setCode("area");
		top.setName("区域");
		top.setCodeLevel(new Long(1));
		top.setCreateDate(now);
		top.setCreateUser(ClawerConstants.CREATE_USER);
		top.setUpdateDate(now);
		top.setUpdateUser(ClawerConstants.UPDATE_USER);
		top.setSortList(new Long(1));

		dao.save(top);

		return top;
	}

	private static void loadUrl(String url) throws ParserException {
		ClawerConstants.THREADS_NUMBER = 1;
		processContext = new ProcessContext();
		WebRenderEntity en = WebrendererContext.WEBRENDER_ENTITIES.get(1);

		browser = en.getBrowser();
		onDocumnetComplete();

		processContext.setHtml(browser.getDocument().getBody().getOuterHTML());
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
				Thread.sleep(2000);
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