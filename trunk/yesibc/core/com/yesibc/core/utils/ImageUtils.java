package com.yesibc.core.utils;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.imageio.ImageIO;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ImageUtils {
	/**
	 * 缩放图片
	 * 
	 * @param width
	 *            输出宽度
	 * @param height
	 *            输出高度
	 * @param input
	 *            输入流
	 * @param output
	 *            输出流
	 * @param format
	 *            输出格式
	 * @return
	 * @throws Exception
	 */
	public static boolean convert(int width, int height, InputStream input, OutputStream output, String format)
			throws Exception {
		// 输入
		BufferedImage inputImage = ImageIO.read(input);
		// 转换
		RenderedImage im = (RenderedImage) convert(height, height, inputImage);
		// 输出
		return ImageIO.write(im, format, output);
	}

	/**
	 * 转换压缩算法
	 * 
	 * @param input
	 *            输入文件
	 * @param output
	 *            输出文件
	 * @return
	 * @throws Exception
	 */
	public static boolean convert(File input, File output) throws Exception {
		// 输入
		BufferedImage inputImage = ImageIO.read(input);

		// 转换
		int width = inputImage.getWidth();
		int height = inputImage.getHeight();

		RenderedImage im = (RenderedImage) convert(width, height, inputImage);
		String outputFilename = output.getName();
		String format = outputFilename.substring(outputFilename.lastIndexOf('.') + 1);
		// 输出
		return ImageIO.write(im, format, output);
	}

	/**
	 * 缩放图片
	 * 
	 * @param width
	 *            输出宽度
	 * @param height
	 *            输出高度
	 * @param input
	 *            输入文件
	 * @param output
	 *            输出文件
	 * @return
	 * @throws Exception
	 */
	public static boolean convert(int width, int height, File input, File output) throws Exception {
		// 输入
		BufferedImage inputImage = ImageIO.read(input);
		// 转换
		RenderedImage im = (RenderedImage) convert(width, height, inputImage);
		String outputFilename = output.getName();
		String format = outputFilename.substring(outputFilename.lastIndexOf('.') + 1);
		// 输出
		return ImageIO.write(im, format, output);
	}

	/**
	 * 缩放图片
	 * 
	 * @param width
	 *            输出宽度
	 * @param height
	 *            输出高度
	 * @param input
	 *            输入路径
	 * @param output
	 *            输出路径
	 * @return
	 * @throws Exception
	 */
	public static boolean convert(int width, int height, String inputPath, String outputPath) throws Exception {
		return convert(width, height, new File(inputPath), new File(outputPath));
	}

	/**
	 * 转换
	 * 
	 * @param width
	 *            输出宽度
	 * @param height
	 *            输出高度
	 * @param input
	 *            BufferedImage
	 * @return BufferedImage
	 * @throws Exception
	 */
	private static BufferedImage convert(int width, int height, BufferedImage input) throws Exception {
		// 初始化输出图片
		BufferedImage output = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

		// 重新绘图
		Image image = input.getScaledInstance(output.getWidth(), output.getHeight(), output.getType());

		output.createGraphics().drawImage(image, null, null);

		return output;
	}

	/**
	 * 等比缩放图片
	 * 
	 * @param width
	 *            输出宽度
	 * @param height
	 *            输出高度
	 * @param input
	 *            输入流
	 * @param output
	 *            输出流
	 * @return
	 * @throws Exception
	 */
	public static boolean equimultipleConvert(int width, int height, String input, String output) throws Exception {
		return equimultipleConvert(width, height, new File(input), new File(output));
	}

	/**
	 * 等比缩放图片
	 * 
	 * @param width
	 *            输出宽度
	 * @param height
	 *            输出高度
	 * @param input
	 *            输入流
	 * @param output
	 *            输出流
	 * @return
	 * 
	 * @throws Exception
	 */
	public static boolean equimultipleConvert(int width, int height, File input, File output) throws Exception {
		// 输入
		BufferedImage image = ImageIO.read(input);

		// 重新核算尺寸
		if (image.getWidth() > 0 && image.getHeight() > 0) {
			if ((image.getWidth() / image.getHeight()) >= (width / height)) {
				if (image.getWidth() > width) {
					height = (image.getHeight() * width) / image.getWidth();
				} else {
					width = image.getWidth();
					height = image.getHeight();
				}
			} else {
				if (image.getHeight() > height) {
					width = (image.getWidth() * height) / image.getHeight();
				} else {
					width = image.getWidth();
					height = image.getHeight();
				}
			}
		}

		// 转换 输出
		return convert(width, height, input, output);
	}

	/** */
	/**
	 * 把图片印刷到图片上
	 * 
	 * @param pressImg
	 *            -- 水印文件
	 * @param targetImg
	 *            -- 目标文件
	 * @param x
	 *            --x坐标
	 * @param y
	 *            --y坐标
	 * @param alpha
	 *            --透明度
	 */
	public final static void pressImage(String pressImg, String targetImg, int x, int y, float alpha) {
		try {
			// 目标文件
			float Alpha = alpha;
			File _file = new File(targetImg);
			Image src = ImageIO.read(_file);
			int wideth = src.getWidth(null);
			int height = src.getHeight(null);
			BufferedImage image = new BufferedImage(wideth, height, BufferedImage.TYPE_INT_RGB);
			Graphics2D g = image.createGraphics();
			g.drawImage(src, 0, 0, wideth, height, null);
			// 水印文件
			File _filebiao = new File(pressImg);
			Image src_biao = ImageIO.read(_filebiao);
			int wideth_biao = src_biao.getWidth(null);
			int height_biao = src_biao.getHeight(null);
			g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_ATOP, Alpha));
			g.drawImage(src_biao, (wideth - wideth_biao) / 2, (height - height_biao) / 2, wideth_biao, height_biao,
					null);
			// 水印文件结束
			g.dispose();
			FileOutputStream out = new FileOutputStream(targetImg);
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
			encoder.encode(image);
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/** */
	/**
	 * 打印文字水印图片
	 * 
	 * @param pressText
	 *            --文字
	 * @param targetImg
	 *            -- 目标图片
	 * @param fontName
	 *            -- 字体名
	 * @param fontStyle
	 *            -- 字体样式
	 * @param color
	 *            -- 字体颜色
	 * @param fontSize
	 *            -- 字体大小
	 * @param x
	 *            -- 偏移量
	 * @param y
	 */

	public static void pressText(String pressText, String targetImg, String fontName, int fontStyle, int color,
			int fontSize, int x, int y, float alpha) {
		try {
			float Alpha = alpha;
			File _file = new File(targetImg);
			Image src = ImageIO.read(_file);
			int wideth = src.getWidth(null);
			int height = src.getHeight(null);
			BufferedImage image = new BufferedImage(wideth, height, BufferedImage.TYPE_INT_RGB);
			Graphics2D g = image.createGraphics();

			g.drawImage(src, 0, 0, wideth, height, null);
			g.setColor(Color.RED);
			g.setFont(new Font(fontName, fontStyle, fontSize));
			g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_ATOP, Alpha));
			g.drawString(pressText, wideth - fontSize - x, height - fontSize / 2 - y);
			g.dispose();
			FileOutputStream out = new FileOutputStream(targetImg);
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
			encoder.encode(image);
			out.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			System.out.println(ImageUtils.convert(1650, 1024, "c:\\1.png", "c:\\1.png.jpg"));
			System.out.println(ImageUtils.convert(400, 300, "c:\\1.jpg", "c:\\1.jpg.jpg"));
			System.out.println(ImageUtils.convert(400, 300, "c:\\1.jpg", "c:\\1.jpg.png"));
			System.out.println(ImageUtils.convert(50, 50, "c:\\1.jpg", "c:\\1.jpg.gif"));
			System.out.println(ImageUtils.convert(40, 30, "c:\\1.bmp", "c:\\1.bmp.gif"));
			System.out.println(ImageUtils.convert(40, 30, "c:\\1.bmp", "c:\\1.jpeg"));
			System.out.println(ImageUtils.equimultipleConvert(1600, 1400, new File("c:\\1.bmp"), new File(
					"c:\\1Equimultiple.jpeg")));

			pressImage("E:\\logo.gif", "E:\\index.jpg", 300, 400, 0.1f);
			pressText("http://www.nahao8.com", "E:\\index.jpg", "隶书", 36, 36, 36, 300, 400, 0.1f);
			System.out.print("添加成功");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
