package algorithm;

import java.io.*;

public class CombOk {
	public void combine(int[] list, int k, int l, int r, int n) {
		if (k + l > n + 1)
			return;
		if (l == 0) {
			for (int i = 0; i < r; i++)
				System.out.print(list[i] + " ");
			System.out.println();
			return;
		}
		list[r - l] = k;
		combine(list, k + 1, l - 1, r, n);
		if (k + l <= n)
			combine(list, k + 1, l, r, n);
	}

	public static void main(String[] args) throws NumberFormatException, IOException {
		CombOk obj = new CombOk();
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Please input n: ");
		int n = Integer.parseInt(br.readLine());
		System.out.println("Please input r: ");
		int r = Integer.parseInt(br.readLine());
		int[] list = new int[r];
		int k = 1;
		int l = r;
		obj.combine(list, k, l, r, n);
	}
}