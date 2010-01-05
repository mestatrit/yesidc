package com.yesibc.job51.company;

public class CompanyMain {

	private final static String ALIBABA_HOMEPAGE = "http://china.alibaba.com/";
	
	
	/**
	 * prepare: 1. address  2.Category
	 * error: 1. system exit 2.IP error 3.page error
	 * filter: "@315cq.com"
	 * 1.��������˾��ҳ.�ж��Ƿ���Ϊ��˾��ҳ�������ҳû�У�����"��ϵ����","��ϵ��ʽ","Contact"������
	 * 2.������ҳ����ϵ��Ϣ
	 * 3.�����ؼ���Ϊ��˾���֣������,cut; ��e-mail���ѣ�û��end.
	 * 4.�ڽ������"e-mail:","email:","email��","email ","e-mail ","����:","���䣺","���� "
	 * ��Ϊǰ׺���Ҳ��ִ�Сд
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
