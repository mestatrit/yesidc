package mail;

import java.io.File;
import java.util.Properties;

import javax.mail.internet.MimeMessage;

import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

public class SpringSender {

	public static void main(String[] args) {
		try {
			sendSimple();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void sendSimple() throws Exception {
		JavaMailSenderImpl senderImpl = new JavaMailSenderImpl();
		// 设定 Mail Server
		senderImpl.setHost("smtp.sina.com.cn");

		// SMTP验证时，需要用户名和密码
		senderImpl.setUsername("bibiye1979@sina.com");
		senderImpl.setPassword("love981050");

		Properties props = System.getProperties();
		senderImpl.setJavaMailProperties(props);

		//props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		//props.setProperty("mail.smtp.socketFactory.fallback", "false");

		props.put("mail.smtp.auth", "true");// 是否要验证身份

		// props.put("mail.smtp.starttls.enable","true");

		// 建立邮件讯息
		SimpleMailMessage mailMessage = new SimpleMailMessage();

		// 设定收件人、寄件人、主题与内文
		mailMessage.setTo("bibiye1979@sina.com");
		mailMessage.setFrom("bibiye1979@sina.com");
		mailMessage.setSubject("Test");
		mailMessage.setText("This is a test!!!");

		// 传送邮件
		senderImpl.send(mailMessage);

		System.out.println("邮件传送OK..");
	}

	public static void sendHTML(String[] args) throws Exception {
		JavaMailSenderImpl senderImpl = new JavaMailSenderImpl();

		// 设定 Mail Server
		senderImpl.setHost("mail.xxxxx");

		// SMTP验证时，需要用户名和密码
		senderImpl.setUsername("abc");
		senderImpl.setPassword("defdf");

		// 建立邮件讯息
		MimeMessage mailMessage = senderImpl.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage);

		// 设定收件人、寄件人、主题与内文
		messageHelper.setTo("xxx@your_mail_server.com");
		messageHelper.setFrom("xxx@your_mail_server.com");
		messageHelper.setSubject("Test");
		messageHelper.setText("<html><head></head><body><h1>Hello! Spring!" + "</h1></body></html>", true);

		// 传送邮件
		senderImpl.send(mailMessage);

		System.out.println("邮件传送OK...");
	}

	public static void sendAttachment(String[] args) throws Exception {
		JavaMailSenderImpl senderImpl = new JavaMailSenderImpl();

		// SMTP验证时，需要用户名和密码
		senderImpl.setUsername("abc");
		senderImpl.setPassword("defdf");

		MimeMessage mailMessage = senderImpl.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage, true);

		messageHelper.setTo("def@erer.net");
		messageHelper.setFrom("bfg@tom.com");
		messageHelper.setSubject("Test");
		messageHelper.setText("<html><head></head><body><h1>Hello! Spring!" + "</h1></body></html>", true);

		FileSystemResource file = new FileSystemResource(new File("d:/test.rar"));
		messageHelper.addAttachment("test.rar", file);

		senderImpl.send(mailMessage);

		System.out.println("OK");
	}

}
