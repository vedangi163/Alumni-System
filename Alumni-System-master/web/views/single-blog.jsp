<%-- 
    Document   : single-blog
    Created on : Jan 11, 2020, 6:34:16 PM
    Author     : Shubham Nehe
--%>

<%@page import="beans.Alumni_data"%>
<%@page import="mainController.AlumniCon"%>
<%@page import="mainController.AlumniCon"%>
<%@page import="mainController.PostsCon"%>
<%@page import="beans.Blogs"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html class="no-js" lang="zxx">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"
    />
    <meta
      name="description"
      content="Modern admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities with bitcoin dashboard."
    />
    <meta
      name="keywords"
      content="admin template, modern admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard"
    />
    <meta name="author" content="PIXINVENT" />
    <title>
      Feed
    </title>
    <link rel="apple-touch-icon" href="../assets/img/favicon.ico" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="../assets/img/favicon.ico"
    /> 

    <!-- BEGIN: Font-awesome -->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      href="../assets/vendor/fontawesome/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <!-- END: Font-Awesome -->
    <!-- BEGIN: Theme CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/vendor/bootstrap/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/vendor/bootstrap/css/bootstrap-extended.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/components.css"
    />
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/vertical-menu.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/user-feed.min.css"
    />
    <!-- END: Page CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <!-- END: Custom CSS-->
  </head>
  <body>
    <!--[if lt IE 7]>
      <p class="browsehappy">
        We are Extreamly sorry, But the browser you are using is probably from
        when civilization started. Which is way behind to view this site
        properly. Please update to a modern browser, At least a real browser.
      </p>
    <![endif]-->

    <!--== Header Area Start ==-->
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
                <a href="social-feed.jsp" class="nav-link h2">
                  <i class="material-icons">
                    home
                  </i></a
                >
              </li>

              <li class="nav-item mt-1">
                <a class="nav-link h3" href="career.jsp"
                  ><i class="material-icons">
                    work
                  </i>
                </a>
              </li>
              <li class="nav-item mt-1">
                <a class="nav-link h3" href="event-in-1.jsp"
                  ><i class="material-icons">
                    event
                  </i>
                </a>
              </li>
              <li class="nav-item mt-1">
                <a href="#" class="nav-link h3"
                  ><i class="material-icons">
                    notifications
                  </i></a
                >
              </li>
              <li class="nav-item mt-1">
                <a href="chat.jsp" class="nav-link h3"
                  ><i class="material-icons">
                    textsms
                  </i></a
                >
              </li>
              <li class="nav-item mt-1">
                <a href="directory.html" class="nav-link h3">
                  <i class="material-icons">
                    search
                  </i></a
                >
              </li>
              <div class="vertical-rule  nav-item"></div>
              <li class="nav-item mt-1">
                <a href="user-profile.html" class="nav-link h3">
                  <img
                    src="../assets/img/portrait/large/avatar-l-1.png"
                    class="img-fluid rounded-circle width-40 profile-image"
                    alt="timeline image" height="30" width="30"
                  />
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <!--== Header Area End ==-->

    <%
            int id;
            try{ 
            id=Integer.parseInt(request.getParameter("id"));
            }catch(Exception e){id=1;};  
            Blogs b=PostsCon.getBlog(id);
            Alumni_data ad; 
            ad=AlumniCon.getAlumniData(b.getAlumniID());
    %> 
    <!--== Blog Page Content Start ==-->
    <div class="container content-body"> 
      <div class="card shadow-none">
        <img
          src="../assets/img/blog/blog-1.jpg"
          class="card-img-top"
          alt="Blog"
        />
        <div class="card-body">
          <div class="row">
            <!-- Blog content Area Start -->
            <div class="col-lg-12">
              <article class="single-blog-content-wrap">
                <header class="article-head">
                  <div class="single-blog-meta">
                    <h2><%=b.getTitle()%></h2> 
                    <div class="posting-info">
                      <a href="#"><%=b.getDate()%></a> • Posted by:
                      <a href="#"><%=ad.getName()%></a>
                    </div>
                  </div> 
                </header> 
                <section class="card-text">
                  <p>
                    <%=b.getContent()%>
                  </p>
                  <blockquote class="blockquote">
                    Integer tincidunt nec nisl vitae ullamcorper. Proin sed
                    ultrices erat. Praesent varius ultrices massa at faucibus.
                  </blockquote>
                </section>
              </article>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--== Blog Page Content End ==-->

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

    <!-- POPPER JS -->
    <script src="../assets/vendor/bootstrap/js/popper.min.js"></script>

    <!-- BOOTSTRAP JS -->
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/vendor/navbar/bootstrap-4-navbar.js"></script>

    <!-- custom js: main custom theme js file  -->
    <script src="../assets/js/theme.min.js"></script>

    <!-- custom js: custom js file is added for easy custom js code  -->
    <script src="../assets/js/custom.js"></script>
  </body>
</html>
