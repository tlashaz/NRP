<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dictionary.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Encyclopedia | Redaptiv Health Inc.</title>
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
    <style type="text/css">
        .Star
        {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }
        .WaitingStar
        {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }
        .FilledStar
        {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
        .PurpleStar
        {
            background-image: url(images/Purple.gif);
            height: 17px;
            width: 17px;
        }
        .BlueStar
        {
            background-image: url(images/Blue.png);
            height: 17px;
            width: 17px;
        }
        .GoldStar
        {
            background-image: url(images/GoldStar.gif);
            height: 17px;
            width: 17px;
        }
        .rating
        {
            padding-left:20%;
        }
        .link
        {
            font-size:20px;
            color:whitesmoke;
            font-family:'Oswald',sans-serif;
            font-weight:300;
        }
    </style>
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
          <li><a href="SignIn.aspx" class="scroll-link">Sign In</a></li>
          <li class="active" id="firstLink"><a href="Dictionary.aspx" class="scroll-link">Encyclopedia</a></li>
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
      <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
  <div class="heading text-center"><h2>Encyclopedia</h2></div>
          <div class="row">
              <div style="height:auto">
                  <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </cc1:ToolkitScriptManager>
                  <!-- Disease-1 -->
                   <div class="col-md-12">
                  <details>
                      <summary style="font-family: 'Oswald', sans-serif; font-size:24px; color:#fff; font-weight: 500;">
                    <u>Boswellia (Indian frankincense)</u><br />
                          <asp:Table runat="server">
                          <asp:TableRow>
                              <asp:TableCell HorizontalAlign="Center" Width="150" CssClass="link" Text="Effectiveness"></asp:TableCell>
                              <asp:TableCell HorizontalAlign="Center" Width="150" CssClass="link" Text="Safety"></asp:TableCell>
                              <asp:TableCell HorizontalAlign="Center" Width="150" CssClass="link" Text="Drug Attraction"></asp:TableCell></asp:TableRow>
                    <asp:TableRow>
                    <asp:TableCell Width="50" HorizontalAlign="Center"><cc1:Rating ID="Rating1" runat="server" CssClass="rating" CurrentRating="3" ReadOnly="true"
                        StarCssClass="Star" EmptyStarCssClass="Star" WaitingStarCssClass="Star" FilledStarCssClass="GoldStar">
                    </cc1:Rating></asp:TableCell>
                    
                    <asp:TableCell Width="50" HorizontalAlign="Center"><cc1:Rating ID="Rating2" runat="server" CssClass="rating" CurrentRating="3" ReadOnly="true"
                        StarCssClass="Star" EmptyStarCssClass="Star" WaitingStarCssClass="Star" FilledStarCssClass="BlueStar">
                    </cc1:Rating></asp:TableCell>
                    
                    <asp:TableCell Width="50" HorizontalAlign="Center"><cc1:Rating ID="Rating3" runat="server" CssClass="rating" CurrentRating="3" ReadOnly="true"
                        StarCssClass="Star" EmptyStarCssClass="Star" WaitingStarCssClass="Star" FilledStarCssClass="PurpleStar">
                    </cc1:Rating></asp:TableCell></asp:TableRow></asp:Table>
                      </summary>
                   <br /><b /><br />
                   <div class="col-md-12">
                      <h4 style="color:whitesmoke">SAFETY</h4>
                       <p style="text-align:justify; font-weight:100">Indian frankincense is LIKELY SAFE for most adults when taken by mouth for up to six months.</p>
                       <p style="text-align:justify; font-weight:100">Indian frankincense is POSSIBLY SAFE when applied to the skin for up to 30 days. It usually does not cause important side effects. However, some people who took it reported stomach pain, nausea, and diarrhea. When applied to the skin, it can cause allergic rash.</p>

                       <br />

                       <h4 style="color:whitesmoke">DRUG INTERACTIONS</h4>
                       <p style="text-align:justify; font-weight:100"><b>Overall Rating = Moderate</b><br />
                           May decrease how quickly liver breaks down some medications.</p>
                       <br />
                       
                       <h4 style="color:whitesmoke">WHAT OTHER NAMES IS THE PRODUCT KNOWN BY?</h4>
                       <p style="text-align:justify; font-weight:100">Arbre à Encens, Arbre à Oliban Indien, Boswella, Boswellia, Boswellia serrata, Boswellie, Boswellin, Boswellin Serrata Resin.</p>
                       <br />
                       <h4 style="color:whitesmoke">TYPICAL DOSAGE</h4>
                       <p style="text-align:justify; font-weight:100">100-250 mg daily.</p>
                       
                       <br />

                       <h4 style="color:whitesmoke">DESCRIPTION</h4>
                       <p style="text-align:justify; font-weight:100">Indian frankincense is a tree that is native to India and Arabia. It is commonly used in the traditional Indian medicine, Ayurveda.</p>
                       <p style="text-align:justify; font-weight:100">Olibanum is another word for frankincense. It refers to a resin or “sap” that seeps from openings in the bark of several Boswellia species, including Boswellia serrata, Boswellia carterii, and Boswellia frereana. Of these, Boswellia serrata is most commonly used for medicine.</p>
                       <p style="text-align:justify; font-weight:100">Indian frankincense is used for osteoarthritis, rheumatoid arthritis, joint pain (rheumatism), bursitis, and tendonitis. Other uses include ulcerative colitis, abdominal pain, asthma, hay fever, sore throat, syphilis, painful menstruation, pimples, and cancer. Indian frankincense is also used as a stimulant, to increase urine flow, and for stimulating menstrual flow.</p>
                       <p style="text-align:justify; font-weight:100">In manufacturing, Indian frankincense resin oil and extracts are used in soaps, cosmetics, foods, and beverages.</p>

                       <br />
                       
                       <h4 style="color:whitesmoke">RESEARCH STUDIES</h4>
                       <p style="font-weight:100">1. Turmeric and Frankincense in Inflammation.<br /><b><i><a style="color:whitesmoke" href="http://naturalmedicinejournal.com/journal/2011-09/turmeric-and-frankincense-inflammation-update">Abstract (http://naturalmedicinejournal.com/journal/2011-09/turmeric-and-frankincense-inflammation-update)</a></i></b></p>

                   </div> 
                      </details>
                      </div>
                  <br /><br /><br />

                   <!-- Disease-2 -->
                   <div class="col-md-12">
                  <details>
                      <summary style="font-family: 'Oswald', sans-serif; font-size:24px; color:#fff; font-weight: 500;">
                    <u>Delayed Onset Muscle Soreness (muscle fever)</u>
                      </summary>
                   <br /><b /><br />
                   <div class="col-md-12">
                      <h4 style="color:whitesmoke">SAFETY</h4>
                       <p style="text-align:justify; font-weight:100">Although delayed onset muscle soreness is a symptom associated with muscle damage, its magnitude does not necessarily reflect the magnitude of muscle damage. Soreness may be temporary but there may be prolonged decrease in muscle strength, for example. Depending on the DOM, further damage to the muscle may occur inadvertently by continuing to over-use the limb/area.</p>
                       <br />
                                              
                       <h4 style="color:whitesmoke">WHAT OTHER NAMES IS THE PRODUCT KNOWN BY?</h4>
                       <p style="text-align:justify; font-weight:100">Sore muscle, muscle fever.</p>
                       <br />

                       <h4 style="color:whitesmoke">KNOWN TREATMENTS</h4>
                       <p style="text-align:justify; font-weight:100">Exercising the sore muscle at a lower intensity, alternating between hot and cold compress. Turmeric or other oral pain relievers, massage, hot baths and topical analgesics.</p>
                       
                       <br />

                       <h4 style="color:whitesmoke">DESCRIPTION</h4>
                       <p style="text-align:justify; font-weight:100">Any type of activity that places unaccustomed loads on muscle may lead to delayed onset muscle soreness (DOMS). This type of soreness is different from acute soreness, which is pain that develops during the actual activity. Delayed soreness typically begins to develop 12-24 hours after the exercise has been performed and may produce the greatest pain between 24-72 hours after the exercise has been performed. Examples of activities that are known to cause DOMS: step aerobics, jumping jacks, jogging, walking up/down hills. There are many characteristics of DOMS outside of local muscle pain. Some of the most common symptoms include:<br /><br />
                            • Swelling;<br />
                            • Stiffness of the joint along with temporary reduction in the joint’s range of motion;<br />
                            • Tenderness;<br />
                            • Temporary reduction in strength of the affected muscles (lasting days);<br />
                            • In rare and severe cases, muscle breakdown to the extent that the kidneys
                            may be placed at risk; and<br />
                            • Elevated creatine kinase (CK) enzymes in the blood that may signal muscle tissue damage.
                            </p>
                      
                       <br />
                       
                       <h4 style="color:whitesmoke">RESEARCH STUDIES</h4>
                       <p style="font-weight:100">1. Delayed onset muscle soreness; K Cheung, PA Hume, L Maxwell - Sports Medicine, 2003 - Springer <br /><b><i><a style="color:whitesmoke" href="http://link.springer.com/article/10.2165/00007256-200333020-00005#page-1">Abstract (http://link.springer.com/article/10.2165/00007256-200333020-00005#page-1)</a></i></b></p>
                       <p style="font-weight:100">2. Treatment and prevention of delayed onset muscle soreness.; DAJ Connolly, SE Sayers… - The Journal of Strength & …, 2003 - <a style="color:whitesmoke" href="http://journals.lww.com"></a>journals.lww.com <br /><b><i><a style="color:whitesmoke" href="http://journals.lww.com/nsca-jscr/abstract/2003/02000/treatment_and_prevention_of_delayed_onset_muscle.30.aspx">Abstract (http://journals.lww.com/nsca-jscr/abstract/2003/02000/treatment_and_prevention_of_delayed_onset_muscle.30.aspx)</a></i></b></p>

                   </div> 
                      </details>
                      </div>
                  <br /><br /><br />
                  <!-- Disease-3 -->
                                    <div class="col-md-12">
                  <details>
                      <summary style="font-family: 'Oswald', sans-serif; font-size:24px; color:#fff; font-weight: 500;">
                          <u>Turmeric (Curcumin)</u><br />
                          <asp:Table runat="server">
                          <asp:TableRow>
                              <asp:TableCell HorizontalAlign="Center" Width="150" CssClass="link" Text="Effectiveness"></asp:TableCell>
                              <asp:TableCell HorizontalAlign="Center" Width="150" CssClass="link" Text="Safety"></asp:TableCell>
                              <asp:TableCell HorizontalAlign="Center" Width="150" CssClass="link" Text="Drug Attraction"></asp:TableCell></asp:TableRow>
                    <asp:TableRow>
                    <asp:TableCell Width="50" HorizontalAlign="Center"><cc1:Rating ID="Effectiveness1" runat="server" CssClass="rating" CurrentRating="3" ReadOnly="true"
                        StarCssClass="Star" EmptyStarCssClass="Star" WaitingStarCssClass="Star" FilledStarCssClass="GoldStar">
                    </cc1:Rating></asp:TableCell>
                    
                    <asp:TableCell Width="50" HorizontalAlign="Center"><cc1:Rating ID="Safety1" runat="server" CssClass="rating" CurrentRating="3" ReadOnly="true"
                        StarCssClass="Star" EmptyStarCssClass="Star" WaitingStarCssClass="Star" FilledStarCssClass="BlueStar">
                    </cc1:Rating></asp:TableCell>
                    
                    <asp:TableCell Width="50" HorizontalAlign="Center"><cc1:Rating ID="DrugAttraction1" runat="server" CssClass="rating" CurrentRating="3" ReadOnly="true"
                        StarCssClass="Star" EmptyStarCssClass="Star" WaitingStarCssClass="Star" FilledStarCssClass="PurpleStar">
                    </cc1:Rating></asp:TableCell></asp:TableRow></asp:Table>
                      </summary>
                   <br /><b /><br />
                   <div class="col-md-12">
                      <h4 style="color:whitesmoke">SAFETY</h4>
                       <p style="text-align:justify; font-weight:100">Turmeric is LIKELY SAFE when taken by mouth or applied to the skin appropriately for up to 8months.
                          Turmeric usually does not cause significant side effects; however, some people can experience stomach upset, nausea, dizziness, or diarrhea.</p>
                       <br />
                       <h4 style="color:whitesmoke">DRUG INTERACTIONS</h4>
                       <p style="text-align:justify; font-weight:100"><b>Overall Rating = Minor</b><br />
                           Turmeric might decrease blood sugar in people with type 2 diabetes. Diabetes medications are also used to lower blood sugar.</p>
                       <br />
                       
                       <h4 style="color:whitesmoke">WHAT OTHER NAMES IS THE PRODUCT KNOWN BY?</h4>
                       <p style="text-align:justify; font-weight:100">Curcuma, Curcuma aromatica, Curcuma domestica, Curcumae longa, Curcumae Longa Rhizoma, Curcumin, Curcumine, Curcuminoid, Curcuminoïde, Curcuminoïdes, Curcuminoids.</p>
                       <br />
                       <h4 style="color:whitesmoke">TYPICAL DOSAGE</h4>
                       <p style="text-align:justify; font-weight:100">500 mg of turmeric four times daily.</p>
                       <br />
                       <h4 style="color:whitesmoke">DESCRIPTION</h4>
                       <p style="text-align:justify; font-weight:100">Turmeric is a plant. You probably know turmeric as the main spice in curry. It has a warm, bitter taste and is frequently used to flavor or color curry powders, mustards, butters, and cheeses. But the root of turmeric is also used widely to make medicine.</p>
                       <p style="text-align:justify; font-weight:100">Turmeric is used for arthritis, heartburn (dyspepsia), stomach pain, diarrhea, intestinal gas, stomach bloating, loss of appetite, jaundice, liver problems and gallbladder disorders. It is also used for headaches, bronchitis, colds, lung infections, fibromyalgia, leprosy, fever, menstrual problems, and cancer. Other uses include depression, Alzheimer’s disease, water retention, worms, and kidney problems.</p>
                       <p style="text-align:justify; font-weight:100">Some people apply turmeric to the skin for pain, ringworm, bruising, leech bites, eye infections, inflammatory skin conditions, soreness inside of the mouth, and infected wounds. In food and manufacturing, the essential oil of turmeric is used in perfumes, and its resin is used as a flavor and color component in foods.</p>
                       <br />
                       <h4 style="color:whitesmoke">RESEARCH STUDIES</h4>
                       <p style="font-weight:100">1. Safety and anti-inflammatory activity of curcumin: a component of tumeric (Curcuma longa).<br /><b><i><a style="color:whitesmoke" href="http://www.ncbi.nlm.nih.gov/pubmed/12676044">Abstract (http://www.ncbi.nlm.nih.gov/pubmed/12676044)</a></i></b></p>
                       <p style="font-weight:100">2. Turmeric and Frankincense in Inflammation.<br /><b><i><a style="color:whitesmoke" href="http://naturalmedicinejournal.com/journal/2011-09/turmeric-and-frankincense-inflammation-update">Abstract (http://naturalmedicinejournal.com/journal/2011-09/turmeric-and-frankincense-inflammation-update)</a></i></b></p>

                   </div> 
                      </details>
                      </div>

                  <br /><br /><br />
              </div>
      <div class="container">
      <div class="social text-center"> <a href="http://www.twitter.com/redaptivhealth"><i class="fa fa-twitter"></i></a> <a href="http://www.facebook.com/redaptiv"><i class="fa fa-facebook"></i></a> <a href="http://www.chewlup.com"><b><i class="fa">Ch</i></b></a> </div>
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
