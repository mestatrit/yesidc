package com.yesitc.baixing.web;

import java.util.List;

import com.yesibc.core.exception.ApplicationException;
import com.yesiic.common.UrlsContext;
import com.yesiic.webswith.model.WebPages;

public class BxUrlsContext extends UrlsContext {

	public static List<WebPages> getDetails() {
		if (INIT_DETAILS == 0) {
			try {
				initDetails(WebPages.PAGE_DETAILS_31);
			} catch (ApplicationException e) {
				e.printStackTrace();
			}
		}
		return details;
	}

	public static List<WebPages> getPages() {
		if (INIT_PAGES == 0) {
			try {
				initPages(WebPages.PAGE_PAGES_21);
			} catch (ApplicationException e) {
				e.printStackTrace();
			}
		}
		return pages;
	}

	public static List<WebPages> getTypes() {
		if (INIT_TYPES == 0) {
			try {
				initTypes(WebPages.PAGE_TYPES_11);
			} catch (ApplicationException e) {
				e.printStackTrace();
			}
		}
		return types;
	}
}
