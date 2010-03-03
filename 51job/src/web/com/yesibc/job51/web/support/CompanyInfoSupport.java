package com.yesibc.job51.web.support;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.support.Address;
import com.yesibc.job51.model.Code;
import com.yesibc.job51.model.ComAppend;
import com.yesibc.job51.model.ComContactHeader;
import com.yesibc.job51.model.ComContactInfo;
import com.yesibc.job51.model.ComEmail;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.model.sub.ComContactFax;
import com.yesibc.job51.model.sub.ComContactMobile;
import com.yesibc.job51.model.sub.ComContactTel;

public class CompanyInfoSupport {

	public static String getCompanyCode(String url) {
		int i = 34;
		int j = url.indexOf(",", i);
		return url.substring(i, j);
	}

	public static void setComContactInfoCommon(ComContactInfo company) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		company.setCreateDate(d);
		company.setUpdateDate(d);
		company.setCreateUser(ClawerConstants.CREATE_USER);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	public static void setComEmailCommon(ComEmail company) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		company.setCreateDate(d);
		company.setUpdateDate(d);
		company.setCreateUser(ClawerConstants.CREATE_USER);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	public static void setComContactHeaderCommon(ComContactHeader company) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		company.setCreateDate(d);
		company.setUpdateDate(d);
		company.setCreateUser(ClawerConstants.CREATE_USER);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	public static void setCompanyCommon(Company company) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		company.setCreateDate(d);
		company.setUpdateDate(d);
		company.setCreateUser(ClawerConstants.CREATE_USER);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	public static void setComAppendCommon(ComAppend company) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		company.setCreateDate(d);
		company.setUpdateDate(d);
		company.setCreateUser(ClawerConstants.CREATE_USER);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	public static boolean setAddress(Company company, String address) {
		if (ClawerConstants.TEST_DAO) {
			return false;
		}

		ComContactHeader ca = new ComContactHeader();
		List<ComContactHeader> comAddrs = new ArrayList<ComContactHeader>();
		comAddrs.add(ca);
		ca.setCompany(company);
		ca.setCompanyName(company.getCompanyName());
		ca.setAddress1(address);
		ca.setCountry(ClawerConstants.ADDRESS_CHINA);
		ca.setCountryName(ClawerConstants.ADDRESS_CHINA.getCname());
		CompanyInfoSupport.setComContactHeaderCommon(ca);
		company.setComContactHeaders(comAddrs);

		boolean isCompanyName = false;
		if (StringUtils.isEmpty(address)) {
			address = company.getCompanyName();
			isCompanyName = true;
		}
		if (StringUtils.isEmpty(address)) {
			return false;
		}

		Map<Long, Code> map = Address.getAddress(address);
		if ((map == null || map.isEmpty()) && !isCompanyName) {
			map = Address.getAddress(company.getCompanyName());
		}
		if (map == null || map.isEmpty()) {
			//ca = null;
			return true;
		}

		Code code = map.get(BaseCode.CODE_LEVEL_SECOND);
		if (code != null) {
			ca.setCountry(code);
			ca.setCountryName(code.getCname());
		}

		code = map.get(BaseCode.CODE_LEVEL_THIRD);
		if (code != null) {
			ca.setProvince(code);
			ca.setProvinceName(code.getCname());
		}

		code = map.get(BaseCode.CODE_LEVEL_FOURTH);
		if (code != null) {
			ca.setCity(code);
			ca.setCityName(code.getCname());
		}

		return true;
	}

	public static void setZip2CompanyHeaders(boolean have, Company company, String zip) {
		setCompanyHeaders(have, company);
		company.getComContactHeaders().get(0).setPostcode1(zip);
	}

	public static void setCompanyHeaders(boolean have, Company company) {
		if (!have) {
			List<ComContactHeader> comAddrs = new ArrayList<ComContactHeader>();
			ComContactHeader ca = new ComContactHeader();
			CompanyInfoSupport.setComContactHeaderCommon(ca);
			comAddrs.add(ca);
			ca.setCompany(company);
			ca.setCompanyName(company.getCompanyName());
			company.setComContactHeaders(comAddrs);
		}
	}

	public static void setFax2CompanyHeaders(boolean have, Company company, String fax, String tel, String mobile) {
		setCompanyHeaders(have, company);
		List<ComContactInfo> ccis = new ArrayList<ComContactInfo>();
		if (!"".equals(fax)) {
			setFax(fax, ccis);
		}
		if (!"".equals(tel)) {
			setTel(tel, ccis);
		}
		if (!"".equals(tel)) {
			setMobile(mobile, ccis);
		}
		company.getComContactHeaders().get(0).setComContactInfos(ccis);
	}

	private static void setTel(String tel, List<ComContactInfo> ccis) {
		String[] sa = tel.split(" ");
		for (String s : sa) {
			ComContactInfo cci = new ComContactTel();
			cci.setContractNo(s);
			setComContactInfoCommon(cci);
			ccis.add(cci);
		}
	}

	private static void setMobile(String mobile, List<ComContactInfo> ccis) {
		String[] sa = mobile.split(" ");
		for (String s : sa) {
			ComContactInfo cci = new ComContactMobile();
			cci.setContractNo(s);
			setComContactInfoCommon(cci);
			ccis.add(cci);
		}
	}

	private static void setFax(String fax, List<ComContactInfo> ccis) {
		String[] sa = fax.split(" ");
		for (String s : sa) {
			ComContactInfo cci = new ComContactFax();
			cci.setContractNo(s);
			setComContactInfoCommon(cci);
			ccis.add(cci);
		}
	}

	public static void setLinkMan2CompanyHeaders(boolean have, Company company, String linkman) {
		setCompanyHeaders(have, company);
		company.getComContactHeaders().get(0).setDefaultName(linkman);
	}

	public static void setEmail2CompanyHeaders(boolean have, Company company, String email) {
		setCompanyHeaders(have, company);
		List<ComEmail> emails = new ArrayList<ComEmail>();
		ComEmail ce = new ComEmail();
		emails.add(ce);

		ce.setMailType(ComEmail.MAIL_TYPE_PRIVATE);
		ce.setEmail(email);

		setComEmailCommon(ce);

		company.getComContactHeaders().get(0).setComEmails(emails);
	}

	public static void setCompanyIntroduction(Company company, String description) {
		ComAppend ca = new ComAppend();
		ca.setLobType(ComAppend.LOB_TYPE_CLOB);
		ca.setContents(description);
		ca.setCompany(company);
		ca.setCompanyName(company.getCompanyName());

		setComAppendCommon(ca);

		List<ComAppend> cas = new ArrayList<ComAppend>();
		cas.add(ca);
		company.setComAppends(cas);
	}

}
