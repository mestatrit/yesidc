package cache;

import net.sf.ehcache.Cache;
import net.sf.ehcache.Element;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestEhcache {
	public static void main(String args[]) {
		String DEFAULT_CONTEXT_FILE = "/cache/applicationContext-ehcache.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(DEFAULT_CONTEXT_FILE);
		Cache cache = (Cache) context.getBean("ehCache");
		Element element = new Element("1", "111");
		cache.put(element);
		System.out.println(cache.get("1"));
	}
}
