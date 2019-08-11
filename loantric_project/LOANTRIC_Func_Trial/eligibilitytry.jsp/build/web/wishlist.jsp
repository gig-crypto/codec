<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>wallet</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>

.text{
  text-align: "center";
}

.button{
  background-color: #FFFFFF;
  border-color: transparent;
}
.button1
{
  background-color: #191970;
}

 .modal-header, h4, .close {
      background-color: #191970;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #191970;
  }

footer {
      background-color: #191970;
      color: white;
      padding-top: 8px;
    }
.font{
padding-top: 7px;
}

.navbar{
margin-bottom: 0;
border-radius: 0;
background-color: #FF8C00;
border-color: transparent;

}

table th, td{
    border-spacing: 5px;
    border: 3px solid black;
    border-radius:6px;
    border-collapse: separate;
    width: 940px;
    padding: 30px;
}

</style>
<body>
<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
  <p class="font"><font size="5" color="white">&nbsp&nbsp&nbsp&nbsp<u>LOANTRIC</u></font>
    </div>
     <div class="col-xs-6">
    <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" size="40" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
  </div>
  <ul class="nav navbar-nav navbar-right">
<li><a href="#"  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-check" style="color: white"></span>&nbsp&nbsp<font color="white">Check Eligibility</font></a>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-ok"></span> Eligibility-Check</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
        <%
            String driverName = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/loans";
            String user = "root";
            String psw = "root";

            Connection con = null;
            PreparedStatement ps1 = null;
            
            String lnid1=request.getParameter("id1");
            String lnid2=request.getParameter("id2");

            PreparedStatement ps2 = null;
            PreparedStatement ps3 = null;
            ResultSet rs2 = null;
            ResultSet rs3 = null;

            String wallet1 = null;
            String wallet2 = null;
            String wallet3 = null;
    
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
    <p style="font-size: 20px;color: #7c3168;font-weight: bold;">Select Loan Scheme :</p>
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
            rs1.close();
        %>
        </select>
        <br><br>
        <p style="font-size: 20px;color: #7c3168;font-weight: bold;">Salary :</p>
        <input type="text" class="form-control" name="salary" placeholder="Enter Your Salary">
        </div>
        <div style="margin-top: 25px">
            <button type="submit" class="btn btn-success btn-block button1"><span class="glyphicon glyphicon-check"></span> Check Eligibility</button>
        </div>
        </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left button" data-dismiss="modal"><span class="glyphicon glyphicon-remove" style="color: black"></span><font color="black"><b> Cancel</b></font></button>
            </div>
      </div>
    </div>
</li>
<li><a href="homepage.jsp" style="color: white"><span class="glyphicon glyphicon-log-in"></span>&nbsp&nbsp<font color="white">Logout</font></a></li>
</ul>
</p>
  </div>
</nav>
	
<br>
<div class="container text-center">
  <h1><font face="calibri">MY WALLET</font></h1>
  <hr width=100%>
</div>
<br><br><br>

    <%
        String sql2 = "SELECT * FROM customer.custdata WHERE CustID=1";
        
        ps2 = con.prepareStatement(sql2);
        rs2 = ps2.executeQuery();
        
        if(rs2.next())
        {
            wallet1 = rs2.getString("Wallet_1");
            if(wallet1!=null)
            {
    %>
            <table align="center">        
            <tr><td><h3><%=wallet1%></h3></td></tr>
            </table><br>
            <%
            }
        }
        rs2.beforeFirst();
        if(rs2.next())
        {
            wallet2 = rs2.getString("Wallet_2");
            if(wallet2!=null)
            {
    %>
            <table align="center">        
            <tr><td><h3><%=wallet2%></h3></td></tr>
            </table><br>
            <%
            }
        }
            rs2.beforeFirst();
            if(rs2.next())
                {
                    wallet3 = rs2.getString("Wallet_3");
                    if(wallet3!=null)
                    {
            %>
            <table align="center">        
            <tr><td><h3><%=wallet3%></h3></td></tr>
            </table><br>
            <%
                }
            }
           
    }catch(SQLException sqe)
        { 
            out.println(sqe);
        }
    %>
</table>
</div>

</body>
</html>