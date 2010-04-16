package files;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OpenFileServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6195722032241072027L;

	/**
	 * Constructor of the object.
	 */
	public OpenFileServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ServletOutputStream out = res.getOutputStream();

		// ---------------------------------------------------------------
		// Set the output data´s mime type
		// ---------------------------------------------------------------

		res.setContentType("application/pdf"); // MIME type for pdf doc

		// ---------------------------------------------------------------
		// create an input stream from fileURL
		// ---------------------------------------------------------------

		String fileURL = "http://www.adobe.com/aboutadobe/careeropp/pdfs/adobeapp.pdf";

		// ------------------------------------------------------------
		// Content-disposition header - don´t open in browser and
		// set the "Save As..." filename.
		// *There is reportedly a bug in IE4.0 which ignores this...
		// ------------------------------------------------------------
		res.setHeader("Content-disposition", "attachment; filename=Example.pdf");

		// -----------------------------------------------------------------
		// PROXY_HOST and PROXY_PORT should be your proxy host and port
		// that will let you go through the firewall without authentication.
		// Otherwise set the system properties and use
		// URLConnection.getInputStream().
		// -----------------------------------------------------------------
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;

		String PROXY_HOST = "10.164.144.41";
		String PROXY_PORT = "3124";
		
		try {
			URL url = new URL("http", PROXY_HOST, Integer.parseInt(PROXY_PORT), fileURL);

			// Use Buffered Stream for reading/writing.
			bis = new BufferedInputStream(url.openStream());
			bos = new BufferedOutputStream(out);

			byte[] buff = new byte[2048];
			int bytesRead;

			// Simple read/write loop.
			while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
				bos.write(buff, 0, bytesRead);
			}

		} catch (final MalformedURLException e) {
			System.out.println("MalformedURLException.");
			throw e;
		} catch (final IOException e) {
			System.out.println("IOException.");
			throw e;
		} finally {
			if (bis != null)
				bis.close();
			if (bos != null)
				bos.close();
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
