package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mailsent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("package mail;\n");
      out.write("\n");
      out.write("import java.util.Properties;\n");
      out.write("\n");
      out.write("import javax.mail.Message;\n");
      out.write("import javax.mail.MessagingException;\n");
      out.write("import javax.mail.PasswordAuthentication;\n");
      out.write("import javax.mail.Session;\n");
      out.write("import javax.mail.Transport;\n");
      out.write("import javax.mail.internet.InternetAddress;\n");
      out.write("import javax.mail.internet.MimeMessage;\n");
      out.write("\n");
      out.write("/**\n");
      out.write(" *\n");
      out.write(" * @author pankhuri\n");
      out.write(" */\n");
      out.write("public class Mail {\n");
      out.write("\n");
      out.write("    /**\n");
      out.write("     * @param args the command line arguments\n");
      out.write("     */\n");
      out.write("    public static void main(String[] args) {\n");
      out.write("                final String username = \"pankhu.15101998@gmail.com\";\n");
      out.write("\t\tfinal String password = \"P@nkhur!1\";\n");
      out.write("\n");
      out.write("\t\tProperties props = new Properties();\n");
      out.write("\t\tprops.put(\"mail.smtp.auth\", \"true\");\n");
      out.write("\t\tprops.put(\"mail.smtp.starttls.enable\", \"true\");\n");
      out.write("\t\tprops.put(\"mail.smtp.host\", \"smtp.gmail.com\");\n");
      out.write("\t\tprops.put(\"mail.smtp.port\", \"587\");\n");
      out.write("\n");
      out.write("\t\tSession session = Session.getInstance(props,\n");
      out.write("\t\t  new javax.mail.Authenticator() {\n");
      out.write("\t\t\tprotected PasswordAuthentication getPasswordAuthentication() {\n");
      out.write("\t\t\t\treturn new PasswordAuthentication(username, password);\n");
      out.write("\t\t\t}\n");
      out.write("\t\t  });\n");
      out.write("\n");
      out.write("\t\ttry {\n");
      out.write("\n");
      out.write("\t\t\tMessage message = new MimeMessage(session);\n");
      out.write("\t\t\tmessage.setFrom(new InternetAddress(\"pankhu.15101998@gmail.com\"));\n");
      out.write("\t\t\tmessage.setRecipients(Message.RecipientType.TO,\n");
      out.write("\t\t\t\tInternetAddress.parse(\"hmshah98@gmail.com\"));\n");
      out.write("\t\t\tmessage.setSubject(\"Testing Subject\");\n");
      out.write("\t\t\tmessage.setText(\"Dear Sir/Ma'am,\"\n");
      out.write("\t\t\t\t+ \"\\n\\n This is our Java Mini-Project...!!!\");\n");
      out.write("\n");
      out.write("\t\t\tTransport.send(message);\n");
      out.write("\n");
      out.write("\t\t\tSystem.out.println(\"Done\");\n");
      out.write("\n");
      out.write("\t\t} catch (MessagingException e) {\n");
      out.write("\t\t\tSystem.out.println(e);\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("    \n");
      out.write("    }");
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
