<%-- 
    Document   : signupinsert
    Created on : 15 Apr, 2018, 4:17:20 PM
    Author     : Vedang
--%>

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
            String firstname = request.getParameter("fname");
            String lastname = request.getParameter("lname");
            String email = request.getParameter("emi");
            String pass = request.getParameter("psw");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","root");
            
                Statement st = con.createStatement();
            
                st.executeUpdate("insert into custdata(First_Name,Last_Name,Cust_Password,Email)values('"+firstname+"','"+lastname+"','"+pass+"','"+email+"')");
            
                response.sendRedirect("openpage.jsp");            
                }catch(Exception e){
                    out.println(e);
                }
        %>
    </body>
</html>
