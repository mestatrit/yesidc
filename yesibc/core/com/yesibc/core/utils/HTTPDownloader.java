package com.yesibc.core.utils;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.net.Socket;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;

/**
 * HTTP的多线程下载工具。
 * 
 * @author 赵学庆 www.java2000.net
 */
public class HTTPDownloader extends Thread {
	// 要下载的页面
	private String page;

	// 保存的路径
	private String savePath;

	// 线程数
	private int threadNumber = 2;

	// 来源地址
	private String referer;

	private String cookie;

	int threadPointer = 0;

	private Map<Integer, HTTPDownloaderThread> threadPool = new HashMap<Integer, HTTPDownloaderThread>(); // 线程迟

	// 最小的块尺寸。如果文件尺寸除以线程数小于这个，则会减少线程数。
	private int MIN_BLOCK = 10 * 1024;

	public static void main(String[] args) throws Exception {
		HTTPDownloader d = new HTTPDownloader("http://www.webrenderer.com/products/swing/product/downlink.php?ver=winent",
				null, "d:/a.rar", 2, null);
		d.down();
	}

	public void run() {
		try {
			down();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 下载操作
	 * 
	 * @throws Exception
	 */
	public void down() throws Exception {
		URL url = new URL(page); // 创建URL
		URLConnection con = url.openConnection(); // 建立连接
		con.setRequestProperty("Referer", referer == null ? page : referer);
		con.setRequestProperty("UserAgent",
				"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; flashget)");
		int contentLen = con.getContentLength(); // 获得资源长度
		if ((contentLen / MIN_BLOCK + 1) < threadNumber) {
			threadNumber = contentLen / MIN_BLOCK + 1; // 调整下载线程数
		}
		if (threadNumber > 10) {
			threadNumber = 10;
		}
		int begin = 0;
		int step = contentLen / threadNumber + 1;
		int end = 0;
		HTTPDownloaderThread thread;
		for (threadPointer = 0; threadPointer < threadNumber; threadPointer++) {
			end += step;
			if (end > contentLen) {
				end = contentLen;
			}
			thread = new HTTPDownloaderThread(this, threadPointer, begin, end);
			threadPool.put(threadPointer, thread);
			thread.start();
			begin = end;
		}
	}

	/**
	 * 一个线程完活了。
	 * 
	 * @param id
	 *            完活的线程id
	 */
	public synchronized void finished(int id) {
		threadNumber--;
		threadPool.remove(id);
		if (threadNumber <= 0) {
			System.out.println("FINISHED:" + savePath);
			File f1 = new File(savePath + ".tmp");
			File f2 = new File(savePath);
			// 如果目标文件已经存在，则尝试删除它
			// 最多尝试3次，间隔1秒钟。
			int times = 3;
			while (f2.exists() && times > 0) {
				if (f2.delete()) {
					break;
				}
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				times--;
			}
			if (!f2.exists()) {
				if (!f1.renameTo(f2)) {
					System.out.println("改名失败!");
				}
			} else {
				System.out.println("目标文件存在，且无法删除,无法改名");
			}
		} else {
			int size = 0;
			HTTPDownloaderThread o = null;
			// 尝试查找一个可以分担的线程
			for (HTTPDownloaderThread thread : threadPool.values()) {
				if (thread.endPos - thread.curPos > size) {
					size = thread.endPos - thread.curPos;
					o = thread;
				}
			}
			if (size > MIN_BLOCK * 2) {
				if (o.isAlive()) {
					int endPos = o.endPos;
					int beginPos = o.endPos - ((o.endPos - o.curPos) / 2);
					o.endPos = beginPos;
					threadNumber++;
					threadPointer++;
					HTTPDownloaderThread thread = new HTTPDownloaderThread(
							this, threadPointer, beginPos, endPos);
					threadPool.put(threadPointer, thread);
					System.out.println("A Help Thread for " + o.id
							+ " is started with:" + threadPointer);
					thread.start();
				}
			}
		}
	}

	public HTTPDownloader() {
	}

	/**
	 * 下载
	 * 
	 * @param page
	 *            被下载的页面
	 * @param savePath
	 *            保存的路径
	 */
	public HTTPDownloader(String page, String savePath) {
		this(page, savePath, 10);
	}

	/**
	 * 下载
	 * 
	 * @param page
	 *            被下载的页面
	 * @param savePath
	 *            保存的路径
	 * @param threadNumber
	 *            线程数
	 */
	public HTTPDownloader(String page, String savePath, int threadNumber) {
		this(page, page, savePath, 10, null);
	}

	/**
	 * 下载
	 * 
	 * @param page
	 *            被下载的页面
	 * @param savePath
	 *            保存的路径
	 * @param threadNumber
	 *            线程数
	 * @param referer
	 *            来源
	 */
	public HTTPDownloader(String page, String referer, String savePath,
			int threadNumber, String cookie) {
		this.page = page;
		this.savePath = savePath;
		this.threadNumber = threadNumber;
		this.referer = referer;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public int getThreadNumber() {
		return threadNumber;
	}

	public void setThreadNumber(int threadNumber) {
		this.threadNumber = threadNumber;
	}

	public String getReferer() {
		return referer;
	}

	public void setReferer(String referer) {
		this.referer = referer;
	}

	public String getCookie() {
		return cookie;
	}

	public void setCookie(String cookie) {
		this.cookie = cookie;
	}
}

/**
 * 下载线程
 * 
 * @author 赵学庆 www.java2000.net
 */
class HTTPDownloaderThread extends Thread {
	HTTPDownloader manager;

	int startPos;

	int endPos;

	int id;

	int curPos;

	int BUFFER_SIZE = 40960;

	int readByte = 0;

	HTTPDownloaderThread(HTTPDownloader manager, int id, int startPos,
			int endPos) {
		this.id = id;
		this.manager = manager;
		this.startPos = startPos;
		this.endPos = endPos;
	}

	public void run() {
		System.out.println("线程" + id + "启动," + startPos + "-" + endPos);
		// 创建一个buff
		BufferedInputStream bis = null;
		RandomAccessFile fos = null;
		// 缓冲区大小
		byte[] buf = new byte[BUFFER_SIZE];
		boolean timeout = false;
		Socket socket = null;
		try {
			curPos = startPos;
			File file = new File(manager.getSavePath() + ".tmp");
			// 创建RandomAccessFile
			fos = new RandomAccessFile(file, "rw");
			// 从startPos开始
			fos.seek(startPos);
			int index = manager.getPage().indexOf("/", 8);
			String host = manager.getPage().substring(7, index);
			// System.out.println(host);
			socket = new Socket(host, 80);
			socket.setSoTimeout(30000);
			// 写入数据
			BufferedWriter wr = new BufferedWriter(new OutputStreamWriter(
					socket.getOutputStream(), "UTF-8"));
			StringBuilder b = new StringBuilder();
			b.append("GET " + manager.getPage().substring(index)
					+ " HTTP/1.1rn");
			b.append("Host: " + host + "rn");
			b.append("Referer: "
					+ (manager.getReferer() == null ? manager.getPage()
							: manager.getReferer()) + "rn");
			b
					.append("UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; flashget; rn");
			b.append("Range: bytes=" + startPos + "-" + endPos + "rn");
			b.append("rn");
			// System.out.println(b.toString());
			wr.write(b.toString());
			wr.flush();
			// 下面一段向根据文件写入数据,curPos为当前写入的未知,这里会判断是否小于endPos,
			// 如果超过endPos就代表该线程已经执行完毕
			bis = new BufferedInputStream(socket.getInputStream());
			// 读取直到换行
			int ch;
			boolean foundBR = false;
			while (true) {
				ch = bis.read();
				if (ch == 0xD) {
					ch = bis.read();
					if (ch == 0xA) {
						if (foundBR) {
							break;
						}
						foundBR = true;
					} else {
						foundBR = false;
					}
				} else {
					foundBR = false;
				}
			}
			int len = -1;
			while (curPos < endPos) {
				// System.out.println(id + "=" + (endPos - curPos));
				len = bis.read(buf, 0, BUFFER_SIZE);
				if (len == -1) {
					break;
				}
				fos.write(buf, 0, len);
				// System.out.println(id + "=Write OK!");
				curPos = curPos + len;
				if (curPos > endPos) {
					// 获取正确读取的字节数
					readByte += len - (curPos - endPos) + 1;
				} else {
					readByte += len;
				}
			}
			System.out.println("线程" + id + "已经下载完毕:" + readByte);
		} catch (Exception ex) {
			timeout = true;
		} finally {
			if (bis != null) {
				try {
					bis.close();
				} catch (Exception e) {
					System.out.println("关闭文件失败(1)!");
				}
			}
			if (fos != null) {
				try {
					fos.close();
				} catch (Exception e) {
					System.out.println("关闭文件失败(2)!");
				}
			}
			if (socket != null) {
				try {
					socket.close();
				} catch (Exception e) {
					System.out.println("关闭链接失败!");
				}
			}
		}
		if (timeout) {
			System.out.println(id + " timeout, restart...");
			new HTTPDownloaderThread(manager, id, curPos, endPos).start();
		} else {
			manager.finished(id);
		}
	}
}