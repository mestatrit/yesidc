package basic;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import junit.framework.Assert;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.annotation.ExpectedException;
import org.springframework.test.annotation.IfProfileValue;
import org.springframework.test.annotation.NotTransactional;
import org.springframework.test.annotation.Repeat;
import org.springframework.test.annotation.Timed;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListener;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.transaction.AfterTransaction;
import org.springframework.test.context.transaction.BeforeTransaction;
import org.springframework.test.context.transaction.TransactionConfiguration;

public class Junit4CommonTest extends Assert {
	private static String zipRegEx = "^\\d{5}([\\-]\\d{4})?$";
	private static Pattern pattern;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		System.out.println("method Before...");
		pattern = Pattern.compile(zipRegEx);
	}

	@After
	public void afterM() {
		System.out.println("method after...");
	}

	@BeforeClass
	static public void beginC() {
		System.out.println("Class Before...");
	}

	@AfterClass
	static public void afterC() {
		System.out.println("Class after...");
	}

	@Test
	public void verifyArrayContents() throws Exception {
		String[] actual = new String[] { "JUnit 3.8.x", "JUnit 4", "TestNG" };
		String[] var = new String[] { "JUnit 3.8.x", "JUnit 4", "TestNG" };
		assertEquals("the two arrays should not be equal", actual, var);
	}

	@Ignore("暂时忽略")
	@Test
	public void testIgnor() {
		System.out.println("testIgnor...");
		Assert.assertEquals(2, 1);
	}

	@Test(expected = ArithmeticException.class)
	public void testException() {
		int z = 100 / 0;
		Assert.assertEquals(2, z);
	}

	@Test(timeout = 500, expected = InterruptedException.class)
	public void testTimeOut() {
		try {
			Thread.sleep(10);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	@Test
	public void verifyGoodZipCode() throws Exception {
		Matcher mtcher = pattern.matcher("22101");
		boolean isValid = mtcher.matches();
		assertTrue("Pattern did not validate zip code", isValid);
		System.out.println("RegularExpressionTest=" + isValid);
	}

	/** 设置要加载的配置文件 */
	@ContextConfiguration(locations = { "classpath:spring/persistenceContext.xml", "classpath:spring/aopContext.xml",
			"classpath:spring/daoContext.xml", "classpath:spring/serviceContext.xml" })
	/* * 设置是否回滚数据 */
	@TransactionConfiguration(defaultRollback = false)
	class UserTest extends AbstractTransactionalJUnit4SpringContextTests {

		/** 设置自动注入的属性 */
		@Autowired
		// private IUserService userService;
		@Before
		public void setUp() throws Exception {
		}

		@After
		public void tearDown() throws Exception {
		}

		@Test
		@org.springframework.test.annotation.Rollback(false)
		public void testSaveUser() {
			// User user = new User();
			// userService.saveUser(user);
		}

		@Test
		public void testGetUserById() {
			// User user = userService.getUserById("1");
			// System.out.println(user.getCreatetime());
		}

		@BeforeTransaction
		public void beforeTransaction() {
			// logic to be executed before a transaction is started
		}

		@AfterTransaction
		public void afterTransaction() {
			// logic to be executed after a transaction has ended
		}

		@NotTransactional
		public void testProcessWithoutTransaction() {
			// …
		}

		@Repeat(10)
		/*
		 * 表明被注解的测试方法必须重复执行。执行的次数在注解中声明。 注意重复执行范围包括包括测试方法本身的执行，以及任何测试fixture的set
		 * up或tear down。
		 */
		public void testProcessRepeatedly() {
			// …
		}

		@Timed(millis = 1000)
		/*
		 * * 表明被注解的测试方法必须在规定的时间区间内执行完成（以毫秒记）。如果测试执行时间超过了规定的时间区间，测试就失败了。
		 * 注意该时间区间包括测试方法本身的执行，任何重复测试（参见 @Repeat），还有任何测试fixture的set up或tear
		 * down时间。 Spring的@Timed注解与JUnit 4的@Test(timeout=...)支持具有不同的语义。
		 * 特别地，鉴于JUnit 4处理测试执行超时（如通过在一个单独的线程中执行测试方法）的方式，
		 * 我们不可能在一个事务上下文中的测试方法上使用JUnit的@Test(timeout=...)配置。因此，
		 * 如果你想将一个测试方法配置成计时且具事务性的， 你就必须联合使用Spring的@Timed及@Transactional注解。
		 * 还值得注意的是@Test(timeout=...)只管测试方法本身执行的次数，如果超出的话立刻就会失败；
		 * 然而，@Timed关注的是测试执行的总时间（包括建立和销毁操作以及重复），并且不会令测试失败。
		 */
		public void testProcessWithOneSecondTimeout() {
			// some logic that should not take longer than 1 second to execute
		}

		@ExpectedException(Exception.class)
		/*
		 * * 表明被注解方法预期在执行中抛出一个异常。预期异常的类型在注解中给定。 如果该异常的实例在测试方法执行中被抛出， 则测试通过。
		 * 同样的如果该异常实例没有在测试方法执行时抛出，则测试失败。
		 */
		public void testProcessRainyDayScenario() {
			// some logic that should result in an Exception being thrown
		}

		@DirtiesContext
		/*
		 * * 在测试方法上出现这个注解时，表明底层Spring容器在该方法的执行中被“污染”，
		 * 从而必须在方法执行结束后重新创建（无论该测试是否通过）。
		 */
		public void testProcessWhichDirtiesAppCtx() {
			// some logic that results in the Spring container being dirtied
		}
	}

	/**
	 * 定义类级别的元数据，TestExecutionListeners会使用TestContextManager进行注册。
	 * 通常，@TestExecutionListeners与@ContextConfiguration会搭配使用。
	 **/
	@ContextConfiguration
	@TestExecutionListeners( { TestExecutionListener.class })
	public class CustomTestExecutionListenerTests {
		// class body...
	}

	/**
	 * 类级别注解用来指定当通过@IfProfileValue注解获取已配置的profile值时使用何种ProfileValueSource。
	 * 如果@ProfileValueSourceConfiguration没有在测试中声明，将默认使用SystemProfileValueSource。
	 */
	// @ProfileValueSourceConfiguration(CustomProfileValueSource.class)
	public class CustomProfileValueSourceTests {
		// class body…

		/**
		 * 注解测试只针对特定的测试环境。 如果配置的ProfileValueSource类返回对应的提供者的名称值，
		 * 这个测试就可以启动。这个注解可以应用到一个类或者单独的方法。
		 */
		@IfProfileValue(name = "java.vendor", value = "Sun Microsystems Inc.")
		public void testProcessWhichRunsOnlyOnSunJvm() {
			// some logic that should run only on Java VMs from Sun Microsystems
		}

		/**
		 * 同时@IfProfileValue可配置一个值列表 (使用OR 语义) 来在JUnit环境中获得TestNG的测试组支持。 看下面的例子：
		 */
		// @IfProfileValue(name = "test-groups", values = { "unit-tests",
		// "integration-tests" })
		public void testProcessWhichRunsForUnitOrIntegrationTestGroups() {
			// some logic that should run only for unit and integration test
			// groups
		}

	}

}
