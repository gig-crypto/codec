/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webpage.ejb;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


@Stateless
public class mail3 {
    
    public void sendEmail(String fromemail, String username, String password, String toemail) throws AddressException, MessagingException
    {
        try{
        Properties props = System.getProperties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.fallback", "false");
        
        
        Session mailSession = Session.getDefaultInstance(props, null);
        mailSession.setDebug(true);
        
        Message mailMessage = new MimeMessage(mailSession);
        
        mailMessage.setFrom(new InternetAddress(fromemail));
        mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toemail));
        
        Transport transport = mailSession.getTransport("smtp");
        transport.connect("smtp.gmail.com",username,password);
        
        transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
        
        }catch(MessagingException ex)
        {
            Logger.getLogger(mail3.class.getName()).log(Level.SEVERE,null,ex);
        }
        
    }

}
