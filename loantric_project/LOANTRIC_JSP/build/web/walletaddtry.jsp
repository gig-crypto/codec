<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
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
        %>
    </body>
</html>