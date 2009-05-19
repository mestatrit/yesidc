/**
 * $Id: JXLlUtil.java,v 1.0  2007-5-14 ����05:06:51 davidye Exp $
 */

package com.yesibc.core.utils;

import java.io.FileInputStream;
import java.io.InputStream;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

/**
 * @author David.ye o_olle_e@hotmail.com create time: 2007-5-14 ����05:06:51
 */
public class JXLlUtil {
	
	private jxl.Workbook rwb  ;
	private Sheet rs;
	private Cell cell;
	private int totalX;
	private int totalY;
	private String contents;

	/**
	 * @return Returns the cell.
	 */
	public Cell getCell() {
		return this.cell;
	}

	/**
	 * xΪ�У�yΪ��
	 * @return Returns the cell.
	 */
	public Cell getCell(int x,int y) {
		if(rs==null){
			return null;
		}
		if(this.getTotalX()<=x || this.getTotalY()<=y){
			return null;
		}
		this.cell = rs.getCell(y,x);
		return this.cell;
	}
	
	/**
	 * @param cell The cell to set.
	 */
	public void setCell(Cell cell) {
		this.cell = cell;
	}

	/**
	 * @return Returns the rs.
	 */
	public Sheet getRs() {
		return this.rs;
	}

	/**
	 * @return Returns the rs.
	 */
	public Sheet getRs(int n) {
		if(rwb==null){
			return null;
		}
		this.rs = rwb.getSheet(n);
		return this.rs;
	}

	/**
	 * @param rs The rs to set.
	 */
	public void setRs(Sheet rs) {
		this.rs = rs;
	}

	public JXLlUtil(String sourcefile) {
		this.loadFile(sourcefile);
	}

	private void loadFile(String sourcefile) {
		InputStream is;
		try {
			is = new FileInputStream(sourcefile);
			rwb = Workbook.getWorkbook(is);
			rs = rwb.getSheet(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * @return Returns the rwb.
	 */
	public jxl.Workbook getRwb() {
		return this.rwb;
	}

	/**
	 * @param rwb The rwb to set.
	 */
	public void setRwb(jxl.Workbook rwb) {
		this.rwb = rwb;
	}

	public static void main(String[] args){
		
	}

	/**
	 * @return Returns the contents.
	 */
	public String getContents() {
		if(this.cell== null){
			return null;
		}
		this.contents = this.cell.getContents();
		return this.contents;
	}

	/**
	 * @param contents The contents to set.
	 */
	public void setContents(String contents) {
		this.contents = contents;
	}

	/**
	 * @return Returns the totalX.
	 */
	public int getTotalX() {
		if(rs==null){
			return -1;
		}
		this.totalX = this.rs.getRows();
		return this.totalX;
	}

	/**
	 * @param totalX The totalX to set.
	 */
	public void setTotalX(int totalX) {
		this.totalX = totalX;
	}

	/**
	 * @return Returns the totalY.
	 */
	public int getTotalY() {
		if(rs==null){
			return -1;
		}
		this.totalY = this.rs.getColumns();
		return this.totalY;
	}

	/**
	 * @param totalY The totalY to set.
	 */
	public void setTotalY(int totalY) {
		this.totalY = totalY;
	}

}
