<%-- 
    Document   : insertdata
    Created on : 13 Apr, 2018, 7:29:25 PM
    Author     : Vedang
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","root");
            
                Statement st = con.createStatement();
            
                st.executeUpdate("insert into register(name,email,password)values('"+name+"','"+email+"','"+pass+"')");
            
                out.println("data is inserted");            
                }catch(Exception e){
                    out.println(e);
                }
        %>
    </body>
</html>
