<%-- 
    Document   : event
    Created on : Jan 11, 2020, 11:00:29 AM
    Author     : Shubham Nehe
--%>

<%@page import="beans.Events"%>
<%@page import="mainController.PostsCon"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport"content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"/>
    <title>Event</title>
    <link rel="apple-touch-icon" href="../assets/img/favicon.ico" />
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico"/>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link rel="stylesheet" href="../assets/vendor/fontawesome/css/font-awesome.min.css"/>
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css"  href="../assets/vendor/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/vendor/bootstrap/css/bootstrap-extended.min.css"/>
    <link rel="stylesheet"  type="text/css"href="../assets/css/components.min.css"/>
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vertical-menu.min.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/user-feed.min.css"/>
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <!-- END: Custom CSS-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>uniAlumni</title>

    <meta name="description" content="simple description for your site">
<meta name="keywords" content="keyword1, keyword2">
<meta name="author" content="Jobz">

<!-- twitter card starts from here, if you don't need remove this section -->
<meta name="twitter:card" content="summary"> 
<meta name="twitter:site" content="@yourtwitterusername">
<meta name="twitter:creator" content="@yourtwitterusername">
<meta name="twitter:url" content="http://twitter.com">
<meta name="twitter:title" content="Your home page title, max 140 char"> <!-- maximum 140 char -->
<meta name="twitter:description" content="Your site description, maximum 140 char "> <!-- maximum 140 char -->
<meta name="twitter:image" content="../../assets/img/twittercardimg/twittercard-144-144.png">  <!-- when you post this page url in twitter , this image will be shown -->
<!-- twitter card ends here -->

<!-- facebook open graph starts from here, if you don't need then delete open graph related  -->
<meta property="og:title" content="Your home page title">
<meta property="og:url" content="http://your domain here.com">
<meta property="og:locale" content="en_US">
<meta property="og:site_name" content="Your site name here">
<!--meta property="fb:admins" content="" /-->  <!-- use this if you have  -->
<meta property="og:type" content="website"> <!-- 'article' for single page  -->
<meta property="og:image" content="../assets/img/opengraph/fbphoto-476-476.png"> <!-- when you post this page url in facebook , this image will be shown -->
<!-- facebook open graph ends here -->

<!-- desktop bookmark -->
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="../assets/img/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<!-- icons & favicons -->
<link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico">  <!-- this icon shows in browser toolbar -->
<link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico"> <!-- this icon shows in browser toolbar -->
<link rel="apple-touch-icon" sizes="57x57" href="../assets/img/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="../assets/img/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="../assets/img/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="../assets/img/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="../assets/img/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="../assets/img/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="../assets/img/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="../assets/img/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192" href="../assets/img/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="../assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="../assets/img/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="../assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="../assets/img/favicon/manifest.json">

    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">
<link rel="icon" type="image/x-icon" href="../assets/img/favicon.ico">

<!-- Fallback For IE 9 [ Media Query and html5 Shim] -->
<!--[if lt IE 9]>
<script src="../assets/vendor/css3-mediaqueries-js/css3-mediaqueries.js"></script>
<![endif]-->

<!-- GOOGLE FONT -->
<link href="../../../css.css?family=Roboto:100,300,400,500,700" rel="stylesheet">

<!-- BOOTSTRAP CSS -->
<link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/vendor/navbar/bootstrap-4-navbar.css">

<!--Animate css -->
<link rel="stylesheet" href="../assets/vendor/animate/animate.css" media="all">

<!-- FONT AWESOME CSS -->
<link rel="stylesheet" href="../assets/vendor/fontawesome/css/font-awesome.min.css">

<!--owl carousel css -->
<link rel="stylesheet" href="../assets/vendor/owl-carousel/owl.carousel.css" media="all">

<!--Magnific Popup css -->
<link rel="stylesheet" href="../assets/vendor/magnific/magnific-popup.css" media="all">

<!--Nice Select css -->
<link rel="stylesheet" href="../assets/vendor/nice-select/nice-select.css" media="all">

<!--Offcanvas css -->
<link rel="stylesheet" href="../assets/vendor/js-offcanvas/css/js-offcanvas.css" media="all">

<!-- MODERNIZER  -->
<script src="../assets/vendor/modernizr/modernizr-custom.js"></script>

<!-- Main Master Style  CSS  -->
<link id="cbx-style" data-layout="1" rel="stylesheet" href="../assets/css/style-default.min.css" media="all">

</head>
<body>

<!--[if lt IE 7]>
<p class="browsehappy">We are Extreamly sorry, But the browser you are using is probably from when civilization started.
    Which is way behind to view this site properly. Please update to a modern browser, At least a real browser. </p>
<![endif]-->

<!--== Header Area Start ==-->
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white static-top">
      <div class="nav-container ">
        <div class="row">
          <a class="navbar-brand" href="social-feed.jsp">
            <h3>Portal</h3>
          </a>
          <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarResponsive"
            aria-controls="navbarResponsive"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item mt-1">
                <a class="nav-link h3" href="social-feed.jsp" >
                  <i class="material-icons">home</i>
                </a>
              </li>
  
              <li class="nav-item mt-1">
                <a class="nav-link h3" href="career.jsp">
                    <i class="material-icons"> work</i>
                </a>
              </li>
              <li class="nav-item active mt-1">
                <a class="nav-link h3" href="event.jsp">
                    <i class="material-icons"> event</i>
                </a>
              </li>
              <li class="nav-item mt-1">
                <a class="nav-link h3" href="#" >
                    <i class="material-icons">notifications</i>
                </a>
              </li>

              <li class="nav-item mt-1">
                  <a class="nav-link h3" href="searchAlumni.jsp">
                  <i class="material-icons">search</i>
                </a>
              </li>

              <div class="vertical-rule  nav-item"></div>
              <li class="nav-item mt-1">
                <a href="user-profile.html" class="nav-link h3">
                  <img src="../assets/img/portrait/large/avatar-l-1.png"  class="img-fluid rounded-circle width-40 profile-image"  alt="timeline image" />
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
  </header>
<!--== Header Area End ==-->

<!--== Page Title Area Start ==-->
<section id="page-title-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 m-auto text-center">
                <div class="page-title-content">
                    <h1 class="h2">All Event Archive</h1>
                    <p>Alumni Needs enables you to harness the power of your alumni network. Whatever may be the
                        need</p>
                    <a href="#page-content-wrap" class="btn btn-brand smooth-scroll">Let's See</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--== Page Title Area End ==-->
<!--== Gallery Page Content Start ==-->
<section id="page-content-wrap">
    <div class="event-page-content-wrap section-padding">
        <div class="container">
                     
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <div class="all-event-list">
                        <%
                            List eventList=PostsCon.getAllEvents();
                            Events e;
                            for(int i=0;i<eventList.size();i++){ 
                                e=(Events)eventList.get(i); 
                        %> 
                        <!-- Single Event Start -->
                        <div class="single-upcoming-event">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="up-event-thumb">
                                        <img src="<%=e.getImage()%>" class="img-fluid" alt="Upcoming Event">
                                        <h4 class="up-event-date">It’s 27 February 2020</h4>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="display-table">
                                        <div class="display-table-cell">
                                            <div class="up-event-text">
                                                <div class="event-countdown">
                                                    <div class="event-countdown-counter" data-date="2018/9/10"></div>
                                                    <p>Remaining</p>
                                                </div>
                                                <h3><a href="single-event.jsp"><%=e.getTitle()%></a></h3>
                                                <p><%=e.getEventDesc()%></p> 
                                                <a href="single-event.jsp"  class="btn btn-brand btn-brand-dark disabled">join with us</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Single Event End -->
                        <%}%>
                    </div>
                </div>
                
            </div>

            <!-- Pagination Start -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="pagination-wrap text-center">
                        <nav>
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">...</a></li>
                                <li class="page-item"><a class="page-link" href="#">50</a></li>
                                <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- Pagination End -->
        </div>
    </div>
</section>
<!--== Gallery Page Content End ==-->

<!--== Footer Area Start ==-->
<footer id="footer-area">
    <!-- Footer Bottom Start -->
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer-bottom-text">
                        <p>© 2020 Kode Phantoms, All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Bottom End -->
</footer>
<!--== Footer Area End ==-->

<!-- SITE SCRIPT  -->

<!-- Jquery JS  -->
<script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>

<!-- BOOTSTRAP JS -->
<script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../assets/vendor/navbar/bootstrap-4-navbar.js"></script>


<!--CounterUp-->
<script src="../assets/vendor/counterup/jquery.counterup.min.js"></script>

<!--Jquery Easing-->
<script src="../assets/vendor/jquery-easing/jquery.easing.1.3.min.js"></script>

<!--off-canvas js -->
<script src="../assets/vendor/js-offcanvas/js/js-offcanvas.pkgd.min.js"></script>

<!-- Countdown -->
<script src="../assets/vendor/jquery.countdown/jquery.countdown.min.js"></script>

<!-- custom js: main custom theme js file  -->
<script src="../assets/js/theme.min.js"></script>

<!-- custom js: custom js file is added for easy custom js code  -->
<script src="../assets/js/custom.js"></script>



</body>
</html>
