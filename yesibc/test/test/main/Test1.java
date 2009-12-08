package test.main;

import java.lang.instrument.Instrumentation;
import java.util.Arrays;

public class Test1 {
	private static volatile Instrumentation globalInstr;

	public static void premain(String args, Instrumentation inst) {
		globalInstr = inst;
	}

	public static long getObjectSize(Object obj) {
		if (globalInstr == null)
			throw new IllegalStateException("Agent not initted");
		return globalInstr.getObjectSize(obj);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String[] ss = { "a", "b" };
		System.out.println(ss);
		System.out.println(Arrays.deepToString(ss));

		//System.out.println(getObjectSize(ss));
	}

}
