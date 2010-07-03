package com.yesibc.job51.test.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import net.sf.ehcache.Cache;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.components.cache.EhCacheSupport;
import com.yesibc.core.spring.SpringContext;
import com.yesibc.job51.common.LogJdkvm;
import com.yesibc.job51.model.Company;
import com.yesibc.job51.service.CompanyInfoHandlerService;

public class TestContext {

	private static Cache companyCache = (Cache) SpringContext.getBean("companyCache");
	private static Log log = LogFactory.getLog(TestContext.class);

	/**
	 * 结论:6秒左右可以放10000到CACHE,100秒左右可以读10000条CACHE(硬盘)中的记录.
	 * 硬盘4G的空间可以放100万条的记录.
	 * @param args
	 */
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		try {
			CompanyInfoHandlerService cih = (CompanyInfoHandlerService) SpringContext
					.getBean("companyInfoHandlerService");
			LogJdkvm lv = new LogJdkvm();
			lv.logJdkvm();
			List<String> codes = new ArrayList<String>();
			List<String> codes1 = new ArrayList<String>();
			for (int i = 1; i < 13; i++) {
				try {
					Company com = cih.getById(new Long(i));
					if (com != null) {
						EhCacheSupport.put2Cache(companyCache, com.getCompanyCode(), com);
						codes1.add(com.getCompanyCode());
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			for (int j = 0; j < 1000; j++) {
				for (int i = 0; i < codes1.size(); i++) {
					Company com = EhCacheSupport.getValue(companyCache, codes1.get(i), Company.class);
					com.setCompanyCode(String.valueOf(System.currentTimeMillis() + new Random().nextInt()));
					if (com != null) {
						EhCacheSupport.put2Cache(companyCache, com.getCompanyCode(), com);
						codes.add(com.getCompanyCode());
					}
				}
			}

			log.info("================" + companyCache.getSize());
			lv.logJdkvm();

			Thread.sleep(3000);

			for (int j = 1; j < 100; j++) {
				for (int i = 0; i < codes.size(); i++) {
					Company com = EhCacheSupport.getValue(companyCache, codes.get(i), Company.class);
					com.setCompanyCode(String.valueOf(System.currentTimeMillis() + new Random().nextInt()));
					if (com != null) {
						EhCacheSupport.put2Cache(companyCache, com.getCompanyCode(), com);
					}
				}
				log.info("=========[" + j + "]=======" + companyCache.getSize());
				lv.logJdkvm();
			}

			long start = System.currentTimeMillis();
			List<String> keys = companyCache.getKeys();
			log.info("=======keys=========" + (System.currentTimeMillis() - start));
			start = System.currentTimeMillis();

			int i = 0;
			start = System.currentTimeMillis();
			for (String key : keys) {
				i++;
				@SuppressWarnings("unused")
				Company com = EhCacheSupport.getValue(companyCache, key, Company.class);
				if (i % 10000 == 0) {
					log.info("=========[" + i + "]=======" + (System.currentTimeMillis() - start));
					lv.logJdkvm();
					start = System.currentTimeMillis();
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
