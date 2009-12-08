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

	public static String str = "0100,北京,0200,上海,0300,广东省,0302,广州,0303,惠州,0304,汕头,0305,珠海,0306,佛山,0307,中山,0308,东莞,0314,韶关,0315,江门,0317,湛江,0318,肇庆,0319,清远,0320,潮州,0321,河源,0322,揭阳,0323,茂名,0324,汕尾,0325,顺德,0326,梅州,0327,开平,0328,阳江,0329,云浮,0400,深圳,0500,天津,0600,重庆,0700,江苏省,0702,南京,0703,苏州,0704,无锡,0705,常州,0706,昆山,0707,常熟,0708,扬州,0709,南通,0710,镇江,0711,徐州,0712,连云港,0713,盐城,0714,张家港,0715,江阴,0716,太仓,0717,吴江,0718,泰州,0719,淮安,0720,宿迁,0721,丹阳,0722,溧阳,0723,泰兴,0724,宜兴,0800,浙江省,0802,杭州,0803,宁波,0804,温州,0805,绍兴,0806,金华,0807,嘉兴,0808,台州,0809,湖州,0810,丽水,0811,舟山,0812,衢州,0813,萧山,0814,义乌,0815,慈溪,0816,海宁,0900,四川省,0902,成都,0903,绵阳,0904,乐山,0905,泸州,0906,德阳,0907,宜宾,0908,自贡,0909,内江,0910,攀枝花,0911,南充,0912,眉山,1000,海南省,1002,海口,1003,三亚,1100,福建省,1102,福州,1103,厦门,1104,泉州,1105,漳州,1106,莆田,1107,三明,1108,南平,1109,宁德,1110,龙岩,1200,山东省,1202,济南,1203,青岛,1204,烟台,1205,潍坊,1206,威海,1207,淄博,1208,临沂,1209,济宁,1210,东营,1211,泰安,1212,日照,1213,德州,1214,菏泽,1215,滨州,1216,枣庄,1217,聊城,1218,莱芜,1300,江西省,1302,南昌,1303,九江,1400,广西,1402,南宁,1403,桂林,1404,柳州,1405,北海,1406,玉林,1500,安徽省,1502,合肥,1503,芜湖,1504,安庆,1505,马鞍山,1506,蚌埠,1507,阜阳,1508,铜陵,1509,滁州,1510,黄山,1511,淮南,1512,六安,1513,巢湖,1514,宣城,1515,池州,1516,宿州,1600,河北省,1602,石家庄,1603,廊坊,1604,保定,1605,唐山,1606,秦皇岛,1607,邯郸,1608,沧州,1609,张家口,1610,承德,1700,河南省,1702,郑州,1703,洛阳,1704,开封,1705,焦作,1706,南阳,1707,新乡,1708,周口,1709,安阳,1800,湖北省,1802,武汉,1803,宜昌,1804,黄石,1805,襄樊,1806,十堰,1807,荆州,1808,荆门,1809,孝感,1810,鄂州,1811,黄冈,1812,随州,1900,湖南省,1902,长沙,1903,株洲,1904,湘潭,1905,衡阳,1906,岳阳,1907,常德,1908,益阳,1909,郴州,1910,邵阳,1911,怀化,1912,娄底,1913,永州,1914,张家界,2000,陕西省,2002,西安,2003,咸阳,2004,宝鸡,2005,铜川,2006,延安,2007,渭南,2008,榆林,2009,汉中,2010,安康,2011,商洛,2012,杨凌,2100,山西省,2102,太原,2103,运城,2104,大同,2105,临汾,2200,黑龙江省,2202,哈尔滨,2203,伊春,2204,绥化,2205,大庆,2206,齐齐哈尔,2207,牡丹江,2208,佳木斯,2300,辽宁省,2302,沈阳,2303,大连,2304,鞍山,2305,营口,2306,抚顺,2307,锦州,2308,丹东,2309,葫芦岛,2310,本溪,2311,辽阳,2312,铁岭,2400,吉林省,2402,长春,2403,吉林,2404,辽源,2405,通化,2406,四平,2407,松原,2408,延吉,2500,云南省,2502,昆明,2503,曲靖,2504,玉溪,2505,大理,2506,丽江,2507,蒙自,2508,开远,2509,个旧,2510,红河州,2600,贵州省,2602,贵阳,2603,遵义,2700,甘肃省,2702,兰州,2703,金昌,2800,内蒙古,2802,呼和浩特,2803,赤峰,2804,包头,2805,嘉峪关,2806,酒泉,2900,宁夏,2902,银川,3000,西藏,3002,拉萨,3003,日喀则,3100,新疆,3102,乌鲁木齐,3103,克拉玛依,3104,喀什地区,3105,伊犁,3200,青海省,3202,西宁,3300,香港,3400,澳门,3500,台湾";
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
		top.setCname("地址");
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
		country.setCname("中国");
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
		out.setCname("中国");
		out.setCode("China");
		out.setCodeLevel(new Long("1"));
		out.setCreateDate(d);
		out.setUpdateDate(d);
		out.setCreateUser(ClawerConstants.CREATE_USER);
		out.setUpdateUser(ClawerConstants.UPDATE_USER);
		out.setEname("China");
		out.setSortList(new Long("1"));
		//baseCodeDao.save(out);
		//,3600,国外
		
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
