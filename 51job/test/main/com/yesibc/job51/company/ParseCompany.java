package com.yesibc.job51.company;

import java.util.ArrayList;
import java.util.List;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.company.search1.LocateCompanyInfo;
import com.yesibc.job51.model.Company;

public class ParseCompany {

	private static IBrowserCanvas browser;
	private static boolean finish = false;
	static {
		browser = JobMain.getBrowser();
		onDocumnetComplete();
		JobSupport.showFrame(browser, "Search to detail company!");
	}

	public static IDocument getDoc() {
		return browser.getDocument();
	}

	public static void toDetailCompany(List<Company> companies) {
		for (Company company : companies) {
			finish = false;
			browser.loadURL(company.getUrl());
			waitingLoading();
			LocateCompanyInfo.checkCompanyDetail(getDoc());
			parseToCompany(company);
		}

	}

	private static void parseToCompany(Company company) {
		LogHandler.info("company:" + company.getCompanyName() + ","
				+ company.getCompanyId());
		// TODO Auto-generated method stub
		company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB);
		String[] industryTypeScale = LocateCompanyInfo.getComIndustryTypeScale(
				getDoc(), company.getUrl());
		company.setCompanyIndustry1Name(industryTypeScale[0]);
		company.setCompanyIndustry2Name(industryTypeScale[1]);
		company.setCompanyTypeName(industryTypeScale[2]);
		company.setCompanyScaleName(industryTypeScale[3]);

		String description = LocateCompanyInfo.getDescription(getDoc(), company
				.getUrl());
		int i = StringUtils.absoluteLength(description);
		if (i > 3999) {
			company.setIntroduction1(StringUtils.subStringByByte(description,
					0, 3999));
			company.setIntroduction2(StringUtils.subStringByByte(description,
					3999, i));
		} else {
			company.setIntroduction1(description);
		}

		String website = LocateCompanyInfo.getWebsite(getDoc(), company
				.getUrl());

		String address = LocateCompanyInfo.getAddress(getDoc(), company
				.getUrl());

		String zip = LocateCompanyInfo.getZip(getDoc(), company.getUrl());
		String fax = LocateCompanyInfo.getFax(getDoc(), company.getUrl());
		String linkman = LocateCompanyInfo.getLinkman(getDoc(), company
				.getUrl());
		String tel = LocateCompanyInfo.getTel(getDoc(), company.getUrl());
		String email = LocateCompanyInfo.getEmail(getDoc(), company.getUrl());

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

	public static void main(String[] args) {
		List<Company> companies = new ArrayList<Company>();
		Company com = new Company();
		com.setCompanyName("tesst");
		com
				.setUrl("D:\\yesibc\\51job\\html\\51JOB\\search0907\\companydetail.html");
		companies.add(com);
		toDetailCompany(companies);

		System.out.println("");
		// String ind =

	}
}
