package com.yesibc.core.components.cache;

import net.sf.ehcache.Cache;
import net.sf.ehcache.Element;

public class EhCacheSupport {

	public static void put2Cache(Cache cache, Object key, Object value) {
		Element element = new Element(key, value);
		cache.put(element);
	}

	@SuppressWarnings("unchecked")
	public static <T> T getValue(Cache cache, Object key,Class<T> clz) {
		Element element = cache.get(key);
		if(element==null){
			return null;
		}
		return (T)element.getValue();
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

}
