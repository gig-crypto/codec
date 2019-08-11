package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class OtherLoan_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>Other Loans</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <style>\n");
      out.write("  hr {\n");
      out.write("  height:0; \n");
      out.write("  border:0; \n");
      out.write("  border-top:1px solid #083972; \n");
      out.write("}\n");
      out.write("    .modal-header, .close {\n");
      out.write("      background-color: #191970;\n");
      out.write("      color:white !important;\n");
      out.write("      text-align: center;\n");
      out.write("      font-size: 30px;\n");
      out.write("  }\n");
      out.write("    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */\n");
      out.write("    .row.content {height: 1500px}\n");
      out.write("    \n");
      out.write("    /* Set gray background color and 100% height */\n");
      out.write("    .sidenav {\n");
      out.write("      background-color: #f1f1f1;\n");
      out.write("      height: 100%;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    /* Set black background color, white text and some padding */\n");
      out.write("    .modal-footer {\n");
      out.write("      background-color: #191970;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("footer {\n");
      out.write("      background-color: #191970;\n");
      out.write("      color: white;\n");
      out.write("      padding-top: 8px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("           .navbar{\n");
      out.write("margin-bottom: 0;\n");
      out.write("border-radius: 0;\n");
      out.write("background-color: #FF8C00;\n");
      out.write("border-color: transparent;\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write(".font{\n");
      out.write("padding-top: 7px;\n");
      out.write("}\n");
      out.write(".button{\n");
      out.write("  background-color: #FFFFFF;\n");
      out.write("  border-color: transparent;\n");
      out.write("}\n");
      out.write(".button1\n");
      out.write("{\n");
      out.write("  background-color: #191970;\n");
      out.write("}\n");
      out.write("    \n");
      out.write("    /* On small screens, set height to 'auto' for sidenav and grid */\n");
      out.write("    @media screen and (max-width: 767px) {\n");
      out.write("      .sidenav {\n");
      out.write("        height: auto;\n");
      out.write("        padding: 15px;\n");
      out.write("      }\n");
      out.write("      .row.content {height: auto;} \n");
      out.write("\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("  <p class=\"font\"><font size=\"5\" color=\"white\">&nbsp&nbsp&nbsp&nbsp<u>LOANTRIC</u></font>\n");
      out.write("    </div>\n");
      out.write("     <div class=\"col-xs-6\">\n");
      out.write("    <form class=\"navbar-form navbar-left\">\n");
      out.write("      <div class=\"input-group\">\n");
      out.write("        <input type=\"text\" class=\"form-control\" size=\"40\" placeholder=\"Search\" name=\"search\">\n");
      out.write("        <div class=\"input-group-btn\">\n");
      out.write("          <button class=\"btn btn-default\" type=\"submit\">\n");
      out.write("            <i class=\"glyphicon glyphicon-search\"></i>\n");
      out.write("          </button>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("  <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("<li><a href=\"#\"  data-toggle=\"modal\" data-target=\"#myModal\"><span class=\"glyphicon glyphicon-check\" style=\"color: white\"></span>&nbsp&nbsp<font color=\"white\">Check Eligibility</font></a>\n");
      out.write("\n");
      out.write("<div class=\"modal fade\" id=\"myModal\" role=\"dialog\">\n");
      out.write("    <div class=\"modal-dialog\">\n");
      out.write("    \n");
      out.write("      <!-- Modal content-->\n");
      out.write("      <div class=\"modal-content\">\n");
      out.write("        <div class=\"modal-header\" style=\"padding:35px 50px;\">\n");
      out.write("          <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("          <h4><span class=\"glyphicon glyphicon-ok\"></span> Eligibility-Check</h4>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"modal-body\" style=\"padding:40px 50px;\">\n");
      out.write("        ");

            String driverName = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/loans";
            String user = "root";
            String psw = "root";

            Connection con = null;
            PreparedStatement ps1 = null;
            
            String lnid1=request.getParameter("id1");
            String lnid2=request.getParameter("id2");

            PreparedStatement ps2 = null;
            PreparedStatement ps3 = null;
            ResultSet rs2 = null;
            ResultSet rs3 = null;

            String wallet1 = null;
            String wallet2 = null;
            String wallet3 = null;
    
            try
            {
                Class.forName(driverName);
                con = DriverManager.getConnection(url,user,psw);
                String sql1 = "SELECT * FROM loans.all_loans";
                ps1 = con.prepareStatement(sql1);
                ResultSet rs1 = ps1.executeQuery();
        
        
      out.write("\n");
      out.write("        <form class=\"form-signin\" method=\"post\" action=\"loandisplay.jsp\">\n");
      out.write("    <div style=\"padding-bottom: 20px\">\n");
      out.write("    <p style=\"font-size: 20px;color: #7c3168;font-weight: bold;\">Select Loan Scheme :</p>\n");
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
            rs1.close();
}catch(SQLException sqe)
        { 
            out.println(sqe);
        }
        
      out.write("\n");
      out.write("        </select>\n");
      out.write("        <br><br>\n");
      out.write("        <p style=\"font-size: 20px;color: #7c3168;font-weight: bold;\">Salary :</p>\n");
      out.write("        <input type=\"text\" class=\"form-control\" name=\"salary\" placeholder=\"Enter Your Salary\">\n");
      out.write("        </div>\n");
      out.write("        <div style=\"margin-top: 25px\">\n");
      out.write("            <button type=\"submit\" class=\"btn btn-success btn-block button1\"><span class=\"glyphicon glyphicon-check\"></span> Check Eligibility</button>\n");
      out.write("        </div>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"modal-footer\">\n");
      out.write("          <button type=\"submit\" class=\"btn btn-danger btn-default pull-left button\" data-dismiss=\"modal\"><span class=\"glyphicon glyphicon-remove\" style=\"color: black\"></span><font color=\"black\"><b> Cancel</b></font></button>\n");
      out.write("            </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("</li>\n");
      out.write("<li><a href=\"wishlist.jsp\"><span class=\"glyphicon glyphicon-usd\" style=\"color: white\"></span>&nbsp&nbsp<font color=\"white\">Wallet</font></a></li>\n");
      out.write("<li><a href=\"homepage.jsp\" style=\"color: white\"><span class=\"glyphicon glyphicon-log-in\"></span>&nbsp&nbsp<font color=\"white\">Logout</font></a></li>\n");
      out.write("</ul>\n");
      out.write("</p>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("  <div class=\"row content\">\n");
      out.write("    <div class=\"col-sm-2 sidenav\">\n");
      out.write("        <br>\n");
      out.write("      <!--<h4><font face=\"Berlin sans fb demi\"><b>LOANTRIC</b></font></h4>-->\n");
      out.write("      <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("        <li><a href=\"HomeLoan.jsp\"><b>Home Loan</b></a></li>\n");
      out.write("        <li><a href=\"AgriLoan.jsp\"><b>Agriculture Loan</b></a></li>\n");
      out.write("        <li><a href=\"EduLoan.jsp\"><b>Education Loan</b></a></li>\n");
      out.write("        <li><a href=\"PersonalLoan.jsp\"><b>Personal Loan</b></a></li>\n");
      out.write("        <li class=\"btn btn-warning\"><font color=\"white\"><b>Others</b></font></li>\n");
      out.write("         <br>\n");
      out.write("        <hr>\n");
      out.write("      \n");
      out.write("      </ul><br>\n");
      out.write("      <!--<div class=\"input-group\">\n");
      out.write("        <input type=\"text\" class=\"form-control\" placeholder=\"Search Blog..\">\n");
      out.write("        <span class=\"input-group-btn\">\n");
      out.write("          <button class=\"btn btn-default\" type=\"button\">\n");
      out.write("            <span class=\"glyphicon glyphicon-search\"></span>\n");
      out.write("          </button>\n");
      out.write("        </span>\n");
      out.write("      </div>-->\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"col-sm-9\">\n");
      out.write("      <!--<h4><small>RECENT POSTS</small></h4>\n");
      out.write("      <hr>-->\n");
      out.write("      <h2>Travel Loan</h2>\n");
      out.write("      <!--<h5><span class=\"glyphicon glyphicon-time\"></span> Post by Jane Dane, Sep 27, 2015.</h5>\n");
      out.write("      <h5><span class=\"label label-danger\">Food</span> <span class=\"label label-primary\">Ipsum</span></h5><br>-->\n");
      out.write("      <h4>If you&apos;ve been dreaming of a vacation for a long time, don&apos;t let the expenses hold you back.Instead, opt for a Travel Loan (a Personal Loan for travel) and make memories to last you a lifetime.</h4>\n");
      out.write("      <p></p>\n");
      out.write("      <br>\n");
      out.write("      <form name=\"id\" method=\"post\" action=\"walletaddtry.jsp\">\n");
      out.write("          <input type=\"hidden\" name=\"loanname\" value=\"Travel Loan\">\n");
      out.write("      <button type=\"submit\" class=\"btn btn-warning\" data-toggle=\"modal\" data-target=\"#myModal1\">Add to Wallet</button>\n");
      out.write("      </form>\n");
      out.write("      <!-- Modal -->\n");
      out.write("      <div class=\"modal fade\" id=\"myModal5\" role=\"dialog\">\n");
      out.write("      <div class=\"modal-dialog\">\n");
      out.write("    \n");
      out.write("      <!-- Modal content-->\n");
      out.write("      <div class=\"modal-content\">\n");
      out.write("        <div class=\"modal-header\">\n");
      out.write("          <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("          <h4 class=\"modal-title\"><font color=\"white\">Successfully added to wallet!</font></h4>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"modal-footer\">\n");
      out.write("          <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("  \n");
      out.write("    \n");
      out.write("      <br><br>\n");
      out.write("      <hr width=\"100%\">\n");
      out.write("      <br>\n");
      out.write("\n");
      out.write("      <!--<h4><small>RECENT POSTS</small></h4>\n");
      out.write("      <hr>\n");
      out.write("      <h2>Officially Blogging</h2>\n");
      out.write("      <h5><span class=\"glyphicon glyphicon-time\"></span> Post by John Doe, Sep 24, 2015.</h5>\n");
      out.write("      <h5><span class=\"label label-success\">Lorem</span></h5><br>-->\n");
      out.write("      <h2>Gold Loan</h2>\n");
      out.write("      <h4>Minimum Requirements: Only one recent ID?Voter ID/ Ration Card/ Driving License/ Passport. No time-consuming formalities involved. Pay interest only for the exact period of loan, and to the exact number of days. Different schemes for different needs, to suit all income groups.Pay interest only for the exact period of loan, and to the exact number of days.Different schemes for different needs, to suit all income groups.</h4>\n");
      out.write("      <p></p>\n");
      out.write("      <br>\n");
      out.write("      <form name=\"id\" method=\"post\" action=\"walletaddtry.jsp\">\n");
      out.write("          <input type=\"hidden\" name=\"loanname\" value=\"Gold Loan\">\n");
      out.write("      <button type=\"submit\" class=\"btn btn-warning\" data-toggle=\"modal\" data-target=\"#myModal1\">Add to Wallet</button>\n");
      out.write("      </form>\n");
      out.write("      <div class=\"modal fade\" id=\"myModal5\" role=\"dialog\">\n");
      out.write("      <div class=\"modal-dialog\">\n");
      out.write("    \n");
      out.write("      <!-- Modal content-->\n");
      out.write("      <div class=\"modal-content\">\n");
      out.write("        <div class=\"modal-header\">\n");
      out.write("          <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("          <h4 class=\"modal-title\"><font color=\"white\">Successfully added to wallet!</font></h4>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"modal-footer\">\n");
      out.write("          <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("      <br><br>\n");
      out.write("      <hr width=\"100%\">\n");
      out.write("      \n");
      out.write("      <br>\n");
      out.write("\n");
      out.write("      <h2>Business Loan</h2>\n");
      out.write("      <h4>Business loan allows you to avail Flexi loan facility. This is a unique facility given to our loan applicants, wherein you are approved for certain loan limit, for a said duration. You can choose to pay only interest amount as EMI and repay the principal amount at the end of the tenor of the facility. Hence, it acts as a big saving arm to your cash flow. Loans up to Rs.30 LakhWhether your business has needs for short-term loans, intermediate-term loans or long-term loans, Bajaj Finserv offers business loans up to Rs.30 lakhs. You can use the loan amount to invest in infrastructure, expand operations, buy equipment or inventory, or even to increase working capital. Collateral Free LoansBajaj Finserv?s business loan are collateral-free, which means you won?t have to put your personal or business assets on the line to qualify for financing. And since you don?t need to pledge collateral, there is no requirement for appraisal of the value of your assets. As a result, with collateral-free loans, funding is much faster and requires only minimal documentation.Pre-approved offers Preapproved OffersAs an existing customer of Bajaj Finserv, you will be eligible to get exclusive pre-approved offers from us. These offers may include a top-up loan or even reduction of rates from time to time. Online Account AccessYou have the convenience of accessing your business loan statement anytime, from anywhere online.</h4>\n");
      out.write("      <p></p>\n");
      out.write("      <br>\n");
      out.write("      <form name=\"id\" method=\"post\" action=\"walletaddtry.jsp\">\n");
      out.write("          <input type=\"hidden\" name=\"loanname\" value=\"Business Loan\">\n");
      out.write("      <button type=\"submit\" class=\"btn btn-warning\" data-toggle=\"modal\" data-target=\"#myModal1\">Add to Wallet</button>\n");
      out.write("      </form>\n");
      out.write("      <div class=\"modal fade\" id=\"myModal5\" role=\"dialog\">\n");
      out.write("      <div class=\"modal-dialog\">\n");
      out.write("    \n");
      out.write("      <!-- Modal content-->\n");
      out.write("      <div class=\"modal-content\">\n");
      out.write("        <div class=\"modal-header\">\n");
      out.write("          <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("          <h4 class=\"modal-title\"><font color=\"white\">Successfully added to wallet!</font></h4>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"modal-footer\">\n");
      out.write("          <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("      <br><br>\n");
      out.write("      <hr width=\"100%\">\n");
      out.write("       <a class=\"btn btn-warning btn-lg\" href=\"otherloan-select.jsp\"><b>Compare Other Loans</b></a>\n");
      out.write("     \n");
      out.write("      <br>\n");
      out.write("\n");
      out.write("      <!--<h4>Leave a Comment:</h4>\n");
      out.write("      <form role=\"form\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <textarea class=\"form-control\" rows=\"3\" required></textarea>\n");
      out.write("        </div>\n");
      out.write("        <button type=\"submit\" class=\"btn btn-success\">Submit</button>\n");
      out.write("      </form>\n");
      out.write("      <br><br>\n");
      out.write("      \n");
      out.write("      <p><span class=\"badge\">2</span> Comments:</p><br>\n");
      out.write("      \n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2 text-center\">\n");
      out.write("          <img src=\"bandmember.jpg\" class=\"img-circle\" height=\"65\" width=\"65\" alt=\"Avatar\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-10\">\n");
      out.write("          <h4>Anja <small>Sep 29, 2015, 9:12 PM</small></h4>\n");
      out.write("          <p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n");
      out.write("          <br>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-2 text-center\">\n");
      out.write("          <img src=\"bird.jpg\" class=\"img-circle\" height=\"65\" width=\"65\" alt=\"Avatar\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-10\">\n");
      out.write("          <h4>John Row <small>Sep 25, 2015, 8:25 PM</small></h4>\n");
      out.write("          <p>I am so happy for you man! Finally. I am looking forward to read about your trendy life. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n");
      out.write("          <br>\n");
      out.write("          <p><span class=\"badge\">1</span> Comment:</p><br>\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-2 text-center\">\n");
      out.write("              <img src=\"bird.jpg\" class=\"img-circle\" height=\"65\" width=\"65\" alt=\"Avatar\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-xs-10\">\n");
      out.write("              <h4>Nested Bro <small>Sep 25, 2015, 8:28 PM</small></h4>\n");
      out.write("              <p>Me too! WOW!</p>\n");
      out.write("              <br>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>-->\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<footer class=\"container-fluid\">\n");
      out.write("  <p><font face=\"TIMES NEW ROMAN\">THANK YOU FOR VISITING!!</font></p>\n");
      out.write("</footer>\n");
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
