package com.yesibc.core.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FileAccess {

	private String fileName, errorMessage;
	private int columns, rowCount;

	/* TextFileReader 的结构函数 */
	public FileAccess() {
		reset();
	}

	public void reset() {
		fileName = new String("");
		errorMessage = new String("");
		columns = 0;
		rowCount = 0;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public String getFileName() {
		return fileName;
	}

	public int getRows() {
		return rowCount;
	}

	public int getColumns() {
		return columns;
	}

	/*
	 * 将文件内容返回到一个字符串里去 如果有错误返回 null
	 */
	public String getContent() {
		String content = "";
		File file = new File(fileName);

		if (!file.exists()) {
			setErrorMessage("Error: The file '" + fileName + "' does not exists.");
			return content;
		} else if (file != null) {
			try {
				BufferedReader reader = new BufferedReader(new FileReader(file));
				String inLine = reader.readLine();

				while (inLine != null) {
					if (inLine.length() + 1 > columns)
						columns = inLine.length() + 1;

					content += (inLine + System.getProperty("line.separator"));
					inLine = reader.readLine();
					rowCount++;
				}

				return content;

			} catch (IOException e) {
				setErrorMessage("Error reading the file: " + e.getMessage());
				return content;
			}
		} else {
			setErrorMessage("UnKnown Error!");
			return content;
		}

	}

	/* TextFileWriter 部分开始 */

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	/*
	 * 
	 * 对文件写入新的内容writemod的方式有2种 a：如果文件存在，新的内容追加到文件。否则创建一个新文件 o:
	 * 如果文件存在，覆盖旧文件的内容。否则创建一个新文件 writer: 王海波 2001/11/30
	 */

	public boolean Write(String strInputContent, char writemod) {
		try {
			File fso = new File(fileName);

			String strContent = new String("");

			BufferedWriter writer = new BufferedWriter(new FileWriter(fso));

			switch (writemod) {
			case 'a': // 最加新的内容到文件

				FileAccess objFRead = new FileAccess();
				String oldContent = new String("");

				objFRead.setFileName(fileName);
				oldContent = objFRead.getContent();

				strContent = oldContent + strInputContent;

				break;

			case 'o': // 新内容覆盖旧文件的内容

				strContent = strInputContent;
				break;

			default:

				strContent = strInputContent;
				break;
			}

			writer.write(strContent);

			writer.close();

			return true;

		} catch (IOException e) {
			setErrorMessage("Error writting the file: " + e.getMessage());
			return false;
		}

	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
