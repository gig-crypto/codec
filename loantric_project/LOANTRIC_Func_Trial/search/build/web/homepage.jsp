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

.mh{
  background-color: #ffffff;
}

  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  

.shiftimg{
	margin-left:201px;
	}
.thumbnail{
 display: flex;
    justify-content: center;
}
.font{
padding-top: 7px;
}

.navbar{
margin-bottom: 0;
border-radius: 0;
}

.navbarcolor{
background-color: #FF8C00;
border-color: transparent;
}

textcolor{
color: #00000;
}

 footer {
      background-color: #191970;
      color: white;
      padding-top: 8px;
    }
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 30%;
      margin: auto;
  }
   


</style>
<body>

<nav class="navbar navbar-inverse navbarcolor">
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
	<ul class="nav navbar-nav navbar-right textcolor">
<li><a href="login.html"><span class="glyphicon glyphicon-check" style="color:white"></span>&nbsp&nbsp<font color="white">Check Eligibility</font></a></li>
<li><a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-usd" style="color:white"></span>&nbsp&nbsp<font color="white">Wallet</font></a>
<!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class=" modal-header" style="padding:35px 50px;">
          <p>Please Login</p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <a href="login.html" type="submit" class="btn btn-primary btn-default pull-right"><span class="glyphicon glyphicon-user"></span> Login</a>
          
            </div>
      </div>

</li>
<li><a href="#"  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"style="color:white"></span>&nbsp&nbsp<font color="white">Sign-up</font></a>

<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-user"></span>Sign-up</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <form role="form" action="signupinsert.jsp">
		  <div class="form-group">
              <label for="fname"><span class="glyphicon glyphicon-user"></span> First name</label>
              <input type="text" class="form-control" name="fname" placeholder="First name">
            </div>
            <div class="form-group">
              <label for="lname"><span class="glyphicon glyphicon-user"></span> Last name</label>
              <input type="text" class="form-control" name="lname" placeholder="Last name">
            </div>
            <div class="form-group">
              <label for="emi"><span class="glyphicon glyphicon-envelope"></span> Email-id</label>
              <input type="text" class="form-control" name="emi" placeholder="Email">
            </div>
			<div class="form-group">
              <label for="npsw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" name="npsw" placeholder="Password">
            </div>
			<div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Re-enter Password</label>
              <input type="password" class="form-control" name="psw" placeholder="Re-enter Password">
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Sign-up</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
            </div>
      </div>

</li>
<li><a href="#" data-toggle="modal" data-target="#myModal11"><span class="glyphicon glyphicon-log-in"style="color:white"></span>&nbsp&nbsp<font color="white">Login</font></a>

      </div>
      
 <!-- Modal -->
  <div class="modal fade" id="myModal11" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <form role="form" action="login-check.jsp">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" name="inputEmail" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" name="inputPassword" placeholder="Enter password">
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p><a href="#">Forgot Password?</a></p>
        </div>
      </div>
      
    </div>
  </div> 
</div>
 
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>



</li>
</ul>
  </div>
</p>
</nav>
<div class="row-content">
<ul class="nav nav-pills nav-justified">
    <li class="dropdown">
      <a class="btn" href="login.html"><font color="#191970"><b>Home loans</b></font></a>
    </li>
    <li class="dropdown">
        <a class="btn" href="login.html"><font color="#191970"><b>Agriculture loans</b></font></a>
    </li>
    <li class="dropdown">
      <a class="btn" href="login.html"><font color="#191970"><b>Education loans</b></font></a>
    </li>
    <li class="dropdown">
      <a class="btn" href="login.html"><font color="#191970"><b>Personal loans</b></font></a>
    </li>
    <li class="dropdown">
      <a class="btn" href="login.html"><font color="#191970"><b>Others</b></font></a>
    </li>
    </ul></div>
	<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
		<div class="item active">
        <img src="p1.jpg" alt="Chania" width="10%">
        <div class="carousel-caption">
          <!--<h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>-->
        </div>
      </div>
    
      <div class="item">
        <img src="p2.jpg" alt="Flower" width="10%">
        <div class="carousel-caption">
          <!--<h3>Flowers</h3>
          <p>Beautiful flowers in Kolymbari, Crete.</p>-->
        </div>
      </div>

      <div class="item">
        <img src="p3.jpg" alt="Flower" width="10%">
        <div class="carousel-caption">
          <!--<h3>Flowers</h3>
          <p>Beautiful flowers in Kolymbari, Crete.</p>-->
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br>
<br>
<div class="container text-center">
  <h3>LOANTRIC</h3>
  <p><em>Get what you desire!!</em></p>
  <p>This website concentrates on giving proper information on all loans under government.</p>
</div>
<br>
<div class="container">
<div class="shiftimg">
 <div class="row" >
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="p1.jpg" target="_blank">
          <img src="p1.jpg" alt="Lights" class="img-responsive" style="width:87%">
          <div class="caption">
            
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="p2.jpg" target="_blank">
          <img src="p2.jpg" alt="Nature" class="img-responsive" style="width:100%">
          <div class="caption">
            
          </div>
        </a>
      </div>
    </div>
	
    <div class="col-md-3">
      <div class="thumbnail">
        <a href="p3.jpg" target="_blank">
          <img src="p3.jpg" alt="Fjords" class="img-responsive" style="width:100%">
          <div class="caption">
            
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
</div>
</div>
	<footer class="container-fluid text-center">
  <p>T&C applied | Disclaimer | Fair Practices | Code of Commitment | Privacy | Customer Services Policy</p>
</footer>

</body>
</html>
