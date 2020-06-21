<%@page import="beans.Events"%> <%@page import="mainController.PostsCon"%>
<%@page import="java.util.List"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
      href="../assets/css/components.min.css"
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

              <li class="nav-item  mt-1">
                <a class="nav-link h3" href="job-search.html"
                  ><i class="material-icons">
                    work
                  </i>
                </a>
              </li>
              <li class="nav-item active mt-1">
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
              <li class="nav-item  mt-1">
                <a href="chat.html" class="nav-link h3"
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
              <li class="dropdown dropdown-user nav-item mt-1">
                <a
                  class="dropdown-toggle nav-link dropdown-user-link h3"
                  href="#"
                  data-toggle="dropdown"
                >
                  <img
                    src="../assets/img/portrait/large/avatar-l-1.png"
                    alt="avatar"
                    class="img-fluid rounded-circle width-40 profile-image"
                  />
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                  <a class="dropdown-item" href="edit-profile.html">
                    Edit Profile</a
                  >
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="index.html"
                    ><i class="ft-power"></i> Logout</a
                  >
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <!--== Header Area End ==-->
    <section class="container content-body">
      <div class="row">
        <div class="col-lg-12">
          <%
          List eventList=PostsCon.getAllEvents();
          Events e;
          for(int i=0;i<eventList.size();i++){ 
              e=(Events)eventList.get(i); 
      %> 
          <div class="card" ">
          <img
            class="card-img-top"
            src="<%=e.getImage()%>"
            alt="Card image cap"
          />
          <div class="card-body">
            <h5 class="card-title"><%=e.getTitle()%></h5>
            <p class="card-text">
              <%=e.getEventDesc()%>
            </p>
            <a href="#" class="btn btn-primary">Join Us</a>
          </div>
        </div>
        <%}%>
        </div>
      </div>
          
      <!-- Pagination Start -->
      <div class="row">
        <div class="col-lg-12">
          <div class="pagination-wrap text-center">
            <nav>
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link" href="#"
                    ><i class="fa fa-angle-left"></i
                  ></a>
                </li>
                <li class="page-item active">
                  <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">...</a></li>
                <li class="page-item"><a class="page-link" href="#">50</a></li>
                <li class="page-item">
                  <a class="page-link" href="#"
                    ><i class="fa fa-angle-right"></i
                  ></a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </section>
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
  </body>
</html>
