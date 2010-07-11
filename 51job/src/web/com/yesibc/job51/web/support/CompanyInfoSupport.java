package com.yesibc.job51.web.support;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;
import com.yesibc.core.utils.CollectionUtils;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.common.ClawerUtils;
import com.yesibc.job51.common.support.Address;
import com.yesibc.job51.model.Code;
import com.yesibc.job51.model.ComAppend;
import com.yesibc.job51.model.ComContactHeader;
import com.yesibc.job51.model.ComContactInfo;
import com.yesibc.job51.model.ComEmail;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.web.search.ProcessContext;

public class CompanyInfoSupport {

	private static Log log = LogFactory.getLog(CompanyInfoSupport.class);
	private final static String ADDR_TAG = " #Address# ";

	public static boolean jobPageValidate(ProcessContext processContext) throws ApplicationException {
		String html = processContext.getBrowser().getDocument().getBody().getOuterHTML();
		if (html != null && html.indexOf(ClawerConstants.JOB_NO_FOUND) > -1) {
			log.info(processContext.getLogTitle() + ClawerConstants.JOB_NO_FOUND);
			return false;
		}

		return true;
	}

	public static void parseToCompany(Company company, List<String> emails, ProcessContext processContext)
			throws ApplicationException {

		setCompanyCommon(company, false);

		String[] industryTypeScale = LocateCompanyInfo.getComIndustryTypeScale(processContext);
		company.setCompanyIndustry1Name(industryTypeScale[0]);
		company.setCompanyIndustry2Name(industryTypeScale[1]);
		company.setCompanyTypeName(industryTypeScale[2]);
		company.setCompanyScaleName(industryTypeScale[3]);

		String website = LocateCompanyInfo.getWebsite(processContext);
		company.setHomepage1(website);

		String address = LocateCompanyInfo.getAddress(processContext);
		int position = CompanyInfoSupport.setAddress(processContext, company, address);

		String zip = LocateCompanyInfo.getZip(processContext);
		if (!"".equals(zip)) {
			CompanyInfoSupport.setZip2CompanyHeaders(position, company, zip);
		}

		String fax = LocateCompanyInfo.getFax(processContext);
		String tel = LocateCompanyInfo.getTel(processContext);
		String mobile = LocateCompanyInfo.getMobile(processContext);
		if (!"".equals(fax) || !"".equals(tel) || !"".equals(mobile)) {
			setFax2CompanyHeaders(processContext, position, company, fax, tel, mobile);
		}

		String linkman = LocateCompanyInfo.getLinkman(processContext);
		setLinkMan2CompanyHeaders(position, company, linkman);

		if (!CollectionUtils.isEmpty(emails)) {
			setEmail2CompanyHeaders(position, company, emails);
		}

		String description = LocateCompanyInfo.getDescription(processContext);
		if (!"".equals(description)) {
			CompanyInfoSupport.setCompanyIntroduction(company, description);
		}

	}

	public static String getCompanyCode(String url) {
		int i = 34;
		int j = url.indexOf(",", i);
		return url.substring(i, j);
	}

	public static void setComContactInfoCommon(ComContactInfo company, boolean create) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		if (create) {
			company.setCreateDate(d);
			company.setCreateUser(ClawerConstants.CREATE_USER);
		}
		company.setUpdateDate(d);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	public static void setComEmailCommon(ComEmail company, boolean create) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		if (create) {
			company.setCreateDate(d);
			company.setCreateUser(ClawerConstants.CREATE_USER);
		}
		company.setUpdateDate(d);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	public static void setComContactHeaderCommon(ComContactHeader company, boolean create) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		if (create) {
			company.setCreateDate(d);
			company.setCreateUser(ClawerConstants.CREATE_USER);
		}
		company.setUpdateDate(d);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	public static void setCompanyCommon(Company company, boolean create) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			company.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			company.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		if (create) {
			company.setCreateDate(d);
			company.setCreateUser(ClawerConstants.CREATE_USER);
		}
		company.setUpdateDate(d);
		company.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	public static void setComAppendCommon(ComAppend comAppend, boolean create) {
		if (ClawerConstants.FROM_WHERE_51JOB_CODE != null) {
			comAppend.setFromWhere(ClawerConstants.FROM_WHERE_51JOB_CODE);
			comAppend.setFromWhereName(ClawerConstants.FROM_WHERE_51JOB_CODE.getCname());
		}

		Date d = new Date();
		if (create) {
			comAppend.setCreateDate(d);
			comAppend.setCreateUser(ClawerConstants.CREATE_USER);
		}
		comAppend.setUpdateDate(d);
		comAppend.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

	/**
	 * 
	 * @param processContext
	 * @param company
	 * @param address
	 * @return
	 */
	public static int setAddress(ProcessContext processContext, Company company, String address) {
		boolean isCompanyName = false;
		boolean noAddress = false;
		if (StringUtils.isEmpty(address)) {
			address = company.getCompanyName();
			isCompanyName = true;
		}
		if (StringUtils.isEmpty(address)) {
			noAddress = true;
		}

		List<ComContactHeader> comCHs = company.getComContactHeaders();
		if (comCHs == null) {
			comCHs = new ArrayList<ComContactHeader>();
			company.setComContactHeaders(comCHs);
		}

		if (noAddress) {
			set2ComCH(company, address, comCHs);
			log.info(processContext.getLogTitle() + ADDR_TAG + "NoAddress!");
		} else {
			if (ClawerConstants.TEST_DAO) {
				set2ComCH(company, address, comCHs);
				log.info(processContext.getLogTitle() + ADDR_TAG + "No DAO!");
			} else {
				Map<Long, Code> map = null;
				map = Address.getAddress(address);

				if (map == null || map.isEmpty()) {
					if (!isCompanyName) {
						address = company.getCompanyName();
						map = Address.getAddress(address);
					}

					if (map == null || map.isEmpty()) {
						set2ComCH(company, address, comCHs);
						log.info(processContext.getLogTitle() + ADDR_TAG + address + " is no mapped!");
					} else {
						return setAddr2CH(processContext, company, address, map, comCHs);
					}
				} else {
					if (isCompanyName) {
						log.info(processContext.getLogTitle() + ADDR_TAG + address + " is from company Name.");
					}
					return setAddr2CH(processContext, company, address, map, comCHs);
				}
			}
		}

		return 0;

	}

	private static int setAddr2CH(ProcessContext processContext, Company company, String address, Map<Long, Code> map,
			List<ComContactHeader> comCHs) {
		ComContactHeader ca = null;
		boolean old = false;
		int i = 0;
		String temp = "";
		if (company.getComContactHeaders() != null && !company.getComContactHeaders().isEmpty()) {
			for (ComContactHeader cch : company.getComContactHeaders()) {
				if (cch.getCity() != null) { //
					if (cch.getCity().getId().equals(map.get(BaseCode.CODE_LEVEL_FOURTH).getId())) {
						old = true;
						ca = cch;
						break;
					}
				} else { //
					if (cch.getProvince() != null
							&& (cch.getProvince().getId()).equals(map.get(BaseCode.CODE_LEVEL_THIRD).getId())) {
						old = true;
						ca = cch;
						break;
					}
				}
				i++;
			}
		}

		if (!old) {
			ca = new ComContactHeader();
			i = comCHs.size();
		}

		comCHs.add(ca);
		ca.setCompany(company);
		ca.setCompanyName(company.getCompanyName());
		ca.setAddress1(address);
		ca.setCountry(ClawerConstants.ADDRESS_CHINA);
		ca.setCountryName(ClawerConstants.ADDRESS_CHINA.getCname());
		CompanyInfoSupport.setComContactHeaderCommon(ca, old);

		Code code = map.get(BaseCode.CODE_LEVEL_SECOND);
		if (code != null) {
			ca.setCountry(code);
			ca.setCountryName(code.getCname());
			temp = temp + code.getCname();
		}

		code = map.get(BaseCode.CODE_LEVEL_THIRD);
		if (code != null) {
			ca.setProvince(code);
			ca.setProvinceName(code.getCname());
			temp = temp + "," + code.getCname();
			if (ca.getCountry() == null) {
				ca.setCountry(code.getParent());
				ca.setCountryName(code.getParent().getCname());
			}
		}

		code = map.get(BaseCode.CODE_LEVEL_FOURTH);
		if (code != null) {
			ca.setCity(code);
			ca.setCityName(code.getCname());
			temp = temp + "," + code.getCname();
			if (ca.getProvince() == null) {
				ca.setProvince(code.getParent());
				ca.setProvinceName(code.getParent().getCname());
			}
			if (ca.getCountry() == null) {
				ca.setCountry(code.getParent().getParent());
				ca.setCountryName(code.getParent().getParent().getCname());
			}
		}

		log.info(processContext.getLogTitle() + ADDR_TAG + address + " is mapped[" + temp
				+ "]!Current HeaderInfo size:" + i);
		return i;
	}

	private static void set2ComCH(Company company, String address, List<ComContactHeader> comCHs) {
		ComContactHeader ca = new ComContactHeader();
		comCHs.add(ca);
		ca.setCompany(company);
		ca.setCompanyName(company.getCompanyName());
		ca.setAddress1(address);
		ca.setCountry(ClawerConstants.ADDRESS_CHINA);
		ca.setCountryName(ClawerConstants.ADDRESS_CHINA.getCname());
		CompanyInfoSupport.setComContactHeaderCommon(ca, false);
	}

	public static void setZip2CompanyHeaders(int position, Company company, String zip) {
		company.getComContactHeaders().get(position).setPostcode1(zip);
	}

	public static void setFax2CompanyHeaders(ProcessContext processContext, int position, Company company, String fax,
			String tel, String mobile) {
		List<ComContactInfo> ccis = company.getComContactHeaders().get(position).getComContactInfos();
		if (ccis == null) {
			ccis = new ArrayList<ComContactInfo>();
			company.getComContactHeaders().get(position).setComContactInfos(ccis);
		}

		String reciever = StringUtils.trim2Empty(company.getComContactHeaders().get(position).getDefaultName());
		if ("".equals(reciever)) {
			reciever = company.getCompanyName();
		}

		if (!"".equals(fax)) {
			setContactInfo(processContext, fax, reciever, ComContactInfo.CONTRACT_TAG_FAX, ccis);
		}
		if (!"".equals(tel)) {
			setContactInfo(processContext, tel, reciever, ComContactInfo.CONTRACT_TAG_TEL, ccis);
		}
		if (!"".equals(mobile)) {
			setContactInfo(processContext, mobile, reciever, ComContactInfo.CONTRACT_TAG_MOBILE, ccis);
		}
	}

	private static void setContactInfo(ProcessContext processContext, String fax, String reciever, String type,
			List<ComContactInfo> ccis) {
		String[] sa = ClawerUtils.splitByTag(fax, ClawerConstants.TEL_SPLITS);

		for (String s : sa) {
			boolean have = false;

			for (ComContactInfo ccInfo : ccis) {
				if (s.equals(StringUtils.trim2Empty(ccInfo.getContractNo()))) {
					have = true;
					break;
				}
			}

			if (have) {
				log.info(processContext.getLogTitle() + type + " :" + s + " is already existed.");
			} else {
				ComContactInfo cci = ComContactInfo.getConcactInfoByType(type);
				cci.setContractNo(s);
				cci.setReciever(reciever);
				setComContactInfoCommon(cci, true);
				ccis.add(cci);
				log.info(processContext.getLogTitle() + type + " :" + s + " is added.");
			}
		}
	}

	public static void setLinkMan2CompanyHeaders(int have, Company company, String linkman) {
		if (!"".equals(linkman)) {
			company.getComContactHeaders().get(have).setDefaultName(linkman);
		} else {
			company.getComContactHeaders().get(have).setDefaultName(company.getCompanyName());
		}
	}

	public static void setEmail2CompanyHeaders(int position, Company company, List<String> emails) {
		List<ComEmail> oldEmails = company.getComContactHeaders().get(position).getComEmails();
		if (oldEmails == null) {
			oldEmails = new ArrayList<ComEmail>();
			company.getComContactHeaders().get(position).setComEmails(oldEmails);
		}
		
		String reciever = StringUtils.trim2Empty(company.getComContactHeaders().get(position).getDefaultName());
		if ("".equals(reciever)) {
			reciever = company.getCompanyName();
		}

		for (String email : emails) {
			ComEmail ce = new ComEmail();
			oldEmails.add(ce);
			ce.setMailType(ComEmail.MAIL_TYPE_COMPANY_SHARE);
			ce.setEmail(email);
			ce.setReciever(reciever);
			setComEmailCommon(ce, true);
		}
	}

	public static void setCompanyIntroduction(Company company, String description) {
		List<ComAppend> cas = company.getComAppends();
		ComAppend ca = null;
		boolean old = false;
		if (cas == null) {
			cas = new ArrayList<ComAppend>();
			company.setComAppends(cas);
			ca = new ComAppend();
		} else {
			for (ComAppend comAppend : cas) {
				if (comAppend.getFromWhereName() != null
						&& ClawerConstants.FROM_WHERE_51JOB.equals(comAppend.getFromWhere().getCode())) {
					ca = comAppend;
					old = true;
				}
			}
			if (!old) {
				ca = new ComAppend();
			}
		}

		ca.setLobType(ComAppend.LOB_TYPE_CLOB);
		ca.setContents(description);
		ca.setCompany(company);
		ca.setCompanyName(company.getCompanyName());

		setComAppendCommon(ca, old);

		cas.add(ca);
	}
}
