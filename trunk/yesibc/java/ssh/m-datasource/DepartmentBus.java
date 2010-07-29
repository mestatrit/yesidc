package com.htxx.demo;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.htxx.demo.model.Department;
import com.htxx.service.dao.DaoSupport;
import com.htxx.service.dao.DynamicLoadBean;
import com.htxx.service.dao.SpObserver;

public class DepartmentBus {

	private static final Log log = LogFactory.getLog(DepartmentBus.class);
	private DaoSupport daoSupport;
	//private static ApplicationContext ac = new FileSystemXmlApplicationContext("classpath:ApplicationContext-*.xml");
	
	public static void main(String[] arg){
		ApplicationContext ac = new FileSystemXmlApplicationContext("classpath:ApplicationContext-*.xml");
		
		DynamicLoadBean dynamicLoadBean = (DynamicLoadBean)ac.getBean("dynamicLoadBean");
		dynamicLoadBean.loadBean("classpath:datasource.xml");
		
		Department vo = new Department();
		vo.setDepartmentName("aaaa");
		DepartmentBus dep = (DepartmentBus)ac.getBean("departmentBus");
		
		SpObserver.putSp("dataSource3");
		dep.daoSupport.insert(vo);
		log.debug("successful!");
	}


	public DaoSupport getDaoSupport() {
		return daoSupport;
	}


	public void setDaoSupport(DaoSupport daoSupport) {
		this.daoSupport = daoSupport;
	}
}
