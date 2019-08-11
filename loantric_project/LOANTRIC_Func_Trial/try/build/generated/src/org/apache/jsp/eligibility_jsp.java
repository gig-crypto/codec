package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;

public final class eligibility_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Drop Downlist</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<style>\n");
      out.write("html,\n");
      out.write("body {\n");
      out.write("  height: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  display: -ms-flexbox;\n");
      out.write("  display: -webkit-box;\n");
      out.write("  display: flex;\n");
      out.write("  -ms-flex-align: center;\n");
      out.write("  -ms-flex-pack: center;\n");
      out.write("  -webkit-box-align: center;\n");
      out.write("  align-items: center;\n");
      out.write("  -webkit-box-pack: center;\n");
      out.write("  justify-content: center;\n");
      out.write("  padding-top: 40px;\n");
      out.write("  padding-bottom: 40px;\n");
      out.write("  background-color: #875A7B;\n");
      out.write("}\n");
      out.write("#background-image{\n");
      out.write("\t\tbackground-image: url(\"wall1.jpg\"); \n");
      out.write("\t\twidth:1901px;\n");
      out.write("\t\theight: 730px;\n");
      out.write("\t}\n");
      out.write(".form-signin {\n");
      out.write("  width: 435px;\n");
      out.write("  height: 320px;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 160px;\n");
      out.write("  left: 560px;\n");
      out.write("  padding: 30px;\n");
      out.write("  padding-left: 35px;\n");
      out.write("  padding-right: 35px;\n");
      out.write("  margin: 0 auto;\n");
      out.write("  border: 4px solid;\n");
      out.write("  border-color: #f98518;\n");
      out.write("  background-color: #f9b175;\n");
      out.write("  box-shadow: 5px 5px #4f4a4d;\n");
      out.write("  border-radius: 15px;\n");
      out.write("}\n");
      out.write(".form-signin .checkbox {\n");
      out.write("  font-weight: 400;\n");
      out.write("}\n");
      out.write(".form-signin .form-control {\n");
      out.write("  position: relative;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  height: auto;\n");
      out.write("  padding: 10px;\n");
      out.write("  font-size: 16px;\n");
      out.write("  border-radius: 10px;\n");
      out.write("  border-width: 2px;\n");
      out.write("}\n");
      out.write(".form-signin .form-control:focus {\n");
      out.write("  z-index: 2;\n");
      out.write("}\n");
      out.write(".form-signin input[type=\"email\"] {\n");
      out.write("  margin-bottom: -1px;\n");
      out.write("  border-bottom-right-radius: 0;\n");
      out.write("  border-bottom-left-radius: 0;\n");
      out.write("}\n");
      out.write(".form-signin input[type=\"password\"] {\n");
      out.write("  margin-bottom: 10px;\n");
      out.write("  border-top-left-radius: 0;\n");
      out.write("  border-top-right-radius: 0;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("\n");

    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/loans";
    String user = "root";
    String psw = "root";

    Connection con = null;
    PreparedStatement ps1 = null;
    
    try
    {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        String sql1 = "SELECT * FROM loans.all_loans";
        ps1 = con.prepareStatement(sql1);
        ResultSet rs1 = ps1.executeQuery();
        

      out.write("\n");
      out.write("<form class=\"form-signin\" method=\"post\" action=\"loan-display.jsp\">\n");
      out.write("    <div style=\"padding-bottom: 20px\">\n");
      out.write("    <p><p style=\"font-size: 20px;color: #7c3168;font-weight: bold;\">Select First Loan Scheme :</p>\n");
      out.write("        <select name=\"id1\">\n");
      out.write("        ");

            while(rs1.next())
            {
                String fname1 = rs1.getString("Loan_Name");
                String id1 = rs1.getString("LoanID");
        
      out.write("\n");
      out.write("        <option value=\"");
      out.print(id1 );
      out.write('"');
      out.write('>');
      out.print(fname1 );
      out.write("</option>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("        </select>\n");
      out.write("    </p>\n");
      out.write("    </div>\n");
      out.write("    <div style=\"margin-top: 25px\">\n");
      out.write("      <button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">Compare</button>\n");
      out.write("    </div>\n");
      out.write("</form>\n");
      out.write("    ");

        }catch(SQLException sqe)
        { 
            out.println(sqe);
        }
    
      out.write("\n");
      out.write("    \n");
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
