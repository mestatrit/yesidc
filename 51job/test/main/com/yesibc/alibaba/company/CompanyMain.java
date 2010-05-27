package com.yesibc.alibaba.company;

public class CompanyMain {

	//private final static String ALIBABA_HOMEPAGE = "http://china.alibaba.com/";

	/**
	 * prepare: 1. address 2.Category error: 1. system exit 2.IP error 3.page
	 * error filter: "@315cq.com"
	 * 1.先搜索公司主页.判断是否真为公司主页，如果主页没有，则搜"联系我们","联系方式","Contact"等链接 2.搜索黄页的联系信息
	 * 3.搜索关键字为公司名字，如果有,cut; 加e-mail再搜，没有end.
	 * 4.在结果中用"e-mail:","email:","email：","email ","e-mail ","邮箱:","邮箱：","邮箱 "
	 * 作为前缀，且不分大小写
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		loadMainCategory();
		loadSecondCategory();
		loadCompanyListByAddress();
		loadCompanyByPages(); // log category url

	}

	private static void loadCompanyByPages() {
		// TODO Auto-generated method stub

	}

	private static void loadCompanyListByAddress() {
		// TODO Auto-generated method stub

	}

	private static void loadSecondCategory() {
		// TODO Auto-generated method stub

	}

	private static void loadMainCategory() {
		// TODO Auto-generated method stub

	}

}
