package com.laptrinhoop.service.impl;

import java.io.File;
import java.util.Properties;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import javax.mail.*;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.laptrinhoop.service.IMailService;

@Service
public class MailService implements IMailService {
	@Autowired
	JavaMailSender sender;


	public boolean send1(String to, String body) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", 465);
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.port", 465);

		// get Session
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("cailychauhoang@gmail.com", "Hoangminhchau123!");
			}
		});

		// compose message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject("Testing Subject");
			message.setText("Welcome to gpcoder.com");

			// send message
			Transport.send(message);

			System.out.println("Message sent successfully");
			return true;
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}


	public boolean send(String to, String subject, String body, String... others) {
		try {
			MimeMessage mail = sender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mail, true, "utf-8");
			helper.setTo(to);
			helper.setSubject(subject);
			helper.setText(body, true);

			// Người gửi
			String from = "cailychauhoang@gmail.com";
			if (others.length > 0 && others[0] != null) {
				from = String.format("%s <%s>", others[0], others[0]);
			}
			helper.setReplyTo(from);
			helper.setFrom(from);

			// Người nhận CC
			if (others.length > 1 && others[1] != null && others[1].length() > 0) {
				String[] cc = others[1].split("[,; ]+");
				helper.setCc(cc);
			}

			// Người nhận BCC
			if (others.length > 2 && others[2] != null && others[2].length() > 0) {
				String[] bcc = others[2].split("[,; ]+");
				helper.setBcc(bcc);
			}

			// File đính kèm
			if (others.length > 3 && others[3] != null && others[3].length() > 0) {
				String[] paths = others[3].split("[,; ]+");
				for (String path : paths) {
					File file = new File(path);
					helper.addAttachment(file.getName(), file);
				}
			}
			// Send
			sender.send(mail);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
