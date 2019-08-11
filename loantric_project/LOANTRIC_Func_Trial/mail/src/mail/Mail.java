package mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author pankhuri
 */
public class Mail {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
                final String username = "pankhu.15101998@gmail.com";
		final String password = "P@nkhur!1";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("pankhu.15101998@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("hmshah98@gmail.com"));
			message.setSubject("Testing Subject");
			message.setText("Dear Sir/Ma'am,"
				+ "\n\n This is our Java Mini-Project...!!!");

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			System.out.println(e);
		}
	}
    
    }