package com.yesibc.job51.test.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yesibc.job51.model.WebPages;

public class Test3 {

	/**
	 * @param args
	 */
	static Map<String, WebPages> wps = new HashMap<String, WebPages>();
	static List<WebPages> wpList = new ArrayList<WebPages>();

	public static void main(String[] args) {
		for (int i = 0; i < 10; i++) {
			try {
				if (i < 10) {
					continue;
				}
			} finally {
				System.out.println(i + "=" + i);
			}
			System.out.println(i);
		}

		WebPages wp = new WebPages();
		wp.setMemo("1");
		wps.put("1", wp);
		wpList.add(wp);
		wpList.add(wp);
		System.out.println("size=" + wpList.size());
		wpList.remove(wp);
		System.out.println("size=" + wpList.size());

		System.out.println(wp.getMemo());
		System.out.println(wp.getPageType());

		refresh(wp);

		System.out.println(wps.get("1").getMemo());
		System.out.println(wps.get("1").getPageType());
		wp.setRequestId("ddddddd");
		System.out.println("aaa=" + wps.get("1").getRequestId());
		wps.get("1").setRequestId("ddddddd");
		System.out.println("bbb=" + wps.get("1").getRequestId());

		wp = new WebPages();
		wp.setMemo("1");
		wps.put("1", wp);

		refresh1(wp);
		System.out.println(wp.getMemo());
		System.out.println(wps.get("1").getMemo());

		wp = null;
		System.out.println(wps.size());
		System.out.println("null===" + wps.get("1") == null);

	}

	private static void refresh(WebPages wp) {
		wp.setMemo("2");
		wp.setPageType("3333");
	}

	private static void refresh1(WebPages wp) {
		wp.setMemo("2");
	}

}
