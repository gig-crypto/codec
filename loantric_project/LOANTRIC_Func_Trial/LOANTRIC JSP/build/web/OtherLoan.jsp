<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Other Loans</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  hr {
  height:0; 
  border:0; 
  border-top:1px solid #083972; 
}
    .modal-header, .close {
      background-color: #191970;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
    
    .row.content {height: 1500px}
    
    
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    
    .modal-footer {
      background-color: #191970;
  }

footer {
      background-color: #191970;
      color: white;
      padding-top: 8px;
    }
    
           .navbar{
margin-bottom: 0;
border-radius: 0;
background-color: #FF8C00;
border-color: transparent;

}

.font{
padding-top: 7px;
}
.button{
  background-color: #FFFFFF;
  border-color: transparent;
}
.button1
{
  background-color: #191970;
}
    
    
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 

    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
  <p class="font"><font size="5" color="white">&nbsp&nbsp&nbsp&nbsp<u>LOANTRIC</u></font>
    </div>
     <div class="col-xs-6">
    <form class="navbar-form navbar-left" action="searchtry.jsp">
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
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-2 sidenav">
        <br>
      <!--<h4><font face="Berlin sans fb demi"><b>LOANTRIC</b></font></h4>-->
      <ul class="nav nav-pills nav-stacked">
        <li><a href="HomeLoan.jsp"><b>Home Loan</b></a></li>
        <li><a href="AgriLoan.jsp"><b>Agriculture Loan</b></a></li>
        <li><a href="EduLoan.jsp"><b>Education Loan</b></a></li>
        <li><a href="PersonalLoan.jsp"><b>Personal Loan</b></a></li>
        <li class="btn btn-warning"><font color="white"><b>Others</b></font></li>
         <br>

      
      </ul><br>
      
    </div>

    <div class="col-sm-9">
      
      <h2>Travel Loan</h2>
      
      <h4>If you&apos;ve been dreaming of a vacation for a long time, don&apos;t let the expenses hold you back.Instead, opt for a Travel Loan (a Personal Loan for travel) and make memories to last you a lifetime.</h4>
      <p></p>
      <br>
      <form name="id" method="post" action="walletaddtry.jsp">
          <input type="hidden" name="loanname" value="Travel Loan">
      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1">Add to Wallet</button>
      </form>
      <!-- Modal -->
      <div class="modal fade" id="myModal5" role="dialog">
      <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><font color="white">Successfully added to wallet!</font></h4>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
      </div>
      </div>
  
    
      <br><br>
      <hr width="100%">
      <br>

      <h2>Gold Loan</h2>
      <h4>Minimum Requirements: Only one recent ID-Voter ID/ Ration Card/ Driving License/ Passport. No time-consuming formalities involved. Pay interest only for the exact period of loan, and to the exact number of days. Different schemes for different needs, to suit all income groups.Pay interest only for the exact period of loan, and to the exact number of days.Different schemes for different needs, to suit all income groups.</h4>
      <p></p>
      <br>
      <form name="id" method="post" action="walletaddtry.jsp">
          <input type="hidden" name="loanname" value="Gold Loan">
      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1">Add to Wallet</button>
      </form>
      <div class="modal fade" id="myModal5" role="dialog">
      <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><font color="white">Successfully added to wallet!</font></h4>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
      </div>
      </div>
      <br><br>
      <hr width="100%">
      
      <br>

      <h2>Business Loan</h2>
      <h4>Business loan allows you to avail Flexi loan facility. This is a unique facility given to our loan applicants, wherein you are approved for certain loan limit, for a said duration. You can choose to pay only interest amount as EMI and repay the principal amount at the end of the tenor of the facility. Hence, it acts as a big saving arm to your cash flow. Loans up to Rs.30 Lakh Whether your business has needs for short-term loans, intermediate-term loans or long-term loans, Bajaj Finserv offers business loans up to Rs.30 lakhs. You can use the loan amount to invest in infrastructure, expand operations, buy equipment or inventory, or even to increase working capital. Collateral Free Loans Bajaj Finserv&apos;s business loan are collateral-free, which means you won?t have to put your personal or business assets on the line to qualify for financing. And since you don?t need to pledge collateral, there is no requirement for appraisal of the value of your assets. As a result, with collateral-free loans, funding is much faster and requires only minimal documentation.Pre-approved offers Preapproved OffersAs an existing customer of Bajaj Finserv, you will be eligible to get exclusive pre-approved offers from us. These offers may include a top-up loan or even reduction of rates from time to time. Online Account AccessYou have the convenience of accessing your business loan statement anytime, from anywhere online.</h4>
      <p></p>
      <br>
      <form name="id" method="post" action="walletaddtry.jsp">
          <input type="hidden" name="loanname" value="Business Loan">
      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1">Add to Wallet</button>
      </form>
      <div class="modal fade" id="myModal5" role="dialog">
      <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><font color="white">Successfully added to wallet!</font></h4>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
      </div>
      </div>
      <br><br>
      <hr width="100%">
       <a class="btn btn-warning btn-lg" href="otherloan-select.jsp"><b>Compare Other Loans</b></a>
     
      <br>
    </div>
  </div>
</div>

<footer class="container-fluid">
  <p><font face="TIMES NEW ROMAN">THANK YOU FOR VISITING!!</font></p>
</footer>

</body>
</html>