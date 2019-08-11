package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <link rel=\"icon\" href=\"login.png\">\n");
      out.write("\n");
      out.write("    <title>Login</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    \n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("\t<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- Import CSS FILE -->\n");
      out.write("    <link href=\"C:login.css\" rel=\"stylesheet\">\n");
      out.write("  \n");
      out.write("  </head>\n");
      out.write("  <body class=\"text-center\">\n");
      out.write("  <div id=\"background-image\">\n");
      out.write("\t<center>\n");
      out.write("\t<div>\n");
      out.write("    <form class=\"form-signin\" action=\"login-check.jsp\">\n");
      out.write("      <img class=\"mb-4\" src=\"login.png\" alt=\"\" width=\"85\" height=\"85\">\n");
      out.write("      <h1 class=\"h3 mb-3 font-weight-normal\">Login</h1>\n");
      out.write("      <label for=\"inputEmail\" class=\"sr-only\">Email address</label>\n");
      out.write("      <input type=\"email\" name=\"inputEmail\" class=\"form-control\" placeholder=\"Email address\" required autofocus>\n");
      out.write("      <label for=\"inputPassword\" class=\"sr-only\">Password</label>\n");
      out.write("      <input type=\"password\" id=\"inputPassword\" class=\"form-control\" placeholder=\"Password\" required>\n");
      out.write("      <div class=\"checkbox mb-3\">\n");
      out.write("        <label>\n");
      out.write("          <input type=\"checkbox\" value=\"remember-me\"> Remember me\n");
      out.write("        </label>\n");
      out.write("      </div>\n");
      out.write("\t  <div style=\"margin-top: 25px\">\n");
      out.write("      <button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">Login</button>\n");
      out.write("\t  </div>\n");
      out.write("    </form>\n");
      out.write("\t</div>\n");
      out.write("\t</center>\n");
      out.write("  </div>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
