<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
    language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Simple Mail Program</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@page import="java.sql.*"%>
<%@page import="javax.mail.*"%>
 
<%@page import="javax.mail.internet.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page import="java.math.BigInteger"%>
 
 
 
<%
    String host = "smtp.gmail.com";
 
    //host = smtp_server; //"smtp.gmail.com"; user = jsp_email; //"YourEmailId@gmail.com" // email id to send the emails
 
    //pass = jsp_email_pw; //Your gmail password
 
    String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
    String to_add = "hmshah98@gmail.com", subject = "Mail Test", messageText = "Welcome To Forget Code", password = "ved3131998";
 
    String from = "vedanglad@gmail.com";
 
    boolean sessionDebug = true;
 
    Properties props = System.getProperties();
 
    props.put("mail.host",host);
 
    props.put("mail.transport.protocol.", "smtp");
 
    props.put("mail.smtp.auth", "true");
 
    props.put("mail.smtp.", "true");
 
    props.put("mail.smtp.port", "3702");
 
    props.put("mail.smtp.socketFactory.fallback", "false");
 
    props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
 
    Session mailSession = Session.getDefaultInstance(props, null);
 
    mailSession.setDebug(sessionDebug);
 
    Message msg = new MimeMessage(mailSession);
 
    msg.setFrom(new InternetAddress(from));
 
    InternetAddress[] address = { new InternetAddress(to_add) };
 
    msg.setRecipients(Message.RecipientType.TO, address);
 
    msg.setSubject(subject);
 
    msg.setContent(messageText, "hello this is our java mini project"); // use setText if you want to send text
 
    Transport transport = mailSession.getTransport("smtp");
    System.setProperty("javax.net.ssl.trustStore", "conf/jssecacerts");
    System.setProperty("javax.net.ssl.trustStorePassword", "admin");
    transport.connect(host, "vedanglad@gmail.com", "ved3131998");
 
    try {
 
        transport.sendMessage(msg, msg.getAllRecipients());
        out.println("sent");
        //WasEmailSent = true; // assume it was sent
 
    }
 
    catch (Exception err) {
 
        //WasEmailSent = false; // assume it's a fail
 
        out.println("Error" + err.getMessage());
 
    }
    transport.close();
%>
</body>
</html>