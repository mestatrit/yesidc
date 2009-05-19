package com.yesibc.core.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Reader;
import java.io.Writer;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;

public class FileUtils {

	/**
	 * 获得控制台用户输入的信息
	 * 
	 * @return
	 * @throws IOException
	 */
	public String getInputMessage() throws IOException {
		System.out.println("请输入您的命令∶");
		byte buffer[] = new byte[1024];
		int count = System.in.read(buffer);
		char[] ch = new char[count - 2];// 最后两位为结束符，删去不要
		for (int i = 0; i < count - 2; i++)
			ch[i] = (char) buffer[i];
		String str = new String(ch);
		return str;
	}

	/**
	 * 以文件流的方式复制文件 该方法经过测试，支持中文处理，并且可以复制多种类型，比如txt，xml，jpg，doc等多种格式
	 * 
	 * @param src
	 *            文件源目录
	 * @param dest
	 *            文件目的目录
	 * @throws IOException
	 */
	public void copyFile(String src, String dest) throws IOException {
		FileInputStream in = new FileInputStream(src);
		File file = new File(dest);
		if (!file.exists())
			file.createNewFile();
		FileOutputStream out = new FileOutputStream(file);
		int c;
		byte buffer[] = new byte[1024];
		while ((c = in.read(buffer)) != -1) {
			for (int i = 0; i < c; i++)
				out.write(buffer[i]);
		}
		in.close();
		out.close();
	}

	/**
	 * 利用PrintStream写文件
	 */
	public static void WriteByPrintStream(String filePath, String contents) {
		try {
			FileOutputStream out = new FileOutputStream(filePath);
			PrintStream p = new PrintStream(out);
			p.println(contents);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 利用StringBuffer写文件 该方法可以设定使用何种编码，有效解决中文问题。
	 * 
	 * @throws IOException
	 */
	public static void WriteByFOS(String filePath, String contents) throws IOException {
		File file = new File(filePath);
		if (!file.exists())
			file.createNewFile();
		FileOutputStream out = new FileOutputStream(file, true);
		out.write(contents.getBytes("utf-8"));
		out.close();
	}

	/**
	 * 文件重命名
	 * 
	 * @param path
	 *            文件目录
	 * @param oldname
	 *            原来的文件名
	 * @param newname
	 *            新文件名
	 */
	public void renameFile(String path, String oldname, String newname) {
		if (!oldname.equals(newname)) {// 新的文件名和以前文件名不同时,才有必要进行重命名
			File oldfile = new File(path + "/" + oldname);
			File newfile = new File(path + "/" + newname);
			if (newfile.exists())// 若在该目录下已经有一个文件和新文件名相同，则不允许重命名
				System.out.println(newname + "已经存在！");
			else {
				oldfile.renameTo(newfile);
			}
		}
	}

	/**
	 * 转移文件目录
	 * 
	 * @param filename
	 *            文件名
	 * @param oldpath
	 *            旧目录
	 * @param newpath
	 *            新目录
	 * @param cover
	 *            若新目录下存在和转移文件具有相同文件名的文件时，是否覆盖新目录下文件，cover=true将会覆盖原文件，否则不操作
	 */
	public void changeDirectory(String filename, String oldpath, String newpath, boolean cover) {
		if (!oldpath.equals(newpath)) {
			File oldfile = new File(oldpath + "/" + filename);
			File newfile = new File(newpath + "/" + filename);
			if (newfile.exists()) {// 若在待转移目录下，已经存在待转移文件
				if (cover)// 覆盖
					oldfile.renameTo(newfile);
				else
					System.out.println("在新目录下已经存在：" + filename);
			} else {
				oldfile.renameTo(newfile);
			}
		}
	}

	/**
	 * 利用FileInputStream读取文件
	 * 
	 * @param path
	 * @return
	 * @throws IOException
	 */
	public String FileInputStreamDemo(String path) throws IOException {
		File file = new File(path);
		if (!file.exists() || file.isDirectory())
			throw new FileNotFoundException();
		FileInputStream fis = new FileInputStream(file);
		byte[] buf = new byte[1024];
		StringBuffer sb = new StringBuffer();
		while ((fis.read(buf)) != -1) {
			sb.append(new String(buf));
			buf = new byte[1024];// 重新生成，避免和上次读取的数据重复
		}
		return sb.toString();
	}

	/**
	 * 利用BufferedReader读取 利用BufferedReader和BufferedWriter效率会更高一点
	 * 
	 * @param path
	 * @return
	 * @throws IOException
	 */
	public String BufferedReaderDemo(String path) throws IOException {
		File file = new File(path);
		if (!file.exists() || file.isDirectory())
			throw new FileNotFoundException();
		BufferedReader br = new BufferedReader(new FileReader(file));
		String temp = null;
		StringBuffer sb = new StringBuffer();
		temp = br.readLine();
		while (temp != null) {
			sb.append(temp + " ");
			temp = br.readLine();
		}
		return sb.toString();
	}

	/**
	 * 利用dom4j读取xml文件
	 * 
	 * @param path
	 *            文件目录
	 * @return
	 * @throws DocumentException
	 * @throws IOException
	 */
	public Document readXml(String path) throws DocumentException, IOException {
		File file = new File(path);
		BufferedReader bufferedreader = new BufferedReader(new FileReader(file));
		SAXReader saxreader = new SAXReader();
		Document document = (Document) saxreader.read(bufferedreader);
		bufferedreader.close();
		return document;
	}

	/** */
	/**
	 * 创建文件夹
	 * 
	 * @param path
	 *            目录
	 */
	public void createDir(String path) {
		File dir = new File(path);
		if (!dir.exists())
			dir.mkdir();
	}

	/**
	 * 创建新文件
	 * 
	 * @param path
	 *            目录
	 * @param filename
	 *            文件名
	 * @throws IOException
	 */
	public void createFile(String path, String filename) throws IOException {
		File file = new File(path + "/" + filename);
		if (!file.exists())
			file.createNewFile();
	}

	/**
	 * 删除文件
	 * 
	 * @param path
	 *            目录
	 * @param filename
	 *            文件名
	 */
	public void delFile(String path, String filename) {
		File file = new File(path + "/" + filename);
		if (file.exists() && file.isFile())
			file.delete();
	}

	/**
	 * 要利用File类的delete()方法删除目录时， 必须保证该目录下没有文件或者子目录，否则删除失败，
	 * 因此在实际应用中，我们要删除目录，必须利用递归删除该目录下的所有子目录和文件， 然后再删除该目录。 递归删除文件夹
	 * 
	 * @param path
	 */
	public void delDir(String path) {
		File dir = new File(path);
		if (dir.exists()) {
			File[] tmp = dir.listFiles();
			for (int i = 0; i < tmp.length; i++) {
				if (tmp[i].isDirectory()) {
					delDir(path + "/" + tmp[i].getName());
				} else {
					tmp[i].delete();
				}
			}
			dir.delete();
		}
	}

	public static void writeByEncode(String filePath, String str, String encode) {
		try {
			FileOutputStream fos = new FileOutputStream(filePath);
			Writer out = new OutputStreamWriter(fos, encode);
			out.write(str);
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static String readByEncode(String filePath, String encode) {
		StringBuffer buffer = new StringBuffer();
		try {
			FileInputStream fis = new FileInputStream(filePath);
			InputStreamReader isr = new InputStreamReader(fis, encode);
			Reader in = new BufferedReader(isr);
			int ch;
			while ((ch = in.read()) > -1) {
				buffer.append((char) ch);
			}
			in.close();
			return buffer.toString();
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

	public static void main(String[] args) {
		String filePath = "D:/Cetelem/test/test.txt";
		try {
			for (int i = 0; i < 10; i++) {
				WriteByFOS(filePath, "测试一下abc\n");
				// WriteByPrintStream(filePath, "测试一下abc");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
