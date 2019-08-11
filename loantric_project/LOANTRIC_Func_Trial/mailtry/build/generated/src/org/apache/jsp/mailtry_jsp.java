package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.math.BigInteger;

public final class mailtry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Simple Mail Program</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");

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

      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
