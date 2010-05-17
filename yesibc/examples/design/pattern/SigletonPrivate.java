package design.pattern;

public class SigletonPrivate {

	private static SigletonPrivate instance = new SigletonPrivate();

	private SigletonPrivate() {

	}

	public static SigletonPrivate getInstance() {

		return instance;

	}
}