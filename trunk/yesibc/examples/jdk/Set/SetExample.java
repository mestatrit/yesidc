package jdk.Set;

import java.util.*;

@SuppressWarnings("unchecked")
public class SetExample {
	public static void main(String[] args) {
		Set set = new TreeSet();
		set.add(new SetElement("cc"));
		set.add(new SetElement("aa"));
		set.add(new SetElement("aa"));
		set.add(new SetElement("bb"));
		System.out.println(set);
		Set set1 = new TreeSet();
		set1.add(new SetElement1("cc"));
		set1.add(new SetElement1("aa"));
		set1.add(new SetElement1("aa"));
		set1.add(new SetElement1("bb"));
		System.out.println(set1);
		Set set2 = new TreeSet();
		set2.add("cc");
		set2.add("aa");
		set2.add("aa");
		set2.add("bb");
		System.out.println("3" + set2);
		Set set3 = new HashSet();
		set3.add("cc");
		set3.add("aa");
		set3.add("aa");
		set3.add("bb");
		set3.add("ee");
		set3.add("ff");
		set3.add("gg");
		set3.add("hh");
		System.out.println("33333" + set3);

		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < 10; i++)
			list.add(new Integer(i));
		System.out.println("打乱前:");
		System.out.println(list);

		for (int i = 0; i < 5; i++) {
			System.out.println("第" + i + "次打乱：");
			Collections.shuffle(list);
			System.out.println(list);
		}

	}

	static class SetElement implements Comparable {
		String s;

		public SetElement(String s) {
			this.s = s;
		}

		public String toString() {
			return s;
		}

		public int compareTo(Object o) {
			return s.compareTo(((SetElement) o).s);
		}

		public boolean equals(Object obj) {
			return s.equals(((SetElement) obj).s);
		}
	}

	static class SetElement1 implements Comparable {
		String s;

		public SetElement1(String s) {
			this.s = s;
		}

		public String toString() {
			return s;
		}

		public int compareTo(Object o) {
			// return s.compareTo(((SetElement3)o).s);
			return -1;
		}

		public boolean equals(Object obj) {
			return s.equals(((SetElement1) obj).s);
		}
	}

}