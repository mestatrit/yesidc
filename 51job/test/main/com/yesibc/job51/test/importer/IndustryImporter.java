package com.yesibc.job51.test.importer;

import java.util.Date;

import com.yesibc.core.chinese.Pinyin;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.core.utils.JXLlUtil;
import com.yesibc.core.utils.StringUtils;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.dao.BaseCodeDao;
import com.yesibc.job51.model.Code;

public class IndustryImporter {

	private static BaseCodeDao baseCodeDao = (BaseCodeDao) SpringContext
			.getBean("baseCodeDao");

	public static void main(String[] args) {
		importIndustry();
	}

	public static void importIndustry() {
		JXLlUtil jxl = new JXLlUtil("D:/yesibc/51job/documents/industry.xls");
		int x = jxl.getTotalX();
		int y = jxl.getTotalY();
		System.out.println("x=" + x + ",y=" + y);

		Code code = new Code();
		code.setId(new Long(6));

		String code1 = null;
		String code2 = null;
		String code3 = null;
		String code4 = null;
		String code5 = null;
		String code0 = null;
		Long sort = new Long(1);
		Date d = new Date();
		boolean have0 = false;
		boolean have1 = false;
		boolean have2 = false;
		boolean have3 = false;

		Code c0 = null;
		Code c1 = null;
		Code c2 = null;
		Code c3 = null;
		for (int i = 0; i < x; i++) {
			code0 = StringUtils.trim2Empty(jxl.getCell(i, 0).getContents());
			code1 = StringUtils.trim2Empty(jxl.getCell(i, 1).getContents());
			code2 = StringUtils.trim2Empty(jxl.getCell(i, 2).getContents());
			code3 = StringUtils.trim2Empty(jxl.getCell(i, 3).getContents());
			code4 = StringUtils.trim2Empty(jxl.getCell(i, 4).getContents());
			code5 = StringUtils.trim2Empty(jxl.getCell(i, 5).getContents());

			if (!"".equals(code0)) {
				c0 = new Code();
				c0.setCode(code0);
				c0.setEname(Pinyin.getPinyin(code4));
				c0.setCname(code4);
				c0.setMemo(code5);
				if(have0){
					c0.setSortList(sort);
				}else{
					sort = new Long(1);
					c0.setSortList(sort);
				}
				sort++;

				c0.setParent(code);

				c0.setCodeLevel(new Long(1));
				setCommon(d, c0);
				baseCodeDao.save(c0);
				have0 = true;
				have1 = false;
				have2 = false;
				have3 = false;
			} else if (!"".equals(code1)) {
				c1 = new Code();
				c1.setCode(StringUtils.padLeft(code1, 2, '0'));
				c1.setEname(Pinyin.getPinyin(code4));
				c1.setCname(code4);
				c1.setMemo(code5);
				if(have1){
					c1.setSortList(sort);
				}else{
					sort = new Long(1);
					c1.setSortList(sort);
				}
				sort++;

				c1.setParent(c0);

				c1.setCodeLevel(new Long(2));
				setCommon(d, c1);
				baseCodeDao.save(c1);
				have0 = false;
				have1 = true;
				have2 = false;
				have3 = false;
			} else if (!"".equals(code2)) {
				c2 = new Code();
				c2.setCode(StringUtils.padLeft(code2, 3, '0'));
				c2.setEname(Pinyin.getPinyin(code4));
				c2.setCname(code4);
				c2.setMemo(code5);
				if(have2){
					c2.setSortList(sort);
				}else{
					sort = new Long(1);
					c2.setSortList(sort);
				}
				sort++;

				c2.setParent(c1);

				c2.setCodeLevel(new Long(3));
				setCommon(d, c2);
				baseCodeDao.save(c2);
				have0 = false;
				have1 = false;
				have2 = true;
				have3 = false;
			} else if (!"".equals(code3)) {
				c3 = new Code();
				c3.setCode(StringUtils.padLeft(code3, 4, '0'));
				c3.setEname(Pinyin.getPinyin(code4));
				c3.setCname(code4);
				c3.setMemo(code5);
				if(have3){
					c3.setSortList(sort);
				}else{
					sort = new Long(1);
					c3.setSortList(sort);
				}
				sort++;

				c3.setParent(c2);

				c3.setCodeLevel(new Long(4));
				setCommon(d, c3);
				baseCodeDao.save(c3);
				have0 = false;
				have1 = false;
				have2 = false;
				have3 = true;
			}

			System.out.println("saveing: " + i);

		}

	}

	private static void setCommon(Date d, Code c0) {
		c0.setCreateDate(d);
		c0.setUpdateDate(d);
		c0.setCreateUser(ClawerConstants.CREATE_USER);
		c0.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

}
