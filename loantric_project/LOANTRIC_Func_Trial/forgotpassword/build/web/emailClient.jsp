<%-- 
    Document   : emailClient
    Created on : 26 Apr, 2018, 1:15:32 AM
    Author     : Vedang
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email Client</title>
    </head>
    <body>
        <h1>Contact Us...</h1>
        <form method="POST" action="MailDispatcherServlet">
            <table>
                <tr>
                    <td align="right"><b>To : </b></td>
                    <td>
                        <input type="text" name="email" size="75">
                    </td>
                </tr>
                <tr>
                    <td align="right"><b>Subject : </b></td>
                    <td>
                        <input type="text" name="subject" size="75">
                    </td>
                </tr>
                <tr>
                    <td align="right"><b>Message : </b></td>
                    <td>
                        <textarea name="message" cols="69" rows="6"></textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Send">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
