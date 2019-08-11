<%-- 
    Document   : mail1
    Created on : 25 Apr, 2018, 7:54:08 PM
    Author     : Vedang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
    </head>
    <body>
        <h3>Contact US for Password Forget</h3>
        <form method="POST" action="mail2">
            <table>
                <tr>
                    <td align="center">To:</td>
                    <td><input type="text" name="toemail" size="75"></td>
                </tr>
                
                <tr>
                    <td><input type="submit" name="send" value="send"></td>
                </tr>
                
                
            </table>
            
            
        </form>
    </body>
</html>
