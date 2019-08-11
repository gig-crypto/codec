<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Education Loan</title>
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
    
    
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
 .button{
  background-color: #FFFFFF;
  border-color: transparent;
}
.button1
{
  background-color: #191970;
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
      
      <ul class="nav nav-pills nav-stacked">
        <li><a href="HomeLoan.jsp"><b>Home Loan</b></a></li>
        <li><a href="AgriLoan.jsp"><b>Agriculture Loan</b></a></li>
        <li class="btn btn-warning"><font color="white"><b>Education Loan</b></font></li>
        <li><a href="PersonalLoan.jsp"><b>Personal Loan</b></a></li>
        <li><a href="OtherLoan.jsp"><b>Others</b></a></li>
        <br>

      
      </ul><br>
      
    </div>

    <div class="col-sm-9">
      
      <h2>Samagra Shiksha Abhiyan</h2>
      
      <h4>Samagra Shiksha Abhiyan has been operational since 2000-2001 to provide for a variety of interventions for universal access and retention, bridging of gender and social category gaps in elementary education and improving the quality of learning. Samagra Shiksha Abhiyan interventions include inter alia, opening of new schools and alternate schooling facilities, construction of schools and additional classrooms, toilets and drinking water, provisioning for teachers, regular teacher in service training and academic resource support, free textbooks& uniforms and support for improving learning achievement levels / outcome. With the passage of the RTE Act, changes have been incorporated into the Samagra Shiksha Abhiyan approach, strategies and norms. </h4>
      <p></p>
      <br>
      <form name="id" method="post" action="walletaddtry.jsp">
          <input type="hidden" name="loanname" value="Samagra Shiksha Abhiyan">
      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1">Add to Wallet</button>
      </form>
      <!-- Modal -->
      <div class="modal fade" id="myModal3" role="dialog">
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

      
      <h2>Rashtriya Madhyamik Shiksha Abhiyan</h2>
      <h4>This scheme was launched in March, 2009 with the objective to enhance access to secondary education and to improve its quality. The implementation of the scheme started from 2009-10. It is envisaged to achieve an enrolment rate of 75% from 52.26% in 2005-06 at secondary stage of implementation of the scheme by providing a secondary school within a reasonable distance of any habitation. The other objectives include improving quality of education imparted at secondary level through making all secondary schools conform to prescribed norms, removing gender, socio-economic and disability barriers, providing universal access to secondary level education by 2017</h4>
      <p></p>
      <br>
      <form name="id" method="post" action="walletaddtry.jsp">
          <input type="hidden" name="loanname" value="Rashtriya Madhyamik Shiksha Abhiyan">
      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1">Add to Wallet</button>
      </form>
      <!-- Modal -->
      <div class="modal fade" id="myModal3" role="dialog">
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

      <h2>Jan Shikshan Abhiyan</h2>
      <h4>Jan Shiksha Abhiyan is a holistic scheme of development for higher education in India initiated in 2013 by the Ministry of Human Resource Development, Government of India. The centrally sponsored scheme aims at providing strategic funding to higher educational institutions throughout the country. Funding is provided by the central ministry through the state governments and union territories (UT), which in coordination with the central Project Appraisal Board will monitor the academic, administrative and financial advancements taken under the scheme.[1] A total of 316 state public universities and 13,024 colleges will be covered under it.</h4>
      <p></p>
      <br>
      <form name="id" method="post" action="walletaddtry.jsp">
          <input type="hidden" name="loanname" value="Jan Shikshan Abhiyan">
      <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#myModal1">Add to Wallet</button>
      </form>
      <!-- Modal -->
      <div class="modal fade" id="myModal3" role="dialog">
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
      <a class="btn btn-warning btn-lg" href="educationalloans-select.jsp"><b>Compare Educational Loans</b></a>
      <br>
      
    </div>
  </div>
</div>

<footer class="container-fluid">
  <p><font face="TIMES NEW ROMAN">THANK YOU FOR VISITING!!</font></p>
</footer>

</body>
</html>