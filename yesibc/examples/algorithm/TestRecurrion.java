package algorithm;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;

public class TestRecurrion {

	public static void testRecurrion(List<String> args,List<String> okok) {
		System.out.println("main=" + args.size()+",ok="+(okok==null?0:okok.size()));

		if(CollectionUtils.isEmpty(args)){
			return;
		}
		
		for (String str:args) {
			args.remove(str);
			System.out.println("remove:" + str);
			List<String> ls = new ArrayList<String>();
			ls.addAll(args);
			
			List<String> okok1 = new ArrayList<String>();
			if(okok!=null){
				//okok1.addAll(okok);
			}
			okok1.add(str);
			
			testRecurrion(ls,okok1);
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		List<String> ls = new ArrayList<String>();
		ls.add("a");
		ls.add("b");
		ls.add("c");
		testRecurrion(ls,null);
	}

}
