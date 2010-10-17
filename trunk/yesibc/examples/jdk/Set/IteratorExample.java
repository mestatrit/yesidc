package jdk.Set;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class IteratorExample {
	public static void main(String[] args) {
		List<String> strs = new ArrayList<String>();
		strs.add("a");
		strs.add("b");
		String str = "";
		for (Iterator<String> it = strs.iterator(); it.hasNext();) {
			str = it.next();
			if (str == null) {
				continue;
			}
			if (!str.equals("a")) {
				it.remove();
			}
		}
		System.out.println(strs);
	}

}
