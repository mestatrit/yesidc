package com.yesibc.job51.test.importer;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Date;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.dao.BaseCodeDao;
import com.yesibc.job51.model.Code;

public class FunctionImporter {

	private static BaseCodeDao baseCodeDao = (BaseCodeDao) SpringContext
			.getBean("baseCodeDao");

	public static void main(String[] args) {
		try {
			importIndustry();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void importIndustry() throws Exception {
		File file = new File("D:/yesibc/51job/documents/fun.txt");
		if (!file.exists() || file.isDirectory())
			throw new FileNotFoundException();

		BufferedReader br = new BufferedReader(new FileReader(file));
		String temp = null;
		temp = br.readLine();
		Long codelevel1 = new Long(1);
		Long codelevel2 = new Long(2);
		Date d = new Date();
		String[] str = temp.split("=");
		Code top = new Code();
		top.setId(new Long(7));
		Code first = new Code();
		first.setParent(top);
		first.setCname(str[1]);
		first.setCode(str[0]);
		Long sort1 = new Long(1);
		first.setSortList(sort1);
		sort1++;
		first.setCodeLevel(codelevel1);
		setCommon(d, first);
		baseCodeDao.save(first);
		System.out.println("save 1 = " + temp);

		Long sort2 = new Long(1);
		Code second = null;
		int i = 1;
		while (temp != null) {
			if (temp == null || temp.equals("")) {
				break;
			}
			temp = br.readLine();
			str = temp.split("=");
			if (str[0].lastIndexOf("00") == 2) {
				first = new Code();
				first.setParent(top);
				first.setCname(str[1]);
				first.setCode(str[0]);
				first.setSortList(sort1);
				sort1++;
				first.setCodeLevel(codelevel1);
				setCommon(d, first);
				baseCodeDao.save(first);
				sort2 = new Long(1);
			} else {
				second = new Code();
				second.setParent(first);
				second.setCname(str[1]);
				second.setCode(str[0]);
				second.setSortList(sort2);
				sort2++;
				second.setCodeLevel(codelevel2);
				setCommon(d, second);
				baseCodeDao.save(second);
			}
			i++;
			System.out.println("save " + i + " = " + temp);
		}
	}

	private static void setCommon(Date d, Code c0) {
		c0.setCreateDate(d);
		c0.setUpdateDate(d);
		c0.setCreateUser(ClawerConstants.CREATE_USER);
		c0.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

}
