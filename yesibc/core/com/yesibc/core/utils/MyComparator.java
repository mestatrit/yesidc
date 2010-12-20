package com.yesibc.core.utils;

import java.io.Serializable;
import java.lang.reflect.Method;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@SuppressWarnings("unchecked")
public class MyComparator implements Comparator, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6308567150098504733L;

	private Comparator cmp = Collator.getInstance(java.util.Locale.CHINA);

	private String[] sortBy;

	private int order;

	private MyComparator(String[] sortBy, int order) {
		this.sortBy = sortBy;
		this.order = order;
	}

	/*
	 * 定义排序规则 如果按照不止一个属性进行排序 这按照属性的顺序进行排序,类似sql order by 即只要比较出同位置的属性就停止
	 */
	public int compare(Object o1, Object o2) {
		for (int i = 0; i < sortBy.length; i++) {
			Object value1 = getFieldValueByName(sortBy[i], o1);
			Object value2 = getFieldValueByName(sortBy[i], o2);
			if (value1 instanceof Integer && value2 instanceof Integer) {
				int v1 = Integer.parseInt(value1.toString());
				int v2 = Integer.parseInt(value2.toString());
				if (v1 > v2) {
					return 1 * this.order;
				} else if (v1 < v2) {
					return -1 * this.order;
				}
			} else {
				int result = cmp.compare(value1, value2);
				if (result != 0) {
					return result * this.order;
				}
			}
		}
		return -1 * this.order;
	}

	/**
	 * 
	 * 通过反射，获取属性值
	 * 
	 * @param fieldName
	 * @param o
	 * @return
	 */
	private Object getFieldValueByName(String fieldName, Object o) {
		try {
			String firstLetter = fieldName.substring(0, 1).toUpperCase();
			String getter = "get" + firstLetter + fieldName.substring(1);
			Method method = o.getClass().getMethod(getter, new Class[] {});

			Object value = method.invoke(o, new Object[] {});
			return value;
		} catch (Exception e) {
			System.out.println("属性不存在");
			return null;
		}
	}

	/**
	 * 
	 * 待排序对象
	 * 
	 * @author 邬小洪 QQ:16044171
	 * @version 1.0,2010-7-24
	 */
	private static class Bean {
		private String name = null;

		private String post = null;

		private Integer age = null;

		public Integer getAge() {
			return age;
		}

		public void setAge(Integer age) {
			this.age = age;
		}

		public String getPost() {
			return post;
		}

		public void setPost(String post) {
			this.post = post;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
	}

	public static void main(String[] args) {
		Bean b1 = new Bean();
		b1.setName("邬小洪");
		b1.setPost("研发工程师");
		b1.setAge(26);

		Bean b2 = new Bean();
		b2.setName("小洪");
		b2.setPost("部署工程师");
		b2.setAge(27);

		Bean b3 = new Bean();
		b3.setName("洪儿");
		b3.setPost("部署工程师");
		b3.setAge(28);

		Bean b4 = new Bean();
		b4.setName("邬小洪");
		b4.setPost("架构工程师");
		b4.setAge(27);

		List<Bean> list = new ArrayList<Bean>();
		list.add(b1);
		list.add(b2);
		list.add(b3);
		list.add(b4);

		String[] sortBy = new String[] { "name", "post" };
		int orderBy = 1;// 1:升序，-1：降序
		MyComparator myCmp = new MyComparator(sortBy, orderBy);
		Collections.sort(list, myCmp);
		System.out.println("--------------------按名字和职位升序----------------------------");
		for (Bean b : list) {
			System.out.println("name:" + b.getName() + ",post:" + b.getPost() + ",age:" + b.getAge());
		}

		sortBy = new String[] { "post", "age" };
		myCmp = new MyComparator(sortBy, orderBy);
		Collections.sort(list, myCmp);
		System.out.println("--------------------按职位和年龄升序----------------------------");
		for (Bean b : list) {
			System.out.println("post:" + b.getPost() + ",age:" + b.getAge() + ",name:" + b.getName());
		}

		sortBy = new String[] { "age", "name" };
		myCmp = new MyComparator(sortBy, orderBy);
		Collections.sort(list, myCmp);
		System.out.println("--------------------按年龄和名字升序----------------------------");
		for (Bean b : list) {
			System.out.println("age:" + b.getAge() + ",name:" + b.getName() + ",post:" + b.getPost());
		}
	}

}
