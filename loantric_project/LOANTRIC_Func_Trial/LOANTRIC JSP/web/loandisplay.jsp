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
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    html,html a {
	-webkit-font-smoothing: antialiased;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.004);
}

body {
	font-family: 'Open Sans', sans-serif;
	background: #875A7B;
}

#plans,#plans ul,#plans ul li {
	margin: 0;
	padding: 0;
	list-style: none;
}

#pricePlans:after {
	content: '';
	display: table;
	clear: both;
}

#pricePlans {
	zoom: 1;
}

#pricePlans {
	position: absolute;
	width: 1000px;
	top: 115px;
	left: 600px;
}

#pricePlans #plans .plan {
	background: #fff;
	float: left;
	width: 100%;
	text-align: center;
	border-radius: 15px;
	margin: 0 0 20px 0;

	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.1);
	box-shadow: 0 1px 3px rgba(0,0,0,0.1);
}

.eligible
{
    padding-bottom: 20px;
}

.planContainer .title h2 {
	font-size: 20px;
	font-weight: 300;
	color: #3e4f6a;
	margin: 0;
	padding: .6em 0;
}

.planContainer .title h2.bestPlanTitle {
	background: #F9F9F9;

	background: -webkit-linear-gradient(top, #475975, #364761);
	background: -moz-linear-gradient(top, #475975, #364761);
	background: -o-linear-gradient(top, #475975, #364761);
	background: -ms-linear-gradient(top, #475975, #364761);
	background: linear-gradient(top, #475975, #364761);
	color: #fff;
	border-radius: 15px 15px 0 0;
}


.planContainer .price p {
	background: #3e4f6a;

	background: -webkit-linear-gradient(top, #475975, #364761);
	background: -moz-linear-gradient(top, #475975, #364761);
	background: -o-linear-gradient(top, #475975, #364761);
	background: -ms-linear-gradient(top, #475975, #364761);
	background: linear-gradient(top, #475975, #364761);
	color: #fff;
	font-size: 1.2em;
	font-weight: 700;
	height: 2.6em;
	line-height: 2.6em;
	margin: 0 0 1em;
}

.planContainer .price p.bestPlanPrice {
	background: #f7814d;
}

.planContainer .price p span {
	color: #8394ae;
}

.planContainer .options {
	margin-top: 10em;
}

.planContainer .options li {
	font-weight: 700;
	color: #364762;
	line-height: 2.5;
}

.planContainer .options li span {
	font-weight: 400;
	color: #979797;
}

.planContainer .button a {
	text-transform: uppercase;
	text-decoration: none;
	color: #3e4f6a;
	font-weight: 700;
	letter-spacing: 3px;
	line-height: 2.8em;
	border: 2px solid #3e4f6a;
	display: inline-block;
	width: 80%;
	height: 2.8em;
	border-radius: 4px;
	margin: 1.5em 0 1.8em;
}

.planContainer .button a.bestPlanButton {
	color: #fff;
	background: #f7814d;
	border: 2px solid #f7814d;
}

#credits {
	text-align: center;
	font-size: .8em;
	font-style: italic;
	color: #777;
}

#credits a {
	color: #333;
}

#credits a:hover {
	text-decoration: none;
}

@media screen and (min-width: 481px) and (max-width: 768px) {

#pricePlans #plans .plan {
	width: 49%;
	margin: 0 2% 20px 0;
}

#pricePlans #plans > li:nth-child(2n) {
	margin-right: 0;
}

}

@media screen and (min-width: 769px) and (max-width: 1024px) {

#pricePlans #plans .plan {
	width: 49%;
	margin: 0 2% 20px 0;
}

#pricePlans #plans > li:nth-child(2n) {
	margin-right: 0;
}

}

@media screen and (min-width: 1025px) {

#pricePlans {
	margin: 2em auto;
}

#pricePlans #plans .plan {
	width: 32%;
	margin: 0 1.33% 20px 0;

	-webkit-transition: all .25s;
	   -moz-transition: all .25s;
	    -ms-transition: all .25s;
	     -o-transition: all .25s;
	        transition: all .25s;
}

#pricePlans #plans > li:last-child {
	margin-right: 0;
}

#pricePlans #plans .plan:hover {
	-webkit-transform: scale(1.04);
	   -moz-transform: scale(1.04);
	    -ms-transform: scale(1.04);
	     -o-transform: scale(1.04);
	        transform: scale(1.04);
}

.planContainer .button a {
	-webkit-transition: all .25s;
	   -moz-transition: all .25s;
	    -ms-transition: all .25s;
	     -o-transition: all .25s;
	        transition: all .25s;
}

.planContainer .button a:hover {
	background: #f7814d;
	color: #fff;
}

.planContainer .button a.bestPlanButton:hover {
	background: #ff9c70;
	border: 2px solid #ff9c70;
}

}

</style>

<body>

<%
    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/loans";
    String user = "root";
    String psw = "root";
    String lnid1=request.getParameter("id1");
    Integer salary=Integer.parseInt(request.getParameter("salary"));

    
    Connection con = null;
    PreparedStatement ps1 = null;

    ResultSet rs1 = null;

    Double min_sal = null;
    try
    {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        
        String sql1 = "SELECT * FROM loans.all_loans WHERE LoanID=?";
        ps1 = con.prepareStatement(sql1);
        ps1.setString(1,lnid1);
        rs1 = ps1.executeQuery();
        %>
        <section id="pricePlans">
	<ul id="plans">
        <%
        if(rs1.next())
        {
            min_sal = rs1.getDouble("Min_Salary_Req");
            if(salary > min_sal)
            {    
            %>
                <div class="container eligible">
                    <h1><font face="calibri" color="white"><b>&nbsp&nbsp&nbsp&nbspYou Are Eligible</b></font></h1>
                </div>
    
    
            <li class="plan">
		<ul class="planContainer">
                    <li class="title"><h2 class="bestPlanTitle"><%=rs1.getString("Loan_Name") %></h2></li>
			<li>
                            <ul class="options">
                        	<li>Rate of Interest: <br><span><%=rs1.getString("Rate_of_Interest") %></span></li>
                                <li>Minimum Salary Required: <br><span><%=rs1.getString("Min_Salary_Req") %></span></li>
                                <li>Loan Ticket Size: <br><span><%=rs1.getString("Loan_Ticket_Size") %></span></li>
                            </ul>
			</li>
                    
		</ul>
            </li>
            <%
            }
            else
            {
            %>
            <div class="container eligible">
                <h1><font face="calibri" color="white"><b>You Are Not Eligible</b></font></h1>
            </div>
            <li class="plan">
		<ul class="planContainer">
                    <li class="title"><h2 class="bestPlanTitle"><%=rs1.getString("Loan_Name") %></h2></li>
			<li>
                            <ul class="options">
                        	<li>Rate of Interest: <br><span><%=rs1.getString("Rate_of_Interest") %></span></li>
                                <li>Minimum Salary Required: <br><span><%=rs1.getString("Min_Salary_Req") %></span></li>
                                <li>Loan Ticket Size: <br><span><%=rs1.getString("Loan_Ticket_Size") %></span></li>
                            </ul>
			</li>
                    
		</ul>
            </li>
           <%
           }
           %>
	</ul>
    </section>
            
    <%
        }
    }catch(SQLException sqe)
        { 
            out.println(sqe);
        }
    %>

</body>
</html>