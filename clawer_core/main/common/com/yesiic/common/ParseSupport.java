package com.yesiic.common;

import com.yesiic.dao.BaseCodeDao;
import com.yesiic.dao.impl.BaseCodeDaoImpl;
import com.yesiic.person.model.Person;

public class ParseSupport {

	static BaseCodeDao baseCode = new BaseCodeDaoImpl();

	public static void setJobIntentAddr(Person p, String[] addrs) {
		int i = addrs.length;
		if (i == 5) {
			p.setJobIntentAddr1(baseCode.queryCityByName(addrs[0]));
			p.setJobIntentAddr2(baseCode.queryCityByName(addrs[1]));
			p.setJobIntentAddr3(baseCode.queryCityByName(addrs[2]));
			p.setJobIntentAddr4(baseCode.queryCityByName(addrs[3]));
			p.setJobIntentAddr5(baseCode.queryCityByName(addrs[4]));
		} else if (i == 4) {
			p.setJobIntentAddr1(baseCode.queryCityByName(addrs[0]));
			p.setJobIntentAddr2(baseCode.queryCityByName(addrs[1]));
			p.setJobIntentAddr3(baseCode.queryCityByName(addrs[2]));
			p.setJobIntentAddr4(baseCode.queryCityByName(addrs[3]));
		} else if (i == 3) {
			p.setJobIntentAddr1(baseCode.queryCityByName(addrs[0]));
			p.setJobIntentAddr2(baseCode.queryCityByName(addrs[1]));
			p.setJobIntentAddr3(baseCode.queryCityByName(addrs[2]));
		} else if (i == 2) {
			p.setJobIntentAddr1(baseCode.queryCityByName(addrs[0]));
			p.setJobIntentAddr2(baseCode.queryCityByName(addrs[1]));
		} else if (i == 1) {
			p.setJobIntentAddr1(baseCode.queryCityByName(addrs[0]));
		}
	}

	public static void setJobIntentFun(Person p, String[] funs) {
		int i = funs.length;
		if (i == 5) {
			p.setJobIntentFun1(baseCode.queryByName(funs[0], BaseCode.FUNCTION, 0));
			p.setJobIntentFun2(baseCode.queryByName(funs[1], BaseCode.FUNCTION, 0));
			p.setJobIntentFun3(baseCode.queryByName(funs[2], BaseCode.FUNCTION, 0));
			p.setJobIntentFun4(baseCode.queryByName(funs[3], BaseCode.FUNCTION, 0));
			p.setJobIntentFun5(baseCode.queryByName(funs[4], BaseCode.FUNCTION, 0));
		} else if (i == 4) {
			p.setJobIntentFun1(baseCode.queryByName(funs[0], BaseCode.FUNCTION, 0));
			p.setJobIntentFun2(baseCode.queryByName(funs[1], BaseCode.FUNCTION, 0));
			p.setJobIntentFun3(baseCode.queryByName(funs[2], BaseCode.FUNCTION, 0));
			p.setJobIntentFun4(baseCode.queryByName(funs[3], BaseCode.FUNCTION, 0));
		} else if (i == 3) {
			p.setJobIntentFun1(baseCode.queryByName(funs[0], BaseCode.FUNCTION, 0));
			p.setJobIntentFun2(baseCode.queryByName(funs[1], BaseCode.FUNCTION, 0));
			p.setJobIntentFun3(baseCode.queryByName(funs[2], BaseCode.FUNCTION, 0));
		} else if (i == 2) {
			p.setJobIntentFun1(baseCode.queryByName(funs[0], BaseCode.FUNCTION, 0));
			p.setJobIntentFun2(baseCode.queryByName(funs[1], BaseCode.FUNCTION, 0));
		} else if (i == 1) {
			p.setJobIntentFun1(baseCode.queryByName(funs[0], BaseCode.FUNCTION, 0));
		}
	}

	public static void setJobIntentIndutry(Person p, String[] indutries) {
		int i = indutries.length;
		if (i == 5) {
			p.setJobIntentIndustry1(baseCode.queryByName(indutries[0], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry2(baseCode.queryByName(indutries[1], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry3(baseCode.queryByName(indutries[2], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry4(baseCode.queryByName(indutries[3], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry5(baseCode.queryByName(indutries[4], BaseCode.FUNCTION, 0));
		} else if (i == 4) {
			p.setJobIntentIndustry1(baseCode.queryByName(indutries[0], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry2(baseCode.queryByName(indutries[1], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry3(baseCode.queryByName(indutries[2], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry4(baseCode.queryByName(indutries[3], BaseCode.FUNCTION, 0));
		} else if (i == 3) {
			p.setJobIntentIndustry1(baseCode.queryByName(indutries[0], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry2(baseCode.queryByName(indutries[1], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry3(baseCode.queryByName(indutries[2], BaseCode.FUNCTION, 0));
		} else if (i == 2) {
			p.setJobIntentIndustry1(baseCode.queryByName(indutries[0], BaseCode.FUNCTION, 0));
			p.setJobIntentIndustry2(baseCode.queryByName(indutries[1], BaseCode.FUNCTION, 0));
		} else if (i == 1) {
			p.setJobIntentIndustry1(baseCode.queryByName(indutries[0], BaseCode.FUNCTION, 0));
		}
	}

}
