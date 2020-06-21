<%-- 
    Document   : social-feed
    Created on : Jan 11, 2020, 5:19:26 PM
    Author     : Shubham Nehe
--%>

<%@page import="beans.Events"%>
<%@page import="beans.Notices"%>
<%@page import="mainController.AlumniCon"%>
<%@page import="beans.Alumni_data"%>
<%@page import="mainController.PostsCon"%>
<%@page import="beans.Blogs"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"
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
    
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="../assets/vendor/fontawesome/css/font-awesome.min.css"
    />
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
      <%
          String mail="hhhh"; 
          try{
          mail=request.getParameter("email");
          String pass=request.getParameter("pass");
          if(mail.equals("collegeAdmin@gmail.com"))
            response.sendRedirect("college-feed.jsp");
          else if(mail.equals("dheAdmin@gmail.com"))
            response.sendRedirect("college-feed.jsp");
          
          }catch(Exception e){}
          try{
              if(mail.equals("user@gmail.com"))
                session.setAttribute("user","1"); 
              else
                session.setAttribute("user", "2");
          }catch(Exception e){}
      %>
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
              <li class="nav-item active mt-1">
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
                <a class="nav-link h3" href="event.jsp"
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
                <a href="chat.jsp" class="nav-link h3"
                  ><i class="material-icons">
                    textsms
                  </i></a
                >
              </li>
              <li class="nav-item mt-1">
                  <a href="searchAlumni.jsp" class="nav-link h3">
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
                  <a class="dropdown-item" href="alumni/edit-profile.jsp">
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
    <div class="content-body">
      <!-- User Feed -->
      <section id="user-feed">
        <!-- Profile Intro -->
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-12">
            <div class="card shadow-none">
              <img
                src="../assets/img/gallery/timeline.jpg"
                class="card-img-top"
                alt="..."
              />
              <div class="user-data text-center bg-white rounded pb-2 mb-md-2">
                <img
                  src="../assets/img/portrait/large/avatar-l-1.png"
                  class="img-fluid rounded-circle width-100 profile-image shadow-lg"
                  alt="timeline image"
                />
              </div>
              <div class="card-body">
                <div class="card-title">
                  <h4 class="mt-1 mb-0">Elaine Dreyfuss</h4>
                  <p class="m-0">San Francisco, CA</p>
                </div>
                <p class="card-text">
                  This is a wider card with supporting text below as a natural
                  lead-in to additional content. This content is a little bit
                  longer.
                </p>
              </div>
            </div>
            <!-- friends-list -->
            <div class="card shadow-none mt-2">
              <div class="card-body">
                <div class="friends-list">
                  <h5 class="card-title mb-1">Friends List</h5>
                  <hr />
                  <span>
                    <img
                      src="../assets/img/portrait/small/avatar-s-1.png"
                      alt=""
                      class="img-fluid rounded-circle width-30 mrb-5px"
                    />
                    <img
                      src="../assets/img/portrait/small/avatar-s-2.png"
                      alt=""
                      class="img-fluid rounded-circle width-30 mrb-5px"
                    />
                    <img
                      src="../assets/img/portrait/small/avatar-s-3.png"
                      alt=""
                      class="img-fluid rounded-circle width-30 mrb-5px"
                    />
                    <img
                      src="../assets/img/portrait/small/avatar-s-4.png"
                      alt=""
                      class="img-fluid rounded-circle width-30 mrb-5px"
                    />
                    <img
                      src="../assets/img/portrait/small/avatar-s-5.png"
                      alt=""
                      class="img-fluid rounded-circle width-30 mrb-5px"
                    />
                    <img
                      src="../assets/img/portrait/small/avatar-s-6.png"
                      alt=""
                      class="img-fluid rounded-circle width-30 mrb-5px"
                    />
                    <img
                      src="../assets/img/portrait/small/avatar-s-7.png"
                      alt=""
                      class="img-fluid rounded-circle width-30 mrb-5px"
                    />
                    <img
                      src="../assets/img/portrait/small/avatar-s-8.png"
                      alt=""
                      class="img-fluid rounded-circle width-30 mrb-5px"
                    />
                  </span>
                </div>
              </div>
            </div>
          </div>
          <!-- Feed Section -->
          <div class="col-lg-6 col-md-6 col-sm-12">
            <!-- Write Post -->
            <div class="card shadow-none">
              <div class="card-body">
                <div class="write-post">
                  <form action="../controller/addBlog.jsp">
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control border-0"
                        placeholder="Blog Title"
                        name="title"
                      />
                    </div>
                    <hr class="m-0" />
                    <div class="form-group">
                      <textarea
                        placeholder="Share what you are thinking here..."
                        class="form-control border-0"
                        id="exampleFormControlTextarea1"
                        rows="5" name="content"
                      ></textarea>
                    </div>
                    <hr class="m-0" />
                    <div class="row px-1">
                      <div class="col-6 pt-2">
                        <label for="blog-image"
                          ><i class="material-icons text-primary">
                            camera_alt
                          </i></label
                        > 
                        <input type="file" name="image" id="blog-image" />
                      </div>
                      <div class="col-6 pt-1">
                        <button
                          type="submit"
                          class="btn btn-primary btn-min-width mr-1 mb-1 pull-right"
                        >
                          Post Blog
                        </button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>

            
            
            <!-- User Post 1 -->
            <%
                List li=PostsCon.getAllEvents();
                Events e=(Events)li.get(0); 
            %>
            <div class="card text-white bg-secondary shadow-none">
              <div class="card-body"> 
                <p class="mb-25"><%=e.getDate()%></p>
                <h3 class="text-white"><%=e.getTitle()%></h3>
                <p class="card-text">
                  <%=e.getEventDesc() %>
                </p>
              </div> 
            </div>

            <% 
            List blogs=PostsCon.getAllBlogs();
            Blogs b;%>
            
            <!-- User Post 3 --> 
            <%
                Alumni_data ad; 
                for(int i=0;i<blogs.size();i++) 
            { 
                b=(Blogs)blogs.get(i);
                
                ad=AlumniCon.getAlumniData(b.getAlumniID());
                
            %> 
            <div class="card shadow-none">
              <div class="body">
                <div class="row p-2">
                  <div class="col-sm-6">
                    <div class="row">
                      <div class="col-lg-3 col-3">
                        <img
                          src="../assets/img/portrait/small/avatar-s-8.png"
                          alt=""
                          class="img-fluid rounded-circle width-50"
                        />
                      </div>
                      <div class="col-lg-8 col-7 p-0">
                        <h5 class="m-0"><%=ad.getName()%></h5>
                        <p><%=b.getDate()%></p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="write-post">
                  <div class="col-sm-12 px-2">
                    <h4><%=b.getTitle()%></h4> 
                    <p class="mt-1">
                      <%=b.getContent()%>
                      <br />
                      <a href="single-blog.jsp?id=<%=b.getBlogID()%>">Read More.. </a>
                    </p>
                  </div> 
                  <hr class="m-0" />
                  <div class="row p-1">
                    <div class="col-3">
                      <span class="pr-1 mr-1"
                        ><i class="fa fa-heart-o" aria-hidden="true"></i>
                        120</span
                      >
                      <span class="pr-1"
                        ><i class="material-icons align-middle ">
                          comment
                        </i>  
                        44</span
                      >
                    </div>
                  </div>
                </div>
              </div>
            </div>
                      <%}%>
          </div> 
                      
          <!-- Birthday Card -->
          <div class="col-lg-3 col-md-12 col-sm-12">
            <!-- Last Photos -->
            <div class="card shadow-none mt-2">
              <div class="card-body">
                <div class="last-photos">
                  <h5 class="card-title mb-1">Notices</h5>
                  <hr />
                  <div class="row">
                    <div class="col-lg-12">
                        
                            
            
             
            <%
                List nList=PostsCon.getAllNotices();
                Notices n; 
                for(int i=0;i<nList.size();i++) 
                { 
                      n=(Notices)nList.get(i);%>
                      <div class="write-post">
                        <div class="col-sm-12 px-2">
                          <h4><%=n.getTitle()%></h4>
                          <p class="mt-1">
                            <%=n.getContent()%>
                            <br />
                          </p>
                        </div>
                        <hr class="m-0" />
                      </div>
                      <%}%>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--/ User Feed -->
    </div>
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>

    <!-- BOOTSTRAP JS -->
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
  </body> 
</html>
