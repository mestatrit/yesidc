package basic;

import java.util.Arrays;
import java.util.Collection;

import junit.framework.TestCase;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

@RunWith(Parameterized.class)
public class TestJunitWithParam extends TestCase {
	private String expected;

	private String target;

	@Parameters
	public static Collection<Object[]> words() {
		return Arrays.asList(new Object[][] { { "employee_info", "employeeInfo" }, // 测试一般的处理情况
				{ null, "employeeInfo" }, // 测试 null 时的处理情况
				{ "", "employeeInfo" }, // 测试空字符串时的处理情况
				{ "employee_info", "employeeInfo" }, // 测试当首字母大写时的情况
				{ "employee_info_a", "employeeInfo" }, // 测试当尾字母为大写时的情况
				{ "employee_a_info", "employeeInfo" } // 测试多个相连字母大写时的情况
				});
	}

	/**
	 *参数化测试必须的构造函数
	 * 
	 * @paramexpected 期望的测试结果，对应参数集中的第一个参数
	 *@paramtarget 测试数据，对应参数集中的第二个参数
	 */
	public TestJunitWithParam(String expected, String target) {
		this.expected = expected;
		this.target = target;
	}

	/**
	 *实际需要测试的方法
	 */
	@Test
	public void wordFormat4DB() {
		System.out.println("expected=" + expected + ",target=" + target);
		assertEquals(target, getTarget(expected));
	}

	public String getTarget(String str) {
		return "employeeInfo";
	}
}