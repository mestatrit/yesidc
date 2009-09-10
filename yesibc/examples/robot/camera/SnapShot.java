package robot.camera;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.SingleThreadModel;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("deprecation")
public class SnapShot extends HttpServlet implements SingleThreadModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6123691873717970580L;
	private static final String CONTENT_TYPE = "image/jpeg";

	// Initialize global variables

	public void init() throws ServletException {

	}

	// Process the HTTP Get request

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 设置客户端的文件相应类型
		response.setContentType(CONTENT_TYPE);
		// 获取屏幕的分辨率
		Dimension d = Toolkit.getDefaultToolkit().getScreenSize();
		try {
			{
				BufferedImage screenshot = (new Robot()).createScreenCapture(new Rectangle(0, 0, (int) d.getWidth(),
						(int) d.getHeight()));
				String imageFormat = "jpg";
				ServletOutputStream sos = response.getOutputStream();
				// 将图像数据流写入客户端
				ImageIO.write(screenshot, imageFormat, sos);
				sos.close();
				response.flushBuffer();
			}
		} catch (Exception ex) {
		}
	}

	// Clean up resources

	public void destroy() {

	}

}
