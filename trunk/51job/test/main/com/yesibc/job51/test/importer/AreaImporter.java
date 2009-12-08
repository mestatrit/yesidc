package com.yesibc.job51.test.importer;

import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

import com.yesibc.core.chinese.CnToSpell;
import com.yesibc.core.chinese.Pinyin;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.JXLlUtil;
import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.dao.BaseCodeDao;
import com.yesibc.job51.model.Code;

public class AreaImporter {

	public static String str = "0100,����,0200,�Ϻ�,0300,�㶫ʡ,0302,����,0303,����,0304,��ͷ,0305,�麣,0306,��ɽ,0307,��ɽ,0308,��ݸ,0314,�ع�,0315,����,0317,տ��,0318,����,0319,��Զ,0320,����,0321,��Դ,0322,����,0323,ï��,0324,��β,0325,˳��,0326,÷��,0327,��ƽ,0328,����,0329,�Ƹ�,0400,����,0500,���,0600,����,0700,����ʡ,0702,�Ͼ�,0703,����,0704,����,0705,����,0706,��ɽ,0707,����,0708,����,0709,��ͨ,0710,��,0711,����,0712,���Ƹ�,0713,�γ�,0714,�żҸ�,0715,����,0716,̫��,0717,�⽭,0718,̩��,0719,����,0720,��Ǩ,0721,����,0722,����,0723,̩��,0724,����,0800,�㽭ʡ,0802,����,0803,����,0804,����,0805,����,0806,��,0807,����,0808,̨��,0809,����,0810,��ˮ,0811,��ɽ,0812,����,0813,��ɽ,0814,����,0815,��Ϫ,0816,����,0900,�Ĵ�ʡ,0902,�ɶ�,0903,����,0904,��ɽ,0905,����,0906,����,0907,�˱�,0908,�Թ�,0909,�ڽ�,0910,��֦��,0911,�ϳ�,0912,üɽ,1000,����ʡ,1002,����,1003,����,1100,����ʡ,1102,����,1103,����,1104,Ȫ��,1105,����,1106,����,1107,����,1108,��ƽ,1109,����,1110,����,1200,ɽ��ʡ,1202,����,1203,�ൺ,1204,��̨,1205,Ϋ��,1206,����,1207,�Ͳ�,1208,����,1209,����,1210,��Ӫ,1211,̩��,1212,����,1213,����,1214,����,1215,����,1216,��ׯ,1217,�ĳ�,1218,����,1300,����ʡ,1302,�ϲ�,1303,�Ž�,1400,����,1402,����,1403,����,1404,����,1405,����,1406,����,1500,����ʡ,1502,�Ϸ�,1503,�ߺ�,1504,����,1505,��ɽ,1506,����,1507,����,1508,ͭ��,1509,����,1510,��ɽ,1511,����,1512,����,1513,����,1514,����,1515,����,1516,����,1600,�ӱ�ʡ,1602,ʯ��ׯ,1603,�ȷ�,1604,����,1605,��ɽ,1606,�ػʵ�,1607,����,1608,����,1609,�żҿ�,1610,�е�,1700,����ʡ,1702,֣��,1703,����,1704,����,1705,����,1706,����,1707,����,1708,�ܿ�,1709,����,1800,����ʡ,1802,�人,1803,�˲�,1804,��ʯ,1805,�差,1806,ʮ��,1807,����,1808,����,1809,Т��,1810,����,1811,�Ƹ�,1812,����,1900,����ʡ,1902,��ɳ,1903,����,1904,��̶,1905,����,1906,����,1907,����,1908,����,1909,����,1910,����,1911,����,1912,¦��,1913,����,1914,�żҽ�,2000,����ʡ,2002,����,2003,����,2004,����,2005,ͭ��,2006,�Ӱ�,2007,μ��,2008,����,2009,����,2010,����,2011,����,2012,����,2100,ɽ��ʡ,2102,̫ԭ,2103,�˳�,2104,��ͬ,2105,�ٷ�,2200,������ʡ,2202,������,2203,����,2204,�绯,2205,����,2206,�������,2207,ĵ����,2208,��ľ˹,2300,����ʡ,2302,����,2303,����,2304,��ɽ,2305,Ӫ��,2306,��˳,2307,����,2308,����,2309,��«��,2310,��Ϫ,2311,����,2312,����,2400,����ʡ,2402,����,2403,����,2404,��Դ,2405,ͨ��,2406,��ƽ,2407,��ԭ,2408,�Ӽ�,2500,����ʡ,2502,����,2503,����,2504,��Ϫ,2505,����,2506,����,2507,����,2508,��Զ,2509,����,2510,�����,2600,����ʡ,2602,����,2603,����,2700,����ʡ,2702,����,2703,���,2800,���ɹ�,2802,���ͺ���,2803,���,2804,��ͷ,2805,������,2806,��Ȫ,2900,����,2902,����,3000,����,3002,����,3003,�տ���,3100,�½�,3102,��³ľ��,3103,��������,3104,��ʲ����,3105,����,3200,�ຣʡ,3202,����,3300,���,3400,����,3500,̨��";
	private static BaseCodeDao baseCodeDao = (BaseCodeDao) SpringContext
			.getBean("baseCodeDao");
	
	public static void main(String[] args) {
		updateProvinces();
	}


	private static void updateProvinces() {
		Date d = new Date();
		
		for(Map.Entry<String, Code> entry : BaseCode.PROVINCES.entrySet()){   
			Code value = entry.getValue();   
			value.setEname(Pinyin.getPinyin(value.getCname()));
			
			Code n = new Code();
			try {
				BeanUtils.copyProperties(n, value);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
			n.setChildren(null);
			n.setParent(value.getParent());
			n.setUpdateDate(d);
			
			baseCodeDao.update(n);
		}  
		
	}


	public static void importDistricts() {
		JXLlUtil jxl = new JXLlUtil("D:/yesibc/51job/documents/district.xls");
		int x = jxl.getTotalX();
		int y = jxl.getTotalY();
		System.out.println("x="+x+",y="+y);
		
		String pcode = null;
		Code code = null;
		Long sort = null;
		Date d = new Date();
		String temp= null;
		for(int i=1;i<x;i++){
			pcode = (jxl.getCell(i, 2).getContents()).trim();
			//System.out.println(i+"pcode="+pcode);
			code = BaseCode.CITIES.get(pcode);
			if(code==null){
				System.out.println("When x="+i+",null!");
				continue;
			}
			code.setEname(Pinyin.getPinyin(code.getCname()));
			//baseCodeDao.update(code);
			
			Code newCode = new Code();
			newCode.setParent(code);
			newCode.setCname(jxl.getCell(i, 1).getContents().trim());
			newCode.setCode(jxl.getCell(i, 0).getContents().trim());
			newCode.setEname(Pinyin.getPinyin(newCode.getCname()));
			newCode.setCodeLevel(new Long(5));
			newCode.setCreateDate(d);
			newCode.setUpdateDate(d);
			newCode.setCreateUser(ClawerConstants.CREATE_USER);
			newCode.setUpdateUser(ClawerConstants.UPDATE_USER);
			
			if(!pcode.equals(temp)){
				temp = pcode; 
				sort = new Long(1);
			}else{
				sort++;
			}
			
			newCode.setSortList(sort);
			baseCodeDao.save(newCode);
			
		}
	}
	
	public static void importCities() {
		JXLlUtil jxl = new JXLlUtil("D:/yesibc/51job/documents/city.xls");
		int x = jxl.getTotalX();
		int y = jxl.getTotalY();
		System.out.println("x="+x+",y="+y);
		
		String pcode = null;
		Code code = null;
		Long sort = null;
		Date d = new Date();
		String temp= null;
		for(int i=1;i<x;i++){
			pcode = (jxl.getCell(i, 2).getContents()).trim();
			System.out.println(i+"pcode="+pcode);
			code = BaseCode.PROVINCES.get(pcode);
			if(code==null){
				System.out.println("When x="+i+",null!");
				continue;
			}
			code.setEname(Pinyin.getPinyin(code.getCname()));
			//baseCodeDao.update(code);
			
			Code newCode = new Code();
			newCode.setParent(code);
			newCode.setCname(jxl.getCell(i, 1).getContents().trim());
			newCode.setCode(jxl.getCell(i, 0).getContents().trim());
			newCode.setEname(Pinyin.getPinyin(newCode.getCname()));
			newCode.setCodeLevel(new Long(4));
			newCode.setCreateDate(d);
			newCode.setUpdateDate(d);
			newCode.setCreateUser(ClawerConstants.CREATE_USER);
			newCode.setUpdateUser(ClawerConstants.UPDATE_USER);
			
			if(!pcode.equals(temp)){
				temp = pcode; 
				sort = new Long(1);
			}else{
				sort++;
			}
			
			newCode.setSortList(sort);
			baseCodeDao.save(newCode);
			
		}
	}
	
	/**
	 * @param args
	 */
	public static void main1(String[] args) {
		Date d = new Date();
		Code top = new Code();
		top.setCname("��ַ");
		top.setCode("address");
		top.setCodeLevel(new Long("0"));
		top.setCreateDate(d);
		top.setUpdateDate(d);
		top.setCreateUser(ClawerConstants.CREATE_USER);
		top.setUpdateUser(ClawerConstants.UPDATE_USER);
		top.setEname("address");
		top.setSortList(new Long("1"));

		//baseCodeDao.save(top);
		Code country = new Code();
		country.setCname("�й�");
		country.setCode("China");
		country.setCodeLevel(new Long("1"));
		country.setCreateDate(d);
		country.setUpdateDate(d);
		country.setCreateUser(ClawerConstants.CREATE_USER);
		country.setUpdateUser(ClawerConstants.UPDATE_USER);
		country.setEname("China");
		country.setSortList(new Long("1"));
		//baseCodeDao.save(country);
		
		Code out = new Code();
		out.setCname("�й�");
		out.setCode("China");
		out.setCodeLevel(new Long("1"));
		out.setCreateDate(d);
		out.setUpdateDate(d);
		out.setCreateUser(ClawerConstants.CREATE_USER);
		out.setUpdateUser(ClawerConstants.UPDATE_USER);
		out.setEname("China");
		out.setSortList(new Long("1"));
		//baseCodeDao.save(out);
		//,3600,����
		
		String[] s = str.split(",");
		int province = 0;
		int city = 0;
		Code parent = null;
		for (int i = 0; i < s.length; i++) {
			Code c = new Code();
			c.setCname(s[i + 1]);
			c.setCode(s[i]);
			c.setCreateDate(new Date());
			c.setUpdateDate(new Date());
			c.setCreateUser(ClawerConstants.CREATE_USER);
			c.setUpdateUser(ClawerConstants.UPDATE_USER);
			c.setEname(CnToSpell.cnToSpell(s[i + 1]));

			if (s[i].indexOf("00") > 1) {
				city = 0;
				c.setCodeLevel(new Long(1));
				c.setSortList(new Long(province++));
				c.setParent(top);
				parent = c;
			} else {
				c.setParent(parent);
				c.setCodeLevel(new Long(2));
				c.setSortList(new Long(city++));
			}
			//baseCodeDao.save(c);
			if(i == (s.length-2)){
				break;
			}
			i++;
		}
	}

}
