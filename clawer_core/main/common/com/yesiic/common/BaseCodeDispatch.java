package com.yesiic.common;

import com.yesiic.common.support.Address;
import com.yesiic.common.support.FromWhere;



public class BaseCodeDispatch {

	public static BaseCode getBaseCode(String type) {
		if (BaseCode.FROM_WHERE.equals(type)) {
			return new FromWhere();
		} else if (BaseCode.ADDRESS.equals(type)) {
			return new Address();
		} else {
			return null;
		}

	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	}

}
