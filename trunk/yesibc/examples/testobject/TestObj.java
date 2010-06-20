package testobject;

public class TestObj implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1206201072607104828L;
	private String test;

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	@Override
	public String toString() {
		return "TestObj [test=" + test + "]";
	}
}
