package filter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springside.modules.web.struts2.Struts2Utils;

import com.octo.captcha.service.CaptchaService;

public class JcpatchaTest {

	public void testByManual() {
		// 验证cpatchaImage
		boolean success = true;
		boolean flag = false;
		String result = null;
		try {
			HttpServletRequest request = Struts2Utils.getRequest();
			String captchaID = request.getSession().getId();
			String captchaValue = request.getParameter("captchaValue");
			ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(Struts2Utils.getSession()
					.getServletContext());
			CaptchaService captchaService = (CaptchaService) context.getBean("captchaService");
			flag = captchaService.validateResponseForID(captchaID, captchaValue);
		} catch (Exception e) {
			flag = false;
		}
		if (!flag) {
			success = false;
			result += "captcha_err.innerHTML='验证码输入错误。';";
		} else {
			result += "captcha_err.innerHTML='';";
		}
		if (success == false) {
			result += "failed();";
			Struts2Utils.renderHtml(result, "encoding:UTF-8");
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {

	}

}
