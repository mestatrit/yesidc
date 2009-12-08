package com.yesibc.job51.test.importer;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Date;

import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.common.ClawerConstants;
import com.yesibc.job51.dao.CodeJobDao;
import com.yesibc.job51.model.CodeJob;

public class Industry51JobImporter {

	private static CodeJobDao codeJobDao = (CodeJobDao) SpringContext
			.getBean("codeJobDao");

	public static void main(String[] args) {
		try {
			importIndustry();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void importIndustry() throws Exception {
		File file = new File("D:/yesibc/51job/documents/industry51job.txt");
		if (!file.exists() || file.isDirectory())
			throw new FileNotFoundException();

		BufferedReader br = new BufferedReader(new FileReader(file));
		String temp = null;
		temp = br.readLine();
		Long codelevel1 = new Long(1);
		Date d = new Date();
		String[] str = temp.split("=");
		CodeJob top = new CodeJob();
		top.setId(new Long(6));
		CodeJob first = new CodeJob();
		first.setParent(top);
		first.setCname(str[1]);
		first.setCode(str[0]);
		Long sort1 = new Long(1);
		first.setSortList(sort1);
		sort1++;
		first.setCodeLevel(codelevel1);
		setCommon(d, first);
		codeJobDao.save(first);
		System.out.println("save 1 = " + temp);

		int i = 1;
		while (temp != null) {
			if (temp == null || temp.equals("")) {
				break;
			}
			temp = br.readLine();
			str = temp.split("=");
			first = new CodeJob();
			first.setParent(top);
			first.setCname(str[1]);
			first.setCode(str[0]);
			first.setSortList(sort1);
			sort1++;
			first.setCodeLevel(codelevel1);
			setCommon(d, first);
			codeJobDao.save(first);
			i++;
			System.out.println("save " + i + " = " + temp);
		}
	}

	private static void setCommon(Date d, CodeJob c0) {
		c0.setCreateDate(d);
		c0.setUpdateDate(d);
		c0.setCreateUser(ClawerConstants.CREATE_USER);
		c0.setUpdateUser(ClawerConstants.UPDATE_USER);
	}

}
