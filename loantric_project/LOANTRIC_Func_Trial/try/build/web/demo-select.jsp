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
  width: 370px;
  height: 385px;
  position: absolute;
  top: 160px;
  left: 588px;
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
    PreparedStatement ps2 = null;
    
    try
    {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        
        String sql1 = "SELECT * FROM loans.tablenames";       
        ps1 = con.prepareStatement(sql1);       
        ResultSet rs1 = ps1.executeQuery();
                
%>


<form class="form-signin" method="post" action="demo.jsp">
    <div style="padding-bottom: 20px">
        <p style="font-size: 20px;color: #7c3168;font-weight: bold;">Select Loan Type :</p>
        <select name="type">
        <option value="" selected>-Select Your Choice-</option>
        <%
            while(rs1.next())
            {
        %>
        <option value="<%=rs1.getString("tabnames") %>"><%=rs1.getString("tabnames") %></option>
        <%
            }
        %>
        </select>
    </div>
    <%
        String loan = request.getParameter("type");
        
        String sql2 = "SELECT * FROM loans.?";
        
        ps2 = con.prepareStatement(sql2);
        ps2.setString(1, loan);
        
        ResultSet rs2 = ps2.executeQuery();
        
    %>
    <div style="padding-bottom: 20px">
    <p><p style="font-size: 20px;color: #7c3168;font-weight: bold;">Select First Loan Scheme :</p>
    <select name="id1">
        <option value="" selected>-Select Your Choice-</option>
        <%
            while(rs2.next())
            {
                String fname1 = rs2.getString("Loan_Name");
                String id1 = rs2.getString("LoanID");
        %>
        <option value="<%=id1 %>"><%=fname1 %></option>
        <%
            }
        %>
        </select>
    </p>
    </div>
    <div>
    <p><p style="font-size: 20px;color: #7c3168;font-weight: bold;">Select Second Loan Scheme :</p>
        <select name="id2">
        <option value="" selected>-Select Your Choice-</option>
        <%
            rs2.beforeFirst();
            while(rs2.next())
            {
                String fname2 = rs2.getString("Loan_Name");
                String id2 = rs2.getString("LoanID");
        %>
        <option value="<%=id2 %>"><%=fname2 %></option>
        <%
            }
        %>
        </select>
    </p>
    </div>
    <div style="margin-top: 25px">
      <button class="btn btn-lg btn-primary btn-block" type="submit">Compare</button>
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