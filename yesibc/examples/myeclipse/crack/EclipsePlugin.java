package myeclipse.crack;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * 执行完之后，将控制台中打印出的执行结果，直接复制到下面这个文件中： MyEclipse
 * 7.0\configuration\org.eclipse.equinox.simpleconfigurator\bundles.info
 * 
 * @author Administrator
 * 
 */

public class EclipsePlugin {
	private String path;

	public EclipsePlugin(String path) {
		this.path = path;
	}

	public void print() {
		List<String> list = getFileList(path);
		if (list == null) {
			return;
		}

		int length = list.size();
		for (int i = 0; i < length; i++) {
			String result = "";
			String thePath = getFormatPath(getString(list.get(i)));
			File file = new File(thePath);
			if (file.isDirectory()) {
				String fileName = file.getName();
				if (fileName.indexOf("_") < 0) {
					continue;
				}
				String[] filenames = fileName.split("_");
				String filename1 = filenames[0];
				String filename2 = filenames[1];
				result = filename1 + "," + filename2 + ",file:/" + path + "\\" + fileName + "\\,4,false";
				System.out.println(result);
			} else if (file.isFile()) {
				String fileName = file.getName();
				if (fileName.indexOf("_") < 0) {
					continue;
				}
				int last = fileName.lastIndexOf("_");// 最后一个下划线的位置
				String filename1 = fileName.substring(0, last);
				String filename2 = fileName.substring(last + 1, fileName.length() - 4);
				result = filename1 + "," + filename2 + ",file:/" + path + "\\" + fileName + ",4,false";
				System.out.println(result);
			}
		}
	}

	public List<String> getFileList(String path) {
		path = getFormatPath(path);
		path = path + "/";
		File filePath = new File(path);
		if (!filePath.isDirectory()) {
			return null;
		}
		String[] filelist = filePath.list();
		List<String> filelistFilter = new ArrayList<String>();

		for (int i = 0; i < filelist.length; i++) {
			String tempfilename = getFormatPath(path + filelist[i]);
			filelistFilter.add(tempfilename);
		}
		return filelistFilter;
	}

	public String getString(Object object) {
		if (object == null) {
			return "";
		}
		return String.valueOf(object);
	}

	public String getFormatPath(String path) {
		path = path.replaceAll("\\\\", "/");
		path = path.replaceAll("//", "/");
		return path;
	}

	public static void main(String[] args) {
		new EclipsePlugin("D:/Java/eclipse-plugin/toString/eclipse/plugins").print();
		new EclipsePlugin("D:/Java/eclipse-plugin/Jadclipse").print();
		new EclipsePlugin("D:/Java/eclipse-plugin/jad3.3/eclipse/plugins").print();
	}
}
