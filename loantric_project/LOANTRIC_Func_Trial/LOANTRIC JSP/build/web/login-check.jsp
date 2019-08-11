<%-- 
    Document   : login-check
    Created on : 16 Apr, 2018, 11:59:45 PM
    Author     : Vedang
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Login</title>
</head>
<body>
<% 
    String userdbEmail;
    String userdbPsw;
    String CustIDdb;
    String CustIDname;

    Connection con= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/customer";
    String user = "root";
    String dbpsw = "root";

    String sql = "select * from customer.custdata where Email=? and Cust_Password=?";
    String userid = null;
    String username = null;
    String email = request.getParameter("inputEmail");
    String password = request.getParameter("inputPassword");

    if((!(email.equals(null) || email.equals("")) && !(password.equals(null) || password.equals(""))))
    {
        try{
                Class.forName(driverName);
                con = DriverManager.getConnection(url, user, dbpsw);
                ps = con.prepareStatement(sql);
                ps.setString(1, email);
                ps.setString(2, password);
                rs = ps.executeQuery();
                
                if(rs.next())
                { 
                    userdbEmail = rs.getString("Email");
                    userdbPsw = rs.getString("Cust_Password");
                    CustIDdb = rs.getString("CustID");
                    CustIDname = rs.getString("First_Name");
                    
                    if(email.equals(userdbEmail) && password.equals(userdbPsw))
                    {
                        session.setAttribute("userid",CustIDdb);
                        session.setAttribute("username",CustIDname);
                        response.sendRedirect("openpage.jsp"); 
                    }
                }
                else
                {
                    response.sendRedirect("error.jsp");
                    rs.close();
                    ps.close();
                }
            }
            catch(SQLException sqe)
            {
                out.println(sqe);
            } 
    }
    else
    {
%>
        <center><p style="color:red">Please valid E-Mail or Password</p></center>
        <% 
            getServletContext().getRequestDispatcher("/login.jsp").include(request,response);
    }
        %>
</body>
</html>
