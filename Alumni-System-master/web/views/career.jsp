<%@page import="java.util.ArrayList"%>
<%@page import="beans.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="mainController.PostsCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport"content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"/>
        <title>Career</title>
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

        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title> Portal</title>
        <link
          rel="shortcut icon"
          type="image/x-icon"
          href="../assets/img/favicon/favicon.ico"
        />
        <link
          rel="icon"
          type="image/x-icon"
          href="../assets/img/favicon/favicon.ico"
        />
        <link
          rel="apple-touch-icon"
          sizes="57x57"
          href="../assets/img/favicon/apple-icon-57x57.png"
        />
        <link
          rel="apple-touch-icon"
          sizes="60x60"
          href="../assets/img/favicon/apple-icon-60x60.png"
        />
        <link
          rel="apple-touch-icon"
          sizes="72x72"
          href="../assets/img/favicon/apple-icon-72x72.png"
        />
        <link
          rel="apple-touch-icon"
          sizes="76x76"
          href="../assets/img/favicon/apple-icon-76x76.png"
        />
        <link
          rel="apple-touch-icon"
          sizes="114x114"
          href="../assets/img/favicon/apple-icon-114x114.png"
        />
        <link
          rel="apple-touch-icon"
          sizes="120x120"
          href="../assets/img/favicon/apple-icon-120x120.png"
        />
        <link
          rel="apple-touch-icon"
          sizes="144x144"
          href="../assets/img/favicon/apple-icon-144x144.png"
        />
        <link
          rel="apple-touch-icon"
          sizes="152x152"
          href="../assets/img/favicon/apple-icon-152x152.png"
        />
        <link
          rel="apple-touch-icon"
          sizes="180x180"
          href="../assets/img/favicon/apple-icon-180x180.png"
        />
        <link
          rel="icon"
          type="image/png"
          sizes="192x192"
          href="../assets/img/favicon/android-icon-192x192.png"
        />
        <link
          rel="icon"
          type="image/png"
          sizes="32x32"
          href="../assets/img/favicon/favicon-32x32.png"
        />
        <link
          rel="icon"
          type="image/png"
          sizes="96x96"
          href="../assets/img/favicon/favicon-96x96.png"
        />
        <link
          rel="icon"
          type="image/png"
          sizes="16x16"
          href="../assets/img/favicon/favicon-16x16.png"
        />
        <link rel="manifest" href="../assets/img/favicon/manifest.json" />
    
        <link
          rel="shortcut icon"
          type="image/x-icon"
          href="../assets/img/favicon.ico"
        />
        <link rel="icon" type="image/x-icon" href="../assets/img/favicon.ico" />
    
        <!-- Fallback For IE 9 [ Media Query and html5 Shim] -->
        <!--[if lt IE 9]>
          <script src="assets/vendor/css3-mediaqueries-js/css3-mediaqueries.js"></script>
        <![endif]-->
    
        <!-- GOOGLE FONT -->
        <link
          href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
          rel="stylesheet"
        />
        <!-- BOOTSTRAP CSS -->
        <link
          rel="stylesheet"
          href="../assets/vendor/bootstrap/css/bootstrap.min.css"
        />
        <link rel="stylesheet" href="../assets/vendor/navbar/bootstrap-4-navbar.css" />
    
        <!--Animate css -->
        <link
          rel="stylesheet"
          href="../assets/vendor/animate/animate.css"
          media="all"
        />
    
        <!-- FONT AWESOME CSS -->
        <link
          rel="stylesheet"
          type="text/css"
          href="../assets/vendor/fontawesome/css/font-awesome.min.css"
        />
    
        <!--owl carousel css -->
        <link
          rel="stylesheet"
          href="../assets/vendor/owl-carousel/owl.carousel.css"
          media="all"
        />
    
        <!--Magnific Popup css -->
        <link
          rel="stylesheet"
          href="../assets/vendor/magnific/magnific-popup.css"
          media="all"
        />
    
        <!--Nice Select css -->
        <link
          rel="stylesheet"
          href="../assets/vendor/nice-select/nice-select.css"
          media="all"
        />
    
        <!--Offcanvas css -->
        <link
          rel="stylesheet"
          href="../assets/vendor/js-offcanvas/css/js-offcanvas.css"
          media="all"
        />
    
        <!-- MODERNIZER  -->
        <script src="../assets/vendor/modernizr/modernizr-custom.js"></script>
    
        <!-- Main Master Style  CSS  -->
        <link
          id="cbx-style"
          data-layout="1"
          rel="stylesheet"
          href="../assets/css/style-default.min.css"
          media="all"
        />
      </head>
<body>
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
      
                  <li class="nav-item active mt-1">
                    <a class="nav-link h3" href="career.jsp">
                        <i class="material-icons"> work</i>
                    </a>
                  </li>
                  <li class="nav-item mt-1">
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

                  <div class="vertical-rule-nav-item"></div>
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

    <!--== Single Album Page Content Start ==-->
    <section id="page-content-wrap">
        <div class="career-page-wrapper">
            <div class="career-page-topbg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 m-auto">
                            <img src="../assets/img/careerbg.png" class="img-fluid" alt="career">
                        </div>
                    </div>
                </div>
            </div>

            <div class="career-page-content-wrap section-padding">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="event-filter-area">
                                <form action="career.jsp" method="post" class="form-inline"> 
                                    <select class="nice-select" tabindex="0" name="companyName" id="year">
                                        <option selected="">Company</option>
                                        <option>Google</option>
                                        <option>Infosys</option>
                                        <option>ThoughtWorks</option> 
                                        <option>PhonePe</option>
                                        <option>Barclays</option> 
                                    </select> 

                                    <select class="nice-select" tabindex="0" name="location" id="place">
                                        <option selected="">Location</option>
                                        <option>Alaska</option>
                                        <option>California</option>
                                        <option>Hong Kong</option>
                                        <option>Norway</option>
                                        <option>London</option>
                                        <option>Singapore</option>
                                    </select>

                                    <select class="nice-select" tabindex="0" name="designation" id="type">
                                        <option selected="">Designation</option>
                                        <option>Data Scientist</option>
                                        <option>Software Developer</option>
                                        <option>DevOps Engineer</option> 
                                        <option>Security Analyst</option>
                                        <option>Network Administrator</option>
                                        <option>Web Developer</option>
                                        <option>Database Administrator</option>
                                    </select> 

                                    <button class="btn btn-brand">Filter</button> 
                                      
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="job-opportunity-wrapper">
                        <div class="row">
                            <% 
                                List jobList=new ArrayList(); 
                                Jobs j;
                                String company=request.getParameter("companyName");
                                String location=request.getParameter("location");
                                String designation=request.getParameter("designation");
                                
                                //out.print(company+location+designation);
                                if(company==null && location==null && designation==null)
                                {
                                    jobList=PostsCon.getAllJobs();
                                }
                                else if(company.equals("Company") && location.equals("Location") && designation.equals("Designation"))
                                    jobList=PostsCon.getAllJobs();
                                else
                                    jobList=PostsCon.returnFilteredJobs(company, designation, location);
                                if(jobList.size()!=0) 
                                { 
                                for(int i=0;i<jobList.size();i++){
                                    j=(Jobs)jobList.get(i);
                                
                                %> 
                            <!--== Single Job opportunity Start ==-->
                            <div class="col-lg-4 col-sm-6 text-center">
                                <div class="single-job-opportunity">
                                    <div class="job-opportunity-text">
                                        <div class="job-oppor-logo">
                                            <div class="display-table">
                                                <div class="display-table-cell">
                                                    <img src="../assets/img/job/company-logo-2.png" alt="Job">
                                                </div> 
                                            </div>
                                        </div> 
                                        <h3><a href="#"><%=j.getDesignation()%></a></h3>
                                        <p><%=j.getJobDesc()%></p> 
                                    </div>
                                    <a href="apply-page.html?jobid=<%=j.getJobID()%>" class="btn btn-job">Apply now</a>
                                </div>
                            </div>
                            <%}}
                            else
                            {
                                out.print("<div class='col-lg-4 col-sm-6 text-center'>0 Results Found</div>");
                            }%>
                            <!--== Single Job opportunity End ==-->
                        </div>

                        <!-- Pagination Start -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="pagination-wrap text-center">
                                    <nav>
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
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
            </div>
        </div>
    </section>
    <!--== Single Album Page Content End ==-->

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

<!--== Scroll Top ==-->
<a href="#" class="scroll-top">
    <i class="fa fa-angle-up"></i>
</a>
<!--== Scroll Top ==-->

    <!-- SITE SCRIPT  -->

<!-- Jquery JS  -->
<script src="assets\vendor\jquery\jquery-3.3.1.min.js"></script>

<!-- POPPER JS -->
<script src="assets\vendor\bootstrap\js\popper.min.js"></script>

<!-- BOOTSTRAP JS -->
<script src="assets\vendor\bootstrap\js\bootstrap.min.js"></script>
<script src="assets\vendor\navbar\bootstrap-4-navbar.js"></script>

<!--owl-->
<script src="assets\vendor\owl-carousel\owl.carousel.min.js"></script>

<!--Waypoint-->
<script src="assets\vendor\waypoint\waypoints.min.js"></script>

<!--CounterUp-->
<script src="assets\vendor\counterup\jquery.counterup.min.js"></script>

<!--isotope-->
<script src="assets\vendor\isotope\isotope.pkgd.min.js"></script>

<!--magnific-->
<script src="assets\vendor\magnific\jquery.magnific-popup.min.js"></script>

<!--Smooth Scroll-->
<script src="assets\vendor\smooth-scroll\jquery.smooth-scroll.min.js"></script>

<!--Jquery Easing-->
<script src="assets\vendor\jquery-easing\jquery.easing.1.3.min.js"></script>

<!--Nice Select -->
<script src="assets\vendor\nice-select\jquery.nice-select.js"></script>

<!--Jquery Valadation -->
<script src="assets\vendor\validation\jquery.validate.min.js"></script>
<script src="assets\vendor\validation\additional-methods.min.js"></script>

<!--off-canvas js -->
<script src="assets\vendor\js-offcanvas\js\js-offcanvas.pkgd.min.js"></script>

<!-- Countdown -->
<script src="assets\vendor\jquery.countdown\jquery.countdown.min.js"></script>

<!-- custom js: main custom theme js file  -->
<script src="assets\js\theme.min.js"></script>

<!-- custom js: custom js file is added for easy custom js code  -->
<script src="assets\js\custom.js"></script>




</body>
</html>

