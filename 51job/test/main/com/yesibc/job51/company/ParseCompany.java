package com.yesibc.job51.company;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.webrenderer.swing.IBrowserCanvas;
import com.webrenderer.swing.dom.IDocument;
import com.webrenderer.swing.event.NetworkAdapter;
import com.webrenderer.swing.event.NetworkEvent;
import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.support.Address;
import com.yesibc.job51.company.search1.LocateCompanyInfo;
import com.yesibc.job51.dao.CompanyDao;
import com.yesibc.job51.model.Code;
import com.yesibc.job51.model.ComAppend;
import com.yesibc.job51.model.ComContactHeader;
import com.yesibc.job51.model.ComContactInfo;
import com.yesibc.job51.model.ComEmail;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.model.sub.ComContactFax;
import com.yesibc.job51.model.sub.ComContactTel;

public class ParseCompany {

	private static IBrowserCanvas browser;
	private static boolean finish = false;
	private static CompanyDao companyDao = (CompanyDao) SpringContext
			.getBean("companyDao");
	static int LOAD_TIMES = 0;

	static {
		browser = JobMain.getBrowser();
		onDocumnetComplete();
		JobSupport.showFrame(browser, "Search to detail company!");
	}

	public static IDocument getDoc() {
		return browser.getDocument();
	}

	public static void toDetailCompany(List<Company> companies)
			throws ApplicationException {
		for (Company company : companies) {
			finish = false;
			browser.loadURL(company.getUrl());
			waitingLoading();
			LocateCompanyInfo.checkCompanyDetail(getDoc());
			parseToCompany(company);
			companyDao.save(company);
		}

	}

	private static void parseToCompany(Company company) {
		LogHandler.info("company:" + company.getCompanyName() + ","
				+ company.getCompanyCode());

		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE
					.getCname());
		}

		Date d = new Date();
		company.setCreateDate(d);
		company.setUpdateDate(d);
		company.setCreateUser(ClawerConstants.CREATE_USER);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);

		String[] industryTypeScale = LocateCompanyInfo.getComIndustryTypeScale(
				getDoc(), company.getUrl());
		company.setCompanyIndustry1Name(industryTypeScale[0]);
		company.setCompanyIndustry2Name(industryTypeScale[1]);
		company.setCompanyTypeName(industryTypeScale[2]);
		company.setCompanyScaleName(industryTypeScale[3]);

		String website = LocateCompanyInfo.getWebsite(getDoc(), company
				.getUrl());
		company.setHomepage1(website);

		boolean have = false;
		String address = LocateCompanyInfo.getAddress(getDoc(), company
				.getUrl());
		have = setAddress(company, address);

		String zip = LocateCompanyInfo.getZip(getDoc(), company.getUrl());
		if (!"".equals(zip)) {
			setZip2CompanyHeaders(have, company, zip);
			have = true;
		}

		String fax = LocateCompanyInfo.getFax(getDoc(), company.getUrl());
		String tel = LocateCompanyInfo.getTel(getDoc(), company.getUrl());
		if (!"".equals(fax) || !"".equals(tel)) {
			setFax2CompanyHeaders(have, company, fax, tel);
			have = true;
		}

		String linkman = LocateCompanyInfo.getLinkman(getDoc(), company
				.getUrl());
		if (!"".equals(linkman)) {
			setLinkMan2CompanyHeaders(have, company, linkman);
		}

		String email = LocateCompanyInfo.getEmail(getDoc(), company.getUrl());
		if (!"".equals(email)) {
			setEmail2CompanyHeaders(have, company, email);
		}

		String description = LocateCompanyInfo.getDescription(getDoc(), company
				.getUrl());
		setCompanyIntroduction(company, description);

	}

	private static void setCompanyIntroduction(Company company,
			String description) {
		ComAppend ca = new ComAppend();
		ca.setLobType(ComAppend.LOB_TYPE_CLOB);
		ca.setContents(description);
		ca.setCompany(company);
		ca.setCompanyName(company.getCompanyName());
		ca.setCreateDate(new Date());
		ca.setUpdateDate(new Date());
		ca.setCreateUser(ClawerConstants.CREATE_USER);
		ca.setCreateUser(ClawerConstants.UPDATE_USER);

		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			ca.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			ca.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE
					.getCname());
		}

		List<ComAppend> cas = new ArrayList<ComAppend>();
		cas.add(ca);
		company.setComAppends(cas);
	}

	private static void setEmail2CompanyHeaders(boolean have, Company company,
			String email) {
		setCompanyHeaders(have, company);
		List<ComEmail> emails = new ArrayList<ComEmail>();
		ComEmail ce = new ComEmail();
		emails.add(ce);

		ce.setMailType(ComEmail.MAIL_TYPE_PRIVATE);
		ce.setEmail(email);
		ce.setCreateDate(new Date());
		ce.setUpdateDate(new Date());
		ce.setCreateUser(ClawerConstants.CREATE_USER);
		ce.setUpdateUser(ClawerConstants.CREATE_USER);

		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			ce.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			ce.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE
					.getCname());
		}

		company.getComContactHeaders().get(0).setComEmails(emails);
	}

	private static void setLinkMan2CompanyHeaders(boolean have,
			Company company, String linkman) {
		setCompanyHeaders(have, company);
		company.getComContactHeaders().get(0).setDefaultName(linkman);
	}

	private static void setFax2CompanyHeaders(boolean have, Company company,
			String fax, String tel) {
		setCompanyHeaders(have, company);
		List<ComContactInfo> ccis = new ArrayList<ComContactInfo>();
		if (!"".equals(fax)) {
			setFax(fax, ccis);
		}
		if (!"".equals(tel)) {
			setTel(tel, ccis);
		}
		company.getComContactHeaders().get(0).setComContactInfos(ccis);
	}

	private static void setTel(String tel, List<ComContactInfo> ccis) {
		String[] sa = tel.split(" ");
		for (String s : sa) {
			ComContactInfo cci = new ComContactTel();
			cci.setContractNo(s);
			cci.setCreateDate(new Date());
			cci.setUpdateDate(new Date());
			cci.setCreateUser(ClawerConstants.CREATE_USER);
			cci.setUpdateUser(ClawerConstants.CREATE_USER);

			if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
				cci.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
				cci.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE
						.getCname());
			}
			ccis.add(cci);
		}
	}

	private static void setFax(String fax, List<ComContactInfo> ccis) {
		String[] sa = fax.split(" ");
		for (String s : sa) {
			ComContactInfo cci = new ComContactFax();
			cci.setContractNo(s);
			cci.setCreateDate(new Date());
			cci.setUpdateDate(new Date());
			cci.setCreateUser(ClawerConstants.CREATE_USER);
			cci.setUpdateUser(ClawerConstants.CREATE_USER);

			if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
				cci.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
				cci.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE
						.getCname());
			}
			ccis.add(cci);
		}
	}

	private static void setZip2CompanyHeaders(boolean have, Company company,
			String zip) {
		setCompanyHeaders(have, company);
		company.getComContactHeaders().get(0).setPostcode1(zip);
	}

	private static void setCompanyHeaders(boolean have, Company company) {
		if (!have) {
			List<ComContactHeader> comAddrs = new ArrayList<ComContactHeader>();
			ComContactHeader ca = new ComContactHeader();
			comAddrs.add(ca);
			ca.setCompany(company);
			company.setComContactHeaders(comAddrs);
		}
	}

	private static boolean setAddress(Company company, String address) {
		if (StringUtils.isEmpty(address)) {
			return false;
		}

		boolean have = false;
		ComContactHeader ca = new ComContactHeader();

		Map<Long, Code> map = Address.getAddress(address);
		Code code = map.get(BaseCode.CODE_LEVEL_SECOND);
		if (code != null) {
			have = true;
			ca.setCountry(code);
			ca.setCountryName(code.getCname());
		}

		code = map.get(BaseCode.CODE_LEVEL_THIRD);
		if (code != null) {
			have = true;
			ca.setProvince(code);
			ca.setProvinceName(code.getCname());
		}

		code = map.get(BaseCode.CODE_LEVEL_FOURTH);
		if (code != null) {
			have = true;
			ca.setCity(code);
			ca.setCityName(code.getCname());
		}

		if (!have) {
			ca = null;
			return false;
		}

		List<ComContactHeader> comAddrs = new ArrayList<ComContactHeader>();
		comAddrs.add(ca);
		ca.setCompany(company);
		company.setComContactHeaders(comAddrs);
		return true;
	}

	private static void onDocumnetComplete() {
		browser.addNetworkListener(new NetworkAdapter() {
			public void onDocumentComplete(NetworkEvent e) {
				LOAD_TIMES++;
				if (LOAD_TIMES % 100 == 0) {
					System.gc();
				}
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
			System.out.println("waiting loading����[" + i * 0.5 + "]s");
		}
	}

	public static void main(String[] args) {
		List<Company> companies = new ArrayList<Company>();
		Company com = new Company();
		com.setCompanyName("tesst");
		com
				.setUrl("D:\\yesibc\\51job\\html\\51JOB\\search0907\\companydetail.html");
		companies.add(com);
		try {
			toDetailCompany(companies);
		} catch (ApplicationException e) {
			e.printStackTrace();
		}

		System.out.println("");
		// String ind =

	}
}
