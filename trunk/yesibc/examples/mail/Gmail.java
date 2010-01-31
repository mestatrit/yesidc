package mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Gmail {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			String host = "smtp.gmail.com";
			String from = "chinagooogle@gmail.com";
			String pass = "love981050";
			Properties props = System.getProperties();
			props.put("mail.smtp.starttls.enable", "true"); // 在本行添加
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.password", pass);
			props.put("mail.smtp.port", "587");
			props.put("mail.smtp.auth", "true");
			String[] to = { "o_olle_e@163.com" }; // 在本行添加
			Session session = Session.getDefaultInstance(props, null);
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			InternetAddress[] toAddress = new InternetAddress[to.length]; // 获取地址的array
			for (int i = 0; i < to.length; i++) { // 从while循环更改而成
				toAddress[i] = new InternetAddress(to[i]);
			}
			System.out.println(Message.RecipientType.TO);
			for (int i = 0; i < toAddress.length; i++) { // 从while循环更改而成
				message.addRecipient(Message.RecipientType.TO, toAddress[i]);
			}
			message.setSubject("sending in a group");
			message.setText("Welcome to JavaMail");
			Transport transport = session.getTransport("smtp");
			transport.connect(host, from, pass);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
