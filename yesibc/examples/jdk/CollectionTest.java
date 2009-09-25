package jdk;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import com.yesibc.core.utils.CommonLog;

public class CollectionTest {
	public static boolean isNum(String str) {
		try {
			if (str == null || (str.trim()).length() < 1) {
				return false;
			}
			String temp = "0123456789 ";
			String tempString = "";
			for (int i = 0; i < str.length(); i++) {
				tempString = str.substring(i, i + 1);
				if (temp.indexOf(tempString) < 0) {
					return false;
				}
			}
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	static String[] titles = { "run in queue(r)", "blocked for IO(b)",
			"swapped(w)", // 2 procs
			"swap",
			"free", // 4 Memory
			"page reclaims(re)", "minor faults(mf)", "paged in(pi)", "paged out(po)", "freed(fr)",
			"anticipated shortfall(de)", "pages scanned rates(sr)",// 11 pages
			"disk 1", "disk 2", "disk 3", "disk 4",// 15 disk
			"device interrupts(in)", "system calls(sy)", "CPU context switches(cs)",// 18
																					// faults
			"user time(us)", "system time(sy)", "idle time(id)" // 21 CPU
	};

	static String[] titles1 ={"run in queue(r)", "blocked for IO(b)",// 1 procs
		"memory used(swpd)", "free", "buff", "cache", // 5 Memory 
		"memory swapped in from disk(si)","memory swapped to disk(so)", //7 swap
		"blocks write to(bi)","blocks received from(bo)", //9 io
		"device interrupts(in)", "CPU context switches(cs)", //11  faults
		"user time(us)", "system time(sy)", "idle time(id)","wait IO(wa)" //15 cpu
	};
	 
	public static void main(String[] args) {
		String s = " 0 0 35 2094336 979816 2 29 0 0 0 0 0 0 0 0 0 317 418 580 1 5 94, 0 0 35 2094336 979816 0 0 0 0 0 0 0 0 0 0 0 314 252 508 2 2 96, 0 0 35 2093680 979160 15 202 0 0 0 0 0 0 0 0 0 364 2238 700 10 5 85, 0 0 35 2093680 979160 0 0 0 0 0 0 0 1 0 0 0 337 231 487 5 4 91, 0 0 35 2093680 979160 0 3 0 0 0 0 0 0 0 0 0 321 1148 560 8 3 89";
		String[] ss = s.split(",");
		String[] ss1 = null;
		int i = 0;
		for (String temp : ss) {
			ss1 = temp.split(" ");
			i = 0;
			for (String s0 : ss1) {
				if (s0 == null || "".equals(s0.trim())) {
					continue;
				}
				printf(s0,i);
				i++;
			}
			System.out.print("\n");
		}
	}

	private static void printf(String str, int i) {
		System.out.print(titles[i] + "[" + str + "]");
	}
}
