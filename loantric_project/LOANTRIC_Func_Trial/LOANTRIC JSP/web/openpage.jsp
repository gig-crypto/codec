<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Loantric</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>

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


.panel_color{
  background-color: #191970;
}

.shiftimg{
  margin-left: 270px;
}

.jumbotron{
  background-color: #FFF0B2;
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

</style>
<body >

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
}catch(SQLException sqe)
        { 
            out.println(sqe);
        }
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
<li><a href="wishlist.jsp"><span class="glyphicon glyphicon-usd" style="color: white"></span>&nbsp&nbsp<font color="white">Wallet</font></a></li>
<li><a href="homepage.jsp" style="color: white"><span class="glyphicon glyphicon-log-in"></span>&nbsp&nbsp<font color="white">Logout</font></a></li>
</ul>
</p>
  </div>
</nav>
<br>
<div class="container">
  <div class="jumbotron">
    <h1><font face="berlin sans fb demi"><b>WELCOME TO LOANTRIC !!</b></font></h1>      
    <h3><em>Get what you desire...</em></h3>
  </div>     
</div>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading"><a href="HomeLoan.jsp"><font color="white">HOME LOANS</font></a></div>
        <div class="panel-body"><img src="home loan.jpg" class="img-responsive" style="width:81%" alt="Image"></div>
        <div class="panel-footer">......................</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading"><a href="AgriLoan.jsp"><font color="white">AGRICULTURAL LOANS</font></a></div>
        <div class="panel-body"><img src="agriculture loan.jpg" class="img-responsive" style="width:99%" alt="Image"></div>
        <div class="panel-footer">.....................</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading"><a href="EduLoan.jsp"><font color="white">EDUCATIONAL LOANS</font></a></div>
        <div class="panel-body"><img src="education-loan.jpg" class="img-responsive" style="width:67%" alt="Image"></div>
        <div class="panel-footer">................</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container shiftimg">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading"><a href="PersonalLoan.jsp"><font color="white">PERSONAL LOANS</font></a></div>
        <div class="panel-body"><img src="personal_loan.jpg" class="img-responsive" style="width:96%" alt="Image"></div>
        <div class="panel-footer">................</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading"><a href="OtherLoan.jsp"><font color="white">OTHERS</font></a></div>
        <div class="panel-body"><img src="other loan.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">....................</div>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>T&C applied | Disclaimer | Fair Practices | Code of Commitment | Privacy | Customer Services Policy</p>
</footer>
</body>
</html>