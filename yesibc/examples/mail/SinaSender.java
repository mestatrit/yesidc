package mail;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class SinaSender {
	public static void main(String args[]) throws Exception {

		try {
			String host = "smtp.sina.com.cn";
			String from = "bibi_ye@sina.com";
			String to = "chinagooogle@gmail.com";
			String username = "bibiye1979@sina.com";
			String password = "love981050";

			// Get system properties
			// Properties props = System.getProperties();
			// 很多例子中是这样的，其实下面这句更好，可以用在applet中
			Properties props = new Properties();

			// Setup mail server
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.auth", "true"); // 这样才能通过验证

			// Get session
			Session session = Session.getDefaultInstance(props);

			// watch the mail commands go by to the mail server
			session.setDebug(true);

			// Define message
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("Hello JavaMail");
			message.setText("Welcome to JavaMail");

			// Send message
			message.saveChanges();
			Transport transport = session.getTransport("smtp");
			transport.connect(host, username, password);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
