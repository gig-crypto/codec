<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Agricultural Loans</title>
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
        <li class="btn btn-warning"><font color="white"><b>Agriculture Loan</b></font></li>
        <li><a href="EduLoan.jsp"><b>Education Loan</b></a></li>
        <li><a href="PersonalLoan.jsp"><b>Personal Loan</b></a></li>
        <li><a href="OtherLoan.jsp"><b>Others</b></a></li>
         <br>

        
      
      </ul><br>
      
    </div>

    <div class="col-sm-9">
      
      <h2>Subsidy for Organic Farming(SOF)</h2>
      
      <h4>The increasing and continued use of synthetic fertilizers and pesticides is starting to cause environmental deterioration and health problems. Therefore, there is an increasing need for organically farmed produce, as consumer awareness and environmental regulations continues to evolve. Organic farming requires biological and organic inputs in lieu of chemical inputs and there is a need to augment the production of bio-fertilizers or organic fertilizers in India. Accordingly, the Government of India under National Project on Organic Farming provides capital investment subsidy for commercial production units manufacturing organic fertilizers / bio-fertilizers.  In this article, we look at the subsidy for organic farming in India, in terms of units manufacturing bio-fertilizers, bio-pesticides or fruit & vegetable compost.<br></h4>
      <p></p>
      <br>
      <form name="id" method="post" action="walletaddtry.jsp">
          <input type="hidden" name="loanname" value="Subsidy for Organic Farming(SOF)">
      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1">Add to Wallet</button>
      </form>
      <!-- Modal -->
      <div class="modal fade" id="myModal2" role="dialog">
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

      <h2>Setting of Rural Godowns and Storage Infrastructure</h2>
      <h4>The main objectives of the scheme include creation of scientific storage capacity with allied facilities in rural areas to meet the requirements of farmers for storing farm produce, processed farm produce, consumer articles and agricultural inputs; promotion of grading, standardization and quality control of agricultural produce to improve their marketability; prevention of distress sale immediately after harvest, promotion of pledge financing and marketing credit and to strengthen agricultural marketing infrastructure in the country for the introduction of a national system of warehouse receipts in respect of agricultural commodities stored in such godowns. However, the materials used and design of the godown would depend upon the produce proposed to be stored.</h4>
      <p></p>
      <br>
      <form name="id" method="post" action="walletaddtry.jsp">
          <input type="hidden" name="loanname" value="Setting of Rural Godowns and Storage Infrastructure">
      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1">Add to Wallet</button>
      </form>
      <!-- Modal -->
      <div class="modal fade" id="myModal2" role="dialog">
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

      <h2>Agricultural and Marketing Infrastructure Upgradation</h2>
      <h4>It is common knowledge that there is a need to promote agriculture marketing infrastructure projects for reducing the involvement of intermediates and minimizing post-harvest losses. A robust agriculture marketing infrastructure will ensure better remuneration to farmers and supply of better quality products to consumers and processing industries. During the XII plan period, the estimated investment for marketing infrastructure and value chain development was Rs. 56,000 crores.
          <br>
To address this need, the Department of Agriculture and Cooperation (DAC), Govt. of India has introduced the Agricultural Marketing Infrastructure (AMI) Scheme by merging the earlier Grameen Bhandaran Yojana (GBY) and the Scheme for Development/Strengthening of Agricultural Marketing Infrastructure, Grading and Standardization (AMIGS).   
 </h4>
      <p></p>
      <br>
      <form name="id" method="post" action="walletaddtry.jsp">
          <input type="hidden" name="loanname" value="Agricultural and Marketing Infrastructure Upgradation">
      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1">Add to Wallet</button>
      </form>
      <!-- Modal -->
      <div class="modal fade" id="myModal2" role="dialog">
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
      <a class="btn btn-warning btn-lg" href="agriculturalloan-select.jsp"><b>Compare Agricultural Loans</b></a>
      <br>
    </div>
  </div>
</div>

<footer class="container-fluid">
  <p><font face="TIMES NEW ROMAN">THANK YOU FOR VISITING!!</font></p>
</footer>

</body>
</html>