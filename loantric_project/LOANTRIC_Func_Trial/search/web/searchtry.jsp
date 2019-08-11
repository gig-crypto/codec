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
    String loandbname = null;

    Connection con= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/customer";
    String user = "root";
    String dbpsw = "root";

    
    String searchname = request.getParameter("search");
    String sql = "select * from loans.all_loans where Loan_Name=?";
    

    if(!(searchname.equals(null) || searchname.equals("")))
    {
        try{
                Class.forName(driverName);
                con = DriverManager.getConnection(url, user, dbpsw);
                ps = con.prepareStatement(sql);
                ps.setString(1, searchname);
                rs = ps.executeQuery();
                
                if(rs.next())
                { 
                    loandbname = rs.getString("Loan_Name");
                    
                    if(searchname.equals(loandbname))
                    {
                        %>
                        <center><pre><h1>Search of "<%=searchname%>" Found</h1></pre</center>
                        <%
                    }
                }
                else
                {
                    %>
                        <center><pre><h1>Search of "<%=searchname%>" Not Found</h1></pre></center>
                    <%
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
        <% 
            response.sendRedirect("nosearch.html");
    }
        %>
</body>
</html>
