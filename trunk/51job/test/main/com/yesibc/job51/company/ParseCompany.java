package com.yesibc.job51.company;

import java.util.List;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.job51.model.Company;

public class ParseCompany {

	private static IBrowserCanvas browser;
	private static boolean finish = false;
	static{
		browser = JobMain.getBrowser();
		onDocumnetComplete();
		JobSupport.showFrame(browser, "Search to detail company!");
	}

	public static void toDetailCompany(List<Company> companies) {
		for (Company company : companies) {
			finish = false;
			browser.loadURL(company.getUrl());
			waitingLoading();
			parseToCompany(company);
		}

	}

	private static void parseToCompany(Company company) {
		LogHandler.info("company:" + company.getCompanyName() + "," + company.getCompanyId());
		// TODO Auto-generated method stub

	}

	private static void onDocumnetComplete() {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				finish = true;
			}
		});
	}

	public static void waitingLoading() {
		int i = 0;
		while (!finish) {
			i++;
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			System.out.println("waiting loading¡­¡­[" + i * 0.5 + "]s");
		}
	}

}
