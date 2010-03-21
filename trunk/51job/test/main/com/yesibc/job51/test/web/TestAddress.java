package com.yesibc.job51.test.web;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.job51.common.BaseCode;
import com.yesibc.job51.common.support.Address;
import com.yesibc.job51.model.Code;

public class TestAddress {
	private static Log log = LogFactory.getLog(TestAddress.class);

	public static void main(String[] args) {

		String addresses[] = { "浙江宏磊铜业股份有限公司", "深圳市爱默特模具有限公司" };

		log.info(addresses);

		for (String address : addresses) {
			Map<Long, Code> map = Address.getAddress(address);
			if (map == null || map.isEmpty()) {
				System.out.println("null!");
				return;
			}

			Code code = map.get(BaseCode.CODE_LEVEL_SECOND);
			if (code != null) {
				System.out.println("name=CODE_LEVEL_SECOND!" + code.getCname());
			}

			code = map.get(BaseCode.CODE_LEVEL_THIRD);
			if (code != null) {
				System.out.println("name=CODE_LEVEL_THIRD!" + code.getCname());
			}

			code = map.get(BaseCode.CODE_LEVEL_FOURTH);
			if (code != null) {
				System.out.println("name=CODE_LEVEL_FOURTH!" + code.getCname());
			}

		}
	}

}
