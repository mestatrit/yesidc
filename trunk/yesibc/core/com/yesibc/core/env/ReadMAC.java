package com.yesibc.core.env;

import java.io.*;

public class ReadMAC {
	public static String physicalAddress = "read MAC error!";

	public ReadMAC() {
	}

	public static String checkPhysicalAddress() {
		try {
			String line;
			Process process = Runtime.getRuntime().exec("cmd /c ipconfig /all");
			BufferedReader bufferedReader = new BufferedReader(
					new InputStreamReader(process.getInputStream()));
			while ((line = bufferedReader.readLine()) != null) {
				System.out.println("line="+line);
				if (line.indexOf("Physical Address. . . . . . . . . :") != -1) {
					if (line.indexOf(":") != -1) {
						physicalAddress = line.substring(line.indexOf(":") + 2);
						break; // 找到MAC,推出循环
					}
				}
			}
			//process.waitFor();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return physicalAddress;
	}

	public static void main(String[] args) {
		System.out.println("本机的MAC地址是: " + ReadMAC.checkPhysicalAddress());
	}
}