package com.loantric.ejb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Stateless
public class MailSenderBean1 {

    public void sendEmail(String fromEmail, String username, String password, String toEmail, String subject, String message) throws SQLException
    {
        
        Connection con= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/customer";
    String user = "root";
    String dbpsw = "root";

    String sql = "select * from customer.custdata where CustID=1";
    String userdbPsw = null;
    try {
            
            Class.forName(driverName);
                con = DriverManager.getConnection(url, user, dbpsw);
                ps = con.prepareStatement(sql);
                
                rs = ps.executeQuery();
                
                if(rs.next())
                { 
                    
                    userdbPsw = rs.getString("Cust_Password");
                    message = userdbPsw;
               
                    Properties props = System.getProperties();

                    props.put("mail.smtp.host","smtp.gmail.com");
                    props.put("mail.smtp.auth","true");
                    props.put("mail.smtp.starttls.enable","true");
                    props.put("mail.smtp.port","25");
                    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
                    props.put("mail.smtp.socketFactory.port","25");
                    props.put("mail.smtp.socketFactory.fallback","false");


                    Session mailSession = Session.getDefaultInstance(props, null);
                    mailSession.setDebug(true);

                    Message mailMessage = new MimeMessage(mailSession);

                    mailMessage.setFrom(new InternetAddress(fromEmail));
                    mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
                    mailMessage.setContent(message,"text/html");
                    mailMessage.setSubject(subject);

                    Transport transport = mailSession.getTransport("smtp");
                    transport.connect("smtp.gmail.com", username, password);


                    transport.sendMessage(mailMessage, mailMessage.getAllRecipients());
                }
            
        } catch (Exception ex) {
            Logger.getLogger(MailSenderBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }
}
