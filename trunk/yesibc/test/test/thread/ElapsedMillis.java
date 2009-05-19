/**
 * $Id: ElapsedMillis.java,v 1.0  2007-7-1 上午10:31:24 davidye Exp $
*/

package test.thread;

import java.util.Date;
import java.util.GregorianCalendar;

/**
 * @author David.ye o_olle_e@hotmail.com
 * create time: 2007-7-1 上午10:31:24
 */
public class ElapsedMillis {
	public static void main(String[] args) { 
		GregorianCalendar gc1 = new GregorianCalendar(1995, 11, 1, 3, 2, 1); 
		GregorianCalendar gc2 = new GregorianCalendar(1995, 11, 1, 3, 2, 2); 
//		 the above two dates are one second apart 
		Date d1 = gc1.getTime(); 
		Date d2 = gc2.getTime(); 
		long l1 = d1.getTime(); 
		long l2 = d2.getTime(); 
		long difference = l2 - l1; 
		System.out.println("l1 milliseconds: " + l1); 
		System.out.println("l2 milliseconds: " + l2); 
		System.out.println("Elapsed milliseconds: " + difference); 
		} 
}
