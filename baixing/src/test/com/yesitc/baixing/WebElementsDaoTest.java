package com.yesitc.baixing;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesiic.dao.WebElementsDao;
import com.yesiic.webswith.model.WebElements;

public class WebElementsDaoTest {

	private static Log log = LogFactory.getLog(WebElementsDaoTest.class);
	static WebElementsDao dao = (WebElementsDao) SpringContext
			.getBean("webElementsDao");

	/**
	 * @param args
	 * @throws ApplicationException
	 */
	public static void main(String[] args) throws ApplicationException {
		try {
			List<WebElements> wes = getAllWeTypes();
			for (WebElements we : wes) {
				
				log.info("==getCode=" + we.getCode() + "==getName=" + we.getName());
				//String url = "http://shanghai.baixing.com/" + we.getCode() + "/?areaName=changning";
				//loadUrl(url);
				//String header = getSubHeader();
				//we.setMemo(header);
			}
			//parseCategories2DB(wes);
			// log.info("==divs=" + divs.size());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private static List<WebElements> getAllWeTypes() throws ApplicationException {
		List<WebElements> wes = dao.getWebElementsByType("types");
		return wes;
	}

}