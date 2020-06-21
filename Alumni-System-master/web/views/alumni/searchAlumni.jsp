<%@page import="beans.Alumni_data"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mainController.AlumniCon"%>
<%@page import="java.util.List"%>
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
    <meta name="author" content="PIXINVENT" />
    <title>
      Feed
    </title>
    <link rel="apple-touch-icon" href="../../assets/img/favicon.ico" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="../../../../assets/img/favicon.ico"
    />

    <!-- BEGIN: Font-awesome -->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />      
    <link
      href="../../assets/vendor/fontawesome/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <!-- END: Font-Awesome -->
    <!-- BEGIN: Theme CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/vendor/bootstrap/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/vendor/bootstrap/css/bootstrap-extended.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/components.min.css"
    />
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/vertical-menu.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/user-feed.min.css"
    />
    <!-- END: Page CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../../assets/css/style.css" />
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

    <!--== Page Title Area End ==-->
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
                <a class="nav-link h3" href="../career.jsp"
                  ><i class="material-icons">
                    work
                  </i>
                </a>
              </li>
              <li class="nav-item mt-1">
                <a class="nav-link h3" href="../event.jsp"
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
                <a href="../chat.jsp" class="nav-link h3"
                  ><i class="material-icons">
                    textsms
                  </i></a
                >
              </li>
              <li class="nav-item active mt-1">
                <a href="#" class="nav-link h3">
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
                    src="../../assets/img/portrait/large/avatar-l-1.png"
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
    <!--== Directory Page Content Start ==-->

    <div class="container content-body">
      <div class="row">
        <div class="col-lg-12">
          <form action="#">
            <div class="form-row">
                <%
                    List yearList=AlumniCon.getPassOutYearList();
                    List deptlist=AlumniCon.getDeptList();
                    List statuslist=AlumniCon.getStatusList();
                %>
                
                <% 
            
                int i=0;
                if(yearList.size()!=0)
                {%>
                
                
              <div class="col">
                <select name="year" id="year" class="form-control">
                  <option value="Year">Year</option>
                   <% for(i=0;i<yearList.size();i++)
                {
               %>
                    <option value="<%=yearList.get(i)%>"><%=yearList.get(i)%></option>
               <% }
            
                 }
               %>
                </select>
              </div>
                
                
              <div class="col">
                  <% if(deptlist.size()!=0)
                  {  %>
                      
                <select name="dept" id="place" class="form-control">
                 <option value="Department">Department</option>
                  <% for(i=0;i<deptlist.size();i++)
                   {
               %>
                    <option value="<%=deptlist.get(i)%>"><%=deptlist.get(i)%></option>
               <% }
            
                 }
                %>
                </select>
              </div>
                
                
               
                
              <div class="col">
                   <% if(statuslist.size()!=0)
                 { %>
                <select name="status" id="type" class="form-control">
                  <option value="Status">Status</option>
                  <% for(i=0;i<statuslist.size();i++)
                {
               %>
                    <option value="<%=statuslist.get(i)%>"><%=statuslist.get(i)%></option>
               <% }
            
                 }
                %>
                </select>
                
              </div>
                
                
              <button class="btn btn-primary">Filter</button>
            </div>
          </form>
                
            
        </div>
      </div>
    </div>

    <section class="content-body">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="directory-text-wrap">
              <div class="directory-table table-responsive">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th scope="col">Name</th>
                      <th scope="col">Department</th>
                      <th scope="col">Batch</th>
                      <th scope="col">Role</th>
                    </tr>
                  </thead>
                  <tbody>
                      
            <%
            List alumnilist=new ArrayList(); 
            Alumni_data ad;
            String lyear,ldept,lstatus;
            
            String year=request.getParameter("year");
            //out.print(" )))))))))))))))))) "+year);
            
            String dept=request.getParameter("dept");
            //out.print(")))))))))))))))))) "+dept);
            
            String status=request.getParameter("status");
            //out.print(" )))))))))))))))))) "+status);
            
         
          
               
               lyear=yearList.get(0).toString();//String)ad.getPassOutYear();
               //out.print("select value is : ) "+lyear+"     ");
               
               
               ldept=deptlist.get(0).toString();
               //out.print("select value is : "+ldept+"      ");
               
               lstatus=statuslist.get(0).toString();
         
               //out.print("select value is : "+lstatus+"      ");
               
            /*if(year.equals(lyear) && dept.equals(ldept) && status.equals(lstatus))
            {
               alumnilist=AlumniCon.returnDefaultSelectAlumni(year, dept, status);
            }*/

            //out.print(company+location+designation);
            if(year==null && dept==null && status==null)
            {
                alumnilist=AlumniCon.getAllAlumni();
            }
            else if(year.equals("Year") && status.equals("Status") && dept.equals("Department"))
                alumnilist=AlumniCon.getAllAlumni();
            else
                alumnilist=AlumniCon.returnFilteredJobs(year, dept, status);%>
            
                 <% if(alumnilist.size()!=0)
                        { 
                        for(i=0;i<alumnilist.size();i++){
                            ad=(Alumni_data)alumnilist.get(i);
                        %>
                    <tr>
                      <td>
                        <img
                          class="img-fluid rounded-circle width-50"
                          src="../../assets/img/testimonial/testi-1.png"
                          alt="table"
                       />
                        
                       
                        
                        <span class="ml-1">
                          <%= ad.getName() %>
                        </span>
                      </td>
                      <td><%= ad.getDepartment() %></td>
                      <td><%= ad.getPassOutYear()  %></td>
                      <td><%= ad.getStatus() %></td>
                     
                    </tr>

                    
                    <%
                    } }
                    %>
                  </tbody>
                </table>
              </div>
                  <br><br>
            </div>
          </div>
        </div>

        
      </div>
    </section>

    <!--== Directory Page Content End ==-->

    <!--== Footer Area Start ==-->
    
    <!--== Footer Area End ==-->

    <!--== Scroll Top ==-->
    <a href="#" class="scroll-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!--== Scroll Top ==-->

    <!-- SITE SCRIPT  -->

    <!-- Jquery JS  -->
    <script src="../../assets/vendor/jquery/jquery-3.3.1.min.js"></script>

    <!-- BOOTSTRAP JS -->
    <script src="../../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../../assets/vendor/navbar/bootstrap-4-navbar.js"></script>
  </body>
</html>
