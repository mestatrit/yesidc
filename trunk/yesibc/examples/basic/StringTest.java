package basic;

import java.io.UnsupportedEncodingException;

public class StringTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String str = "123dd在在大大 da";
		byte[] bs = null;
		try {
			bs = str.getBytes("GBK");
			System.out.println("GBK="+bs.length);
			bs = str.getBytes("UTF8");
			System.out.println("UTF8="+bs.length);
			bs = str.getBytes("8859_1");
			System.out.println("8859_1="+bs.length);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		System.out.println("a="+bs.length);
		System.out.println("b="+str.length());
		for(byte b:bs){
			System.out.println("dd="+b);
		}

	}

}
