package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;

public final class demo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Drop Downlist</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");

    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/loans";
    String user = "root";
    String psw = "root";

    Connection con = null;
    PreparedStatement ps = null;
    
    try
    {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        
        String lnid=request.getParameter("id");
        String sql2 = "SELECT * FROM loans.homeloans WHERE LoanID=?";
        ps = con.prepareStatement(sql2);
        ps.setString(1,lnid);
        ResultSet rs = ps.executeQuery(); 
        if(!(lnid.equals(null)))
        {
    
      out.write("\n");
      out.write("                <table>\n");
      out.write("                    <tr><td>");
      out.print(rs.getString("Loan_Name") );
      out.write("</td></tr>\n");
      out.write("                    <tr><td>Rate of Interest:</td></tr>\n");
      out.write("                    <tr><td>");
      out.print(rs.getString("Rate_of_Interest") );
      out.write("</td></tr>\n");
      out.write("                    <tr><td>Minimum Salary Required:</td></tr>\n");
      out.write("                    <tr><td>");
      out.print(rs.getString("Min_Salary_Req") );
      out.write("</td></tr>\n");
      out.write("                    <tr><td>Loan Ticket Size:</td></tr>\n");
      out.write("                    <tr><td>");
      out.print(rs.getString("Loan_Ticket_Size") );
      out.write("</td></tr>\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("                </table>\n");
      out.write("    ");

        }
        else
        {
            out.println("Record not found!!");
        }
    }catch(SQLException sqe)
        { 
            out.println(sqe);
        }
    
      out.write("\n");
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
