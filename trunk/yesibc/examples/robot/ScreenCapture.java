package robot;

/**
 * <pre>
 * 在Robot类中有一个比较特殊的method： 
 * BufferedImage createScreenCapture(Rectangle screenRect) 
 * 顾名思义，当我们使用这个这个method 时，就会建立一张影像，而这张影像中存的的则是我们从屏幕撷取出来的像素（pixel）。而使用这个method，就会传回一个BufferedImage类的对象，我们可以根据我们的需要来对它进行处理。下面是个简单的范例，在这个范例中，程序会在使用者希望停留的秒数钟后截取屏幕，并将文件用jpg格式保存。 
 * </pre>
 * @(#)ScreenCapture.java 2001/09/24  
 * Usage: java ScreenCapture [-d seconds] [-f filename] 
 * @Author  
 * Cheng-Yu Chang <ccy0927@neural.ee.ncku.edu.tw> 
 * @License 
 * GPL(GNU GENERAL PUBLIC LICENSE) 
 * http://www.gnu.org/copyleft/gpl.html  
 */

import java.awt.AWTException;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ScreenCapture {
	public static void screenCapture(int seconds, String filename) {
		Robot robot = null;
		// 产生 Robot 物件，记着要 catch AWTException
		try {
			robot = new Robot();
			// 延迟使用者输入的秒数
			robot.delay(seconds);
			// 将截取的image转换成jpg格式
			OutputStream f = new FileOutputStream(filename);
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(f);
			encoder.encode(robot.createScreenCapture(new Rectangle(Toolkit.getDefaultToolkit().getScreenSize())));
			f.close();
		} catch (AWTException e1) {
		} catch (IOException e2) {
		}
	}

	// 使用说明

	private static void usage() {
		System.out.println("Usage: java ScreenCapture [-d seconds] [-f filename]");
		System.out.println("\t-d Seconds to delay before capturing screen");
		System.out.println("\t-f JPG filename to save");
		System.exit(0);
	}

	public static void main(String args[]) {
		int s = 0;
		String filename = "ScreenCapture.jpg";
		// 判定输入的参数
		if (args.length == 0)
			usage();
		else {
			for (int i = 0; i < args.length; i++) {
				if (args[i].startsWith("-")) {
					if (args[i].equals("-d")) {
						if (i < args.length - 1)
							s = Integer.parseInt(args[++i]);
						else
							usage();
					}

					if (args[i].equals("-f")) {
						if (i < args.length - 1)
							filename = args[++i];
						else
							usage();
					}
				} else
					usage();
			}
		}
		screenCapture(s * 1000, filename);
		System.exit(0);
	}

}