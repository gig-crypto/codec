package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class walletaddtry_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String loanname = request.getParameter("loanname");
            String wallet1 = null;
            String wallet2 = null;
            String wallet3 = null;
            
            String sqlw1 = "update customer.custdata SET Wallet_1=? WHERE CustID=1";
            String sqlw2 = "update customer.custdata SET Wallet_2=? WHERE CustID=1";
            String sqlw3 = "update customer.custdata SET Wallet_3=? WHERE CustID=1";
             
            String sql1 = "select * from customer.custdata where CustID=1";
            
            PreparedStatement ps1 = null;
            PreparedStatement ps2 = null;
            
            ResultSet rs1 = null;
            
            Connection con =null;
        
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","root");
                
                ps2 = con.prepareStatement(sql1);
                rs1 = ps2.executeQuery();
                
                if(rs1.next())
                {   
                    wallet1 = rs1.getString("Wallet_1");
                    if(wallet1==null)
                    {    
                        ps1 = con.prepareStatement(sqlw1);                
                        ps1.setString(1,loanname);
                        ps1.executeUpdate();
                        rs1.close();
                        response.sendRedirect("wishlist.jsp");            
                    }
                }
            
                rs1.beforeFirst();
                if(rs1.next())
                {
                    wallet2 = rs1.getString("Wallet_2");
                    if(wallet2==null)
                    {    
                        ps1 = con.prepareStatement(sqlw2);                
                        ps1.setString(1,loanname);
                        ps1.executeUpdate();
                        rs1.close();
                        response.sendRedirect("wishlist.jsp");            
                    }
                }
                
                rs1.beforeFirst();
                if(rs1.next())
                {
                    wallet3 = rs1.getString("Wallet_3");
                    if(wallet3==null)
                    {    
                        ps1 = con.prepareStatement(sqlw3);                
                        ps1.setString(1,loanname);
                        ps1.executeUpdate();
                        rs1.close();
                        response.sendRedirect("wishlist.jsp");            
                    }
                }
                
                if((wallet1!=null)&&(wallet2!=null)&&(wallet3!=null))
                {
                    out.println("Wallet is FULL...!");
                }
                
            }catch(Exception e)
             {
                out.println(e);
             }
        
      out.write("\n");
      out.write("    </body>\n");
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
