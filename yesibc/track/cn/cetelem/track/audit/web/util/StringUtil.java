package cn.cetelem.track.audit.web.util;

import java.math.BigDecimal;

/**
 * @author	<a href="mailto:jimmy.xu@cetelem.com.cn">JimmyXu</a>
 * @version	1.0
 * @Creationdate:Dec 10, 2008 4:32:37 PM
 */

public class StringUtil {

    public static String trim(String s) {
        if (s != null) {
            return s.trim();
        }
        return s;
    }

    public static String popDigit(String s) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < s.length(); i++) {
            if (Character.isDigit(s.charAt(i))) {
                sb.append(s.charAt(i));
            }
        }
        return sb.toString();
    }

    public static Long string2Long(String str) {
        if (str == null) {
            return new Long(0);
        }
        try {
            str = str.trim().replaceAll(",","");
            return new Long(str);
        }
        catch (Exception ex) {
            try {
                return new Long(str.split("\\.")[0]);
            }
            catch (Exception ex1) {
                return new Long(0);
            }
        }
    }

    public static Long s2Long100(String str) {
        if (str == null) {
            return new Long(0);
        }
        try {
            str = str.trim().replaceAll(",","");
            BigDecimal money = new BigDecimal(str);
            money = money.multiply(new BigDecimal(100));
            return money.longValue();
        }
        catch (Exception ex) {
            return new Long(0);
        }
    }

    public static void main(String[] args) {

    }
}
