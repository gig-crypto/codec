package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;

public final class loan_002ddisplay_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<style>\n");
      out.write("    html,html a {\n");
      out.write("\t-webkit-font-smoothing: antialiased;\n");
      out.write("\ttext-shadow: 1px 1px 1px rgba(0,0,0,0.004);\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("\tfont-family: 'Open Sans', sans-serif;\n");
      out.write("\tbackground: #875A7B;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#plans,#plans ul,#plans ul li {\n");
      out.write("\tmargin: 0;\n");
      out.write("\tpadding: 0;\n");
      out.write("\tlist-style: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pricePlans:after {\n");
      out.write("\tcontent: '';\n");
      out.write("\tdisplay: table;\n");
      out.write("\tclear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pricePlans {\n");
      out.write("\tzoom: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pricePlans {\n");
      out.write("\tposition: absolute;\n");
      out.write("\twidth: 1000px;\n");
      out.write("\ttop: 115px;\n");
      out.write("\tleft: 450px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pricePlans #plans .plan {\n");
      out.write("\tbackground: #fff;\n");
      out.write("\tfloat: left;\n");
      out.write("\twidth: 100%;\n");
      out.write("\ttext-align: center;\n");
      out.write("\tborder-radius: 15px;\n");
      out.write("\tmargin: 0 0 20px 0;\n");
      out.write("\n");
      out.write("\t-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.1);\n");
      out.write("\tbox-shadow: 0 1px 3px rgba(0,0,0,0.1);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .title h2 {\n");
      out.write("\tfont-size: 20px;\n");
      out.write("\tfont-weight: 300;\n");
      out.write("\tcolor: #3e4f6a;\n");
      out.write("\tmargin: 0;\n");
      out.write("\tpadding: .6em 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .title h2.bestPlanTitle {\n");
      out.write("\tbackground: #F9F9F9;\n");
      out.write("\n");
      out.write("\tbackground: -webkit-linear-gradient(top, #475975, #364761);\n");
      out.write("\tbackground: -moz-linear-gradient(top, #475975, #364761);\n");
      out.write("\tbackground: -o-linear-gradient(top, #475975, #364761);\n");
      out.write("\tbackground: -ms-linear-gradient(top, #475975, #364761);\n");
      out.write("\tbackground: linear-gradient(top, #475975, #364761);\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tborder-radius: 15px 15px 0 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".planContainer .price p {\n");
      out.write("\tbackground: #3e4f6a;\n");
      out.write("\n");
      out.write("\tbackground: -webkit-linear-gradient(top, #475975, #364761);\n");
      out.write("\tbackground: -moz-linear-gradient(top, #475975, #364761);\n");
      out.write("\tbackground: -o-linear-gradient(top, #475975, #364761);\n");
      out.write("\tbackground: -ms-linear-gradient(top, #475975, #364761);\n");
      out.write("\tbackground: linear-gradient(top, #475975, #364761);\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tfont-size: 1.2em;\n");
      out.write("\tfont-weight: 700;\n");
      out.write("\theight: 2.6em;\n");
      out.write("\tline-height: 2.6em;\n");
      out.write("\tmargin: 0 0 1em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .price p.bestPlanPrice {\n");
      out.write("\tbackground: #f7814d;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .price p span {\n");
      out.write("\tcolor: #8394ae;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .options {\n");
      out.write("\tmargin-top: 10em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .options li {\n");
      out.write("\tfont-weight: 700;\n");
      out.write("\tcolor: #364762;\n");
      out.write("\tline-height: 2.5;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .options li span {\n");
      out.write("\tfont-weight: 400;\n");
      out.write("\tcolor: #979797;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .button a {\n");
      out.write("\ttext-transform: uppercase;\n");
      out.write("\ttext-decoration: none;\n");
      out.write("\tcolor: #3e4f6a;\n");
      out.write("\tfont-weight: 700;\n");
      out.write("\tletter-spacing: 3px;\n");
      out.write("\tline-height: 2.8em;\n");
      out.write("\tborder: 2px solid #3e4f6a;\n");
      out.write("\tdisplay: inline-block;\n");
      out.write("\twidth: 80%;\n");
      out.write("\theight: 2.8em;\n");
      out.write("\tborder-radius: 4px;\n");
      out.write("\tmargin: 1.5em 0 1.8em;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .button a.bestPlanButton {\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tbackground: #f7814d;\n");
      out.write("\tborder: 2px solid #f7814d;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#credits {\n");
      out.write("\ttext-align: center;\n");
      out.write("\tfont-size: .8em;\n");
      out.write("\tfont-style: italic;\n");
      out.write("\tcolor: #777;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#credits a {\n");
      out.write("\tcolor: #333;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#credits a:hover {\n");
      out.write("\ttext-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (min-width: 481px) and (max-width: 768px) {\n");
      out.write("\n");
      out.write("#pricePlans #plans .plan {\n");
      out.write("\twidth: 49%;\n");
      out.write("\tmargin: 0 2% 20px 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pricePlans #plans > li:nth-child(2n) {\n");
      out.write("\tmargin-right: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (min-width: 769px) and (max-width: 1024px) {\n");
      out.write("\n");
      out.write("#pricePlans #plans .plan {\n");
      out.write("\twidth: 49%;\n");
      out.write("\tmargin: 0 2% 20px 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pricePlans #plans > li:nth-child(2n) {\n");
      out.write("\tmargin-right: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (min-width: 1025px) {\n");
      out.write("\n");
      out.write("#pricePlans {\n");
      out.write("\tmargin: 2em auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pricePlans #plans .plan {\n");
      out.write("\twidth: 32%;\n");
      out.write("\tmargin: 0 1.33% 20px 0;\n");
      out.write("\n");
      out.write("\t-webkit-transition: all .25s;\n");
      out.write("\t   -moz-transition: all .25s;\n");
      out.write("\t    -ms-transition: all .25s;\n");
      out.write("\t     -o-transition: all .25s;\n");
      out.write("\t        transition: all .25s;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pricePlans #plans > li:last-child {\n");
      out.write("\tmargin-right: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#pricePlans #plans .plan:hover {\n");
      out.write("\t-webkit-transform: scale(1.04);\n");
      out.write("\t   -moz-transform: scale(1.04);\n");
      out.write("\t    -ms-transform: scale(1.04);\n");
      out.write("\t     -o-transform: scale(1.04);\n");
      out.write("\t        transform: scale(1.04);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .button a {\n");
      out.write("\t-webkit-transition: all .25s;\n");
      out.write("\t   -moz-transition: all .25s;\n");
      out.write("\t    -ms-transition: all .25s;\n");
      out.write("\t     -o-transition: all .25s;\n");
      out.write("\t        transition: all .25s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .button a:hover {\n");
      out.write("\tbackground: #f7814d;\n");
      out.write("\tcolor: #fff;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".planContainer .button a.bestPlanButton:hover {\n");
      out.write("\tbackground: #ff9c70;\n");
      out.write("\tborder: 2px solid #ff9c70;\n");
      out.write("}\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");

    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/loans";
    String user = "root";
    String psw = "root";
    String lnid1=request.getParameter("id1");

    
    Connection con = null;
    PreparedStatement ps1 = null;

    ResultSet rs1 = null;

    
    try
    {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        
        String sql1 = "SELECT * FROM loans.agricultureloans WHERE LoanID=?";

        
        ps1 = con.prepareStatement(sql1);

        
        ps1.setString(1,lnid1);

        
        rs1 = ps1.executeQuery();

        
        if(!(lnid1.equals(null)))
        {
            if(rs1.next())
            {
    
      out.write("\n");
      out.write("    <section id=\"pricePlans\">\n");
      out.write("\t<ul id=\"plans\">\n");
      out.write("            <li class=\"plan\">\n");
      out.write("\t\t<ul class=\"planContainer\">\n");
      out.write("                    <li class=\"title\"><h2 class=\"bestPlanTitle\">");
      out.print(rs1.getString("Loan_Name") );
      out.write("</h2></li>\n");
      out.write("\t\t\t<li>\n");
      out.write("                            <ul class=\"options\">\n");
      out.write("                        \t<li>Rate of Interest: <br><span>");
      out.print(rs1.getString("Rate_of_Interest") );
      out.write("</span></li>\n");
      out.write("                                <li>Minimum Salary Required: <br><span>");
      out.print(rs1.getString("Min_Salary_Req") );
      out.write("</span></li>\n");
      out.write("                                <li>Loan Ticket Size: <br><span>");
      out.print(rs1.getString("Loan_Ticket_Size") );
      out.write("</span></li>\n");
      out.write("                            </ul>\n");
      out.write("\t\t\t</li>\n");
      out.write("                    <li class=\"button\"><a href=\"#\">ADD TO WALLET</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("            </li>\t\t\n");
      out.write("\t</ul>\n");
      out.write("    </section>\n");
      out.write("            \n");
      out.write("    ");

            }
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
