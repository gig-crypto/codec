<%-- 
    Document   : newjsp
    Created on : 12 Apr, 2018, 10:01:28 AM
    Author     : Vedang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
       // System.out.println("");
       String nm=request.getParameter("nm");
       String p=request.getParameter("password");
       if(nm.equals("a@gmail.com")&&(p.equals("hi")))
       out.println("valid user");
        %>
        
    </body>
</html>
