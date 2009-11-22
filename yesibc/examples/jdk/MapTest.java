package jdk;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import com.yesibc.core.utils.CommonLog;

public class MapTest {
	public static void main(String[] args) {
		Map<String, String> map = new HashMap<String, String>();
		CommonLog.info("map="+map.size());
		map.put("1", "1-1");
		map.put("2", "2-2");
		for(Map.Entry<String, String> entry : map.entrySet()){   
		    String value = entry.getValue();   
		    String key = entry.getKey();   
			CommonLog.info("entrySet value="+value);
			CommonLog.info("entrySet key="+key);
		}  
		for (String o : map.keySet()) {
			CommonLog.info("keySet="+map.get(o));
		}
		Iterator<Map.Entry<String,String>> it = map.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String,String> entry = (Map.Entry<String,String>) it.next();
			String key = entry.getKey();
			String value = entry.getValue();
			CommonLog.info("Iterator value="+value);
			CommonLog.info("Iterator key="+key);
		}
	}
}
