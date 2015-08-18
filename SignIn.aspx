<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn | Redaptiv Health Inc.</title>
    <link runat="server" rel="icon" type="image/x-icon" href="~/images/Icon.png" />
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta name="description" content=""/>
<meta name="author" content="WebThemez"/>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />
<link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
<link href="css/animate.css" rel="stylesheet" media="screen"/>
<!-- Owl Carousel Assets -->
<link href="js/owl-carousel/owl.carousel.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/styles.css" />
<!-- Font Awesome -->
<link href="font/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <header class="header">
  <div class="container">
    <nav class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <%--<button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>--%>
        <a href="Home.aspx" class="navbar-brand scroll-top logo  animated bounceInLeft"><img src="images/Logo.png" alt="Redapiv Health Inc. Logo" /> </a> </div>
      <!--/.navbar-header-->
        <br />
      <div id="main-nav" class="collapse navbar-collapse">
        <ul class="nav navbar-nav" id="mainNav">
          <li><a href="Home.aspx" class="scroll-link">Home</a></li>
          <li><a href="JoinNow.aspx" class="scroll-link">Join Now</a></li>
          <li class="active" id="firstLink"><a href="SignIn.aspx" class="scroll-link">Sign In</a></li>
          <li><a href="Dictionary.aspx" class="scroll-link">Encyclopedia</a></li>
          <li><a href="Profile.aspx" class="scroll-link">Your Profile</a></li>
        </ul>
      </div>
      <!--/.navbar-collapse--> 
    </nav>
    <!--/.navbar--> 
  </div>
  <!--/.container--> 
</header>
<!--/.header-->
<div id="#top"></div>
<br /><br /><br /><br />
<section id="services" class="page-section colord">
  <div class="container">

    <div class="heading text-center"><h2>Sign In</h2></div>

     <%-- <div class="row"> 
      <!-- item -->
      <div class="col-md-12 text-center c1">
          <asp:Button ID="FBSignIn" runat="server" Text="Sign In using Facebook" Font-Bold="true" Font-Size="X-Large" OnClick="FBSignIn_Click"/>
      </div>    
      </div>
      <hr />--%>
      <div class="row"> 
      <!-- item -->
      <div class="col-md-12 text-center c1">
          <asp:Label ID="EmailLbl" runat="server" ForeColor="WhiteSmoke" Font-Bold="true" Text="Email"></asp:Label><br />
          <asp:TextBox ID="EmailTb" Width="220" TextMode="Email" runat="server"></asp:TextBox>
      </div>    
      </div>

      <div class="row"> 
      <!-- item -->
      <div class="col-md-12 text-center c1">
          <asp:Label ID="PwdLbl" runat="server" ForeColor="WhiteSmoke" Font-Bold="true" Text="Password"></asp:Label><br />
          <asp:TextBox ID="PwdTb" Width="220" TextMode="Password" runat="server"></asp:TextBox>
      </div>    
      </div>
    
      <div class="row"> 
      <!-- item -->
      <div class="col-md-12 text-center c1">
          <asp:Label ID="valid" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
      </div>    
      </div>

      <div class="row"> 
      <!-- item -->
      <div class="col-md-12 text-center c1">
        <asp:Button ID="SignIn" runat="server" Text="Join" ForeColor="CadetBlue" OnClick="SignIn_Click" Font-Bold="true" Width="220" />
      </div>    
      <!-- end: --> 
          <br /><br /><br />
      <div class="container">
      <div class="social text-center"> <a href="http://www.twitter.com/redaptivhealth"><i class="fa fa-twitter"></i></a> <a href="http://www.facebook.com/redaptiv"><i class="fa fa-facebook"></i></a>  <a href="http://www.chewlup.com"><b><i class="fa">Ch</i></b></a></div>
      <!--CLEAR FLOATS--> 
    </div>
    </div>
  </div>
  <!--/.container--> 
</section>

<section class="copyright">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 text-center"> Copyright 2015 | All Rights Reserved -- Developed by <a href="http://www.talhashahzad.branded.me/">Talha Shahzad</a> </div>
    </div>
    <!-- / .row --> 
  </div>
</section>
<a href="#top" class="topHome"><i class="fa fa-chevron-up fa-2x"></i></a> 

<!--[if lte IE 8]><script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><![endif]--> 
<script src="js/modernizr-latest.js"></script> 
<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script> 
<script src="js/bootstrap.min.js" type="text/javascript"></script> 
<script src="js/jquery.isotope.min.js" type="text/javascript"></script> 
<script src="js/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script> 
<script src="js/jquery.nav.js" type="text/javascript"></script> 
<script src="js/jquery.fittext.js"></script> 
<script src="js/waypoints.js"></script> 
<script src="js/custom.js" type="text/javascript"></script> 
<script src="js/owl-carousel/owl.carousel.js"></script>
    </form>
</body>
</html>
