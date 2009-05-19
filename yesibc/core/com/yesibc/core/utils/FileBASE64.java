package com.yesibc.core.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class FileBASE64 {

	public static File saveFile(String fileContent, String filePath) throws IOException {
		if (fileContent == null) {
			return null;
		}
		BASE64Decoder decoder = new BASE64Decoder();
		byte[] picBinary = decoder.decodeBuffer(fileContent);
		File file = new File(filePath);
		FileOutputStream out = new FileOutputStream(file);
		out.write(picBinary);
		out.close();
		return file;
	}

	public static String readFile(String filePath) {
		try {
			sun.misc.BASE64Encoder encoder = new BASE64Encoder();
			File file = new File(filePath);
			java.io.FileReader reader = new FileReader(file);
			char[] c = new char[1024];
			// FileInputStream in = new FileInputStream(file);
			// byte[] b = new byte[1024];
			StringBuffer buf = new StringBuffer();
			int index = -1;
			while ((index = reader.read(c)) > 0) {
				buf.append(c, 0, index);
			}
			String result = encoder.encode(buf.toString().getBytes());
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
