/**
 * $Id: ReadProperties.java,v 1.3 2009/02/25 11:49:02 abel Exp $
 */

package com.yesibc.core.utils;

import java.awt.Image;
import java.awt.Toolkit;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.yesibc.core.exception.ApplicationException;


/**
 * @author Abel.Ye o_olle_e@hotmail.com create time: Nov 2, 2007 2:24:12 PM
 */
public class ReadProperties {

	private static final Log log = LogFactory.getLog(ReadProperties.class);

	private ResourceBundle bundle = null;
	private static Map<String, ResourceBundle> map = new HashMap<String, ResourceBundle>();
	private static ReadProperties readProperties = null;
	private static Map<String, Properties> mapJars = new HashMap<String, Properties>();

	/**
	 * @param sourceFile
	 * @return
	 */
	public static ReadProperties getInst(String sourceFile) {
		if (readProperties == null) {
			readProperties = new ReadProperties();
		}
		if (!map.containsKey(sourceFile)) {
			ResourceBundle bundle = ResourceBundle.getBundle(sourceFile);
			map.put(sourceFile, bundle);
		}
		return readProperties;
	}

	/**
	 * @param sourceFile
	 * @return
	 */
	public static ReadProperties getInst(String sourceFile, Locale locale) {
		if (locale == null) {
			return getInst(sourceFile);
		}
		if (readProperties == null) {
			readProperties = new ReadProperties();
		}
		if (!map.containsKey(sourceFile + "_" + locale.toString())) {
			ResourceBundle bundle = ResourceBundle.getBundle(sourceFile);
			map.put(sourceFile + "_" + locale.toString(), bundle);
		}
		return readProperties;
	}

	/**
	 * @param sourceFile
	 * @param key
	 * @return
	 */
	public String getLocaleValuesByKey(String sourceFile, String key, Locale locale) {
		if (locale == null) {
			return getValuesByKey(sourceFile, key);
		}
		bundle = map.get(sourceFile + "_" + locale.toString());
		if (bundle == null) {
			return "";
		}
		return bundle.getString(key);
	}

	/**
	 * @param sourceFile
	 * @param key
	 * @return
	 */
	public String getValuesByKey(String sourceFile, String key) {
		bundle = map.get(sourceFile);
		if (bundle == null) {
			return "";
		}
		return bundle.getString(key);
	}

	/**
	 * @param s
	 * @param class1
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Image getImageFromJar(String s, Class class1) {
		Image image = null;
		InputStream inputstream = class1.getResourceAsStream(s);
		if (inputstream != null) {
			ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
			try {
				byte abyte0[] = new byte[1024];
				for (int i = 0; (i = inputstream.read(abyte0)) >= 0;) {
					bytearrayoutputstream.write(abyte0, 0, i);
				}

				image = Toolkit.getDefaultToolkit().createImage(bytearrayoutputstream.toByteArray());
			} catch (IOException ioexception) {
				ioexception.printStackTrace();
			}
		}
		return image;
	}

	/**
	 * @param s
	 * @param class1
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static String getTextFromJar(String s, Class class1) {
		String s1 = "";
		InputStream inputstream = class1.getResourceAsStream(s);
		if (inputstream != null) {
			BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
			String s2;
			try {
				while ((s2 = bufferedreader.readLine()) != null) {
					s1 = s1 + s2 + "\n";
				}
			} catch (IOException ioexception) {
				ioexception.printStackTrace();
			}
		}
		return s1;
	}

	public static String getValueFromJar(String LibLocation, String jarFilePath, String filePath, String key)
			throws ApplicationException {
		if (jarFilePath == null || filePath == null || key == null) {
			throw new ApplicationException("Parameters must not be null.");
		}
		String[] classpathArray = getAllLibName(LibLocation);
		if (classpathArray == null) {
			log.info("*****************************************");
			throw new ApplicationException("classpath does not contain jarFile:" + jarFilePath);
		}

		Properties properties = null;
		String mapKey = jarFilePath + "_" + filePath;
		if (mapJars.containsKey(mapKey)) {
			properties = mapJars.get(mapJars);
		} else {
			try {
				properties = putToMap(LibLocation, jarFilePath, filePath);
			} catch (IOException e) {
				throw new ApplicationException("Read from Jar failed.Jar file is " + jarFilePath + "||" + e.getMessage(), e);
			}
		}
		if (properties == null) {
			return null;
		}
		return properties.getProperty(key);
	}

	/**
	 * @param jarFilePath
	 * @param filePath
	 * @return
	 * @throws IOException
	 * @throws IOException
	 */
	private static Properties putToMap(String LibLocation, String jarFilePath, String filePath) throws IOException {
		Properties properties = null;
		InputStream input = null;
		JarFile jarFile = null;
		String[] classpathArray = getAllLibName(LibLocation);
		try {
			for (String tmp : classpathArray) {
				if (tmp.indexOf(jarFilePath) > -1) {
					jarFilePath = tmp;
				}
			}
			jarFile = new JarFile(jarFilePath);
			JarEntry entry = jarFile.getJarEntry(filePath);
			input = jarFile.getInputStream(entry);
			properties = new Properties();
			properties.load(input);
		} finally {
			try {
				input.close();
			} catch (IOException e) {
				throw e;
			}
			try {
				jarFile.close();
			} catch (IOException e) {
				throw e;
			}
		}
		mapJars.put(jarFilePath + "_" + filePath, properties);
		return properties;
	}

	public static String[] getAllLibName(String path) {
		String classpath = StringUtils.getRealPath(ReadProperties.class, path, path);
		File file = new File(classpath);
		if (file.isDirectory()) {
			File[] files = file.listFiles();
			String[] xxs = new String[files.length];
			int i = 0;
			for (File f : files) {
				xxs[i] = f.getName();
				System.out.println(xxs[i]);
				i++;
			}
			return xxs;
		}
		return null;
	}

	public static void main(String[] args) {
		Locale locale = new Locale("zh","CN");
		Locale locale1 = Locale.CHINA;
		Locale locale2 = Locale.CHINESE;
		Locale locale3 = Locale.US;
		Locale locale4 = Locale.SIMPLIFIED_CHINESE;
		Locale locale5 = Locale.TRADITIONAL_CHINESE;
		System.out.println(locale.toString());
		System.out.println(locale1.toString());
		System.out.println(locale2.toString());
		System.out.println(locale3.toString());
		System.out.println(locale4.toString());
		System.out.println(locale5.toString());
		
		String s1 = "1";
		String s2 = "2";
		String s3 = "1";

		System.out.println("tttt=" + (  !s1.equals(s2) && !s1.equals(s3)  ));
	}

}
