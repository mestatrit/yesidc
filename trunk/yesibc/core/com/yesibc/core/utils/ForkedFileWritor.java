/**
 * $Id: ForkedFileWritor.java,v 1.1 2008/03/31 01:53:41 abel Exp $
 */
package com.yesibc.core.utils;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @author Andy.gao create time: Jan 10, 2008 11:07:06 AM
 */

public class ForkedFileWritor extends Thread {
	private static final Log log = LogFactory.getLog(ForkedFileWritor.class);

	//
	byte[][] contents;
	String path;

	//
	public ForkedFileWritor(String path, byte[][] contents) {
		this.path = path;
		this.contents = contents;
	}

	public void run() {

		if (path == null) {
			SimpleDateFormat yMdHm = new SimpleDateFormat("yyyyMMdd-HHmm");
			path = yMdHm.format(new Date(System.currentTimeMillis()));
		}

		log.debug("start gen file " + path);

		FileOutputStream fos = null;
		try {

			fos = new FileOutputStream(path);
			for (byte[] content : contents) {
				fos.write(content);
			}

		} catch (FileNotFoundException e) {
			log.error("can not write file " + path, e);
		} catch (IOException e) {
			log.error("exception happend when write file " + path, e);
		} finally {
			if (fos != null)
				try {
					fos.close();
				} catch (IOException e) {
					log.error(
							"exception happend when close FileOutputStream for "
									+ path, e);
				}
		}
	}
}
