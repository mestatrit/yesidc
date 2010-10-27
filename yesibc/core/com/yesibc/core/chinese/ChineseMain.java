package com.yesibc.core.chinese;

import java.io.UnsupportedEncodingException;

public class ChineseMain {

	public static boolean isChinese(char c) {
		Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);
		if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A
				|| ub == Character.UnicodeBlock.GENERAL_PUNCTUATION
				|| ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION
				|| ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) {
			return true;
		}
		return false;
	}

	public static boolean isChinese(String strName) {
		char[] ch = strName.toCharArray();
		for (int i = 0; i < ch.length; i++) {
			char c = ch[i];
			if (isChinese(c) != true) {
				System.out.println(c);
				return false;
			}
		}
		return true;

	}

	/**
	 * <pre>
	 *   用getBytes(encoding)：返回字符串的一个byte数组   
	 *   当b[0]为   63时，应该是转码错误   
	 *   A、不乱码的汉字字符串：   
	 *   1、encoding用GB2312时，每byte是负数；   
	 *   2、encoding用ISO8859_1时，b[i]全是63。   
	 *   B、乱码的汉字字符串：   
	 *   1、encoding用ISO8859_1时，每byte也是负数；   
	 *   2、encoding用GB2312时，b[i]大部分是63。   
	 *   C、英文字符串   
	 *   1、encoding用ISO8859_1和GB2312时，每byte都大于0；   
	 *   <p/>   
	 *   总结：给定一个字符串，用getBytes("iso8859_1")   
	 *   1、如果b[i]有63，不用转码；   A-2   
	 *   2、如果b[i]全大于0，那么为英文字符串，不用转码；   B-1   
	 *   3、如果b[i]有小于0的，那么已经乱码，要转码。   C-1
	 * </pre>
	 */
	public static String toChinese(String src, String desCode) {
		if (src == null)
			return null;
		String retStr = src;
		byte b[];
		try {
			b = src.getBytes("ISO8859_1");

			for (int i = 0; i < b.length; i++) {
				byte b1 = b[i];
				if (b1 == 63)
					break; // 1
				else if (b1 > 0)
					continue;// 2
				else if (b1 < 0) { // 不可能为0，0为字符串结束符
					retStr = new String(b, desCode);
					break;
				}
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return retStr;
	}

	/**
	 * <pre>
	 * <script   language="JavaScript">   
	 *   		if   (/[^\x00-\xff]/g.test(this.value))   {   
	 *       		alert('为汉字！');   
	 *   		}else{   
	 *       		alert('非汉字！');   
	 *   		}   
	 *  		</script>
	 * </pre>
	 */

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String str = "埔蛐庞每攴延馄冢忠呀崆濉看荒昊箍罴锹颊渑际只雍耸荡钌昵搿硖峁";
		str = "现单怀邪荒辏薹ㄑ橹な杖搿?/>												</td>											</tr>";
		System.out.println(isChinese(str));
		System.out.println(isChinese("┑"));
		System.out.println(isChinese("ノ?"));
		System.out.println(isChinese("ㄑ"));
		System.out.println(isChinese("な"));
		System.out.println(isChinese("搿"));
		System.out.println("┑=" + Character.UnicodeBlock.of('┑'));
		System.out.println("现=" + Character.UnicodeBlock.of('现'));
		System.out.println("1=" + Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS.toString());
		System.out.println("2=" + Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS.toString());
		System.out.println("3=" + Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A.toString());
		System.out.println("4=" + Character.UnicodeBlock.GENERAL_PUNCTUATION.toString());
		System.out.println("5=" + Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION.toString());
		System.out.println("6=" + Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS.toString());

	}

}
