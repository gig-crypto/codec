<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*;" %>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
<head>
    <title>Drop Downlist</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
html,
body {
  height: 100%;
}

body {
  display: -ms-flexbox;
  display: -webkit-box;
  display: flex;
  -ms-flex-align: center;
  -ms-flex-pack: center;
  -webkit-box-align: center;
  align-items: center;
  -webkit-box-pack: center;
  justify-content: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #875A7B;
}
#background-image{
		background-image: url("wall1.jpg"); 
		width:1901px;
		height: 730px;
	}
.form-signin {
  width: 435px;
  height: 320px;
  position: absolute;
  top: 160px;
  left: 560px;
  padding: 30px;
  padding-left: 35px;
  padding-right: 35px;
  margin: 0 auto;
  border: 4px solid;
  border-color: #f98518;
  background-color: #f9b175;
  box-shadow: 5px 5px #4f4a4d;
  border-radius: 15px;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
  border-radius: 10px;
  border-width: 2px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>
<body>

<%
    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/loans";
    String user = "root";
    String psw = "root";

    Connection con = null;
    PreparedStatement ps1 = null;
    
    try
    {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        String sql1 = "SELECT * FROM loans.all_loans";
        ps1 = con.prepareStatement(sql1);
        ResultSet rs1 = ps1.executeQuery();
        
%>
<form class="form-signin" method="post" action="loandisplay.jsp">
    <div style="padding-bottom: 20px">
    <p><p style="font-size: 20px;color: #7c3168;font-weight: bold;">Select Loan Scheme :</p>
        <select name="id1">
        <%
            while(rs1.next())
            {
                String fname1 = rs1.getString("Loan_Name");
                String id1 = rs1.getString("LoanID");
        %>
        <option value="<%=id1 %>"><%=fname1 %></option>
        <%
            }
        %>
        </select>
    </p>
    <p style="font-size: 20px;color: #7c3168;font-weight: bold;">Enter Your Salary :</p>
    <input type="text" class="form-control" name="salary" placeholder="Salary">
    </div>
    <div style="margin-top: 25px">
      <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </div>
</form>
    <%
        }catch(SQLException sqe)
        { 
            out.println(sqe);
        }
    %>
    
</body>
</html>