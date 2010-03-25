package basic;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import junit.framework.Assert;

public class Junit3CommonTest extends Assert {
	private String zipRegEx = "^\\d{5}([\\-]\\d{4})?$";
	private Pattern pattern;

	protected void setUp() throws Exception {
		this.pattern = Pattern.compile(this.zipRegEx);
	}

	public void testZipCodeGroup() throws Exception {
		Matcher mtcher = this.pattern.matcher("22101-5051");
		boolean isValid = mtcher.matches();
		System.out.println("testZipCodeGroup=" + isValid);
		assertEquals("group(1) didn't equal -5051", "-5051", mtcher.group(1));
	}

	public void testZipCodeGroupException() throws Exception {
		Matcher mtcher = this.pattern.matcher("22101-5051");
		boolean isValid = mtcher.matches();
		System.out.println("testZipCodeGroupException=" + isValid);
		try {
			mtcher.group(2);
			fail("No exception was thrown");
		} catch (IndexOutOfBoundsException e) {
		}
	}

}
