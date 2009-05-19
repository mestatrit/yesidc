/**
 * $Id: ExcelFile.java,v 1.3 2008/07/23 05:35:05 abel Exp $
 */

package com.yesibc.core.utils;

import java.io.File;

import com.yesibc.core.exception.ApplicationException;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Dec 11, 2007 1:20:38 PM
 */
public class ExcelFile {

	String errMsg = "";

	int curSheet = 0;
	int curRow = 0;
	WritableWorkbook wwb = null;
	WritableSheet ws = null;
	String sheetName = "";

	/**
	 * @return Returns the errMsg.
	 */
	public String getErrMsg() {
		return this.errMsg;
	}

	/**
	 * @param errMsg
	 *            The errMsg to set.
	 */
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	/**
	 * @return Returns the curSheet.
	 */
	public int getCurSheet() {
		return this.curSheet;
	}

	/**
	 * @param curSheet
	 *            The curSheet to set.
	 */
	public void setCurSheet(int curSheet) {
		this.curSheet = curSheet;
	}

	/**
	 * @return Returns the curRow.
	 */
	public int getCurRow() {
		return this.curRow;
	}

	/**
	 * @param curRow
	 *            The curRow to set.
	 */
	public void setCurRow(int curRow) {
		this.curRow = curRow;
	}

	/**
	 * @return Returns the wwb.
	 */
	public WritableWorkbook getWwb() {
		return this.wwb;
	}

	/**
	 * @param wwb
	 *            The wwb to set.
	 */
	public void setWwb(WritableWorkbook wwb) {
		this.wwb = wwb;
	}

	/**
	 * @return Returns the ws.
	 */
	public WritableSheet getWs() {
		return this.ws;
	}

	/**
	 * @param ws
	 *            The ws to set.
	 */
	public void setWs(WritableSheet ws) {
		this.ws = ws;
	}

	/**
	 * @return Returns the sheetName.
	 */
	public String getSheetName() {
		return this.sheetName;
	}

	/**
	 * @param sheetName
	 *            The sheetName to set.
	 */
	public void setSheetName(String sheetName) {
		this.sheetName = sheetName;
	}

	/**
	 * 
	 * @param excelfile
	 * @param sheetName
	 */
	public ExcelFile() {

	}

	/**
	 * initalize
	 * 
	 * @param excelfile
	 * @param sheetName
	 */
	public ExcelFile(File excelfile, String sheetName) throws ApplicationException {
		try {
			this.wwb = Workbook.createWorkbook(excelfile);
			this.ws = wwb.createSheet(sheetName, this.curSheet);
			this.sheetName = sheetName;
			this.curSheet++;
		} catch (Exception ex) {
			this.errMsg = "ExcelFile initalizing  exception!";
			throw new ApplicationException(errMsg, ex);
		}
	}

	public void close() {
		try {
			if (this.wwb != null) {
				this.wwb.close();
			}
		} catch (Exception ex) {
			this.errMsg = "close Exception!";
		}
	}

	public void createSheet(String sheetName1) throws ApplicationException {
		try {
			this.ws = wwb.createSheet(sheetName1, this.curSheet);
			this.sheetName = sheetName1;
			this.curSheet++;
		} catch (Exception ex) {
			this.errMsg = "ExcelFile initalizing  exception!";
			throw new ApplicationException(errMsg, ex);
		}
	}

	private void addCell(int col, int row, String fieldName)
			throws ApplicationException {
		try {
			Label label = new jxl.write.Label(col, row, fieldName);
			ws.addCell(label);
		} catch (Exception ex) {
			this.errMsg = "add cell exception!";
			throw new ApplicationException(errMsg, ex);
		}
	}

	/**
	 * write to last row
	 * 
	 * @param fieldName
	 */
	public void addRow(String[] fieldName) throws ApplicationException {
		try {
			int len = fieldName.length;
			for (int j = 0; j < len; j++) {
				this.addCell(j, curRow, fieldName[j]);
			}
			this.curRow++;
		} catch (Exception ex) {
			this.errMsg = "add row exception!";
			throw new ApplicationException(errMsg, ex);
		}
	}

	public void write() throws ApplicationException {
		try {
			this.wwb.write();
		} catch (Exception ex) {
			this.errMsg = "Write to excel file exception!";
			throw new ApplicationException(errMsg, ex);
		}
	}

	public void mergeCell(int column, int row, int column1, int row1)
			throws ApplicationException {
		try {
			this.ws.mergeCells(column, row, column1, row1);
		} catch (Exception ex) {
			this.errMsg = "merge Cell exception!";
			throw new ApplicationException(errMsg, ex);
		}
	}
}