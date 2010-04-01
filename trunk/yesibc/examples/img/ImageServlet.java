package img;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yesibc.core.utils.ImageScale;

public class ImageServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");

		// 图片放在当前应用的images目录下 如http://www.feng123.com 下的文件目录。
		String path = getServletContext().getRealPath("images/2.jpg");
		BufferedImage image1 = ImageIO.read(new File(path));

		if (request.getParameter("x") == null) {
			ImageIO.write(image1, "jpeg", response.getOutputStream());
		} else {
			float w = Float.parseFloat(request.getParameter("x"));
			float h;
			if (request.getParameter("y") == null) {
				h = w;
			} else {
				h = Float.parseFloat(request.getParameter("y"));
			}
			ImageScale is = new ImageScale();
			BufferedImage image2 = is.imageZoomOut(image1, w, h);
			ImageIO.write(image2, "jpeg", response.getOutputStream());
		}
	}
}
