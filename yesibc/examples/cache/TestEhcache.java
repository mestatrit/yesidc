package cache;

import net.sf.ehcache.Cache;
import net.sf.ehcache.Element;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import testobject.TestObj;

import com.yesibc.core.components.cache.EhCacheSupport;

public class TestEhcache {
	public static void main(String args[]) {
		String key = "11";
		String DEFAULT_CONTEXT_FILE = "/cache/applicationContext-ehcache.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(DEFAULT_CONTEXT_FILE);
		Cache cache = (Cache) context.getBean("ehCache");
		System.out.println(EhCacheSupport.getValue(cache, "3", String.class));
		System.out.println(EhCacheSupport.getValue(cache, key, TestObj.class));
		for (int i = 0; i < 10; i++) {
			Element element = new Element(String.valueOf(i), String.valueOf(i));
			cache.put(element);
		}

		TestObj to = new TestObj();
		to.setTest("test");

		Element element1 = new Element(key, to);
		cache.put(element1);

		TestObj to1 = EhCacheSupport.getValue(cache, key, TestObj.class);
		to1.setTest("txxxxx");
		
		System.out.println(EhCacheSupport.getValue(cache, key, TestObj.class).getTest());
	}

	@SuppressWarnings("unused")
	private static void ttt(Cache cache,String key) {
		TestObj to1 = EhCacheSupport.getValue(cache, key, TestObj.class);
		to1.setTest("test111");
	}

}
