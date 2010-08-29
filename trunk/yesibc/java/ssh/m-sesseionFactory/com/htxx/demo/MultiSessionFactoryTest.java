/**
 * 
 */
package com.htxx.demo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.htxx.demo.model.Department;
import com.htxx.demo1.model.Users;
import com.htxx.service.dao.GenericDao;
import com.htxx.service.dao.SpObserver;

/**
 * @author FanGang
 *
 */
public class MultiSessionFactoryTest {

	private GenericDao dao;
	
	/**
	 * @return the dao
	 */
	public GenericDao getDao() {
		return dao;
	}

	/**
	 * @param dao the dao to set
	 */
	public void setDao(GenericDao dao) {
		this.dao = dao;
	}

	public static void main(String[] args) {
		ApplicationContext ac = new FileSystemXmlApplicationContext("classpath:ApplicationContext-sessionFactory.xml");
		
		MultiSessionFactoryTest test = (MultiSessionFactoryTest)ac.getBean("multiSessionFactoryTest");
		SpObserver.putSp("sessionFactory2");
		Users users = new Users("test","test");
		test.getDao().insert(users);
		SpObserver.putSp("sessionFactory1");
		Department department = new Department("dep1");
		test.getDao().insert(department);
	}

}
