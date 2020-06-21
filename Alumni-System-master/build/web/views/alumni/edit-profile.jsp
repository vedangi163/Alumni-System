<%@page import="beans.Alumni_data"%>
<%@page import="mainController.AlumniCon"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"
    />
    <title>User Profile</title>
    <link rel="apple-touch-icon" href="../../assets/img/ico/apple-icon-120.png" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="../../assets/images/ico/favicon.ico"
    />
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="../../assets/css/icheck.css" />
    <link rel="stylesheet" type="text/css" href="../../assets/css/custom.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/vendors/js/gallery/photo-swipe/photoswipe.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/form-validation.css"
    />

    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/vendors/js/gallery/photo-swipe/default-skin/default-skin.css"
    />
    <!-- END VENDOR CSS-->
    <!-- BEGIN MODERN CSS-->
    <link rel="stylesheet" type="text/css" href="../../assets/css/app.css" />
    <!-- END MODERN CSS-->
    <!-- BEGIN Page Level CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/vertical-menu.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/palette-gradient.css"
    />
    <link rel="stylesheet" type="text/css" href="../../assets/css/users.css" />
    <link rel="stylesheet" type="text/css" href="../../assets/css/timeline.css" />
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../../assets/css/style.css" />
    <!-- END Custom CSS-->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="../../assets/vendor/fontawesome/css/font-awesome.min.css"
    />
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
    <link rel="stylesheet" href="../../assets/css/user-feed.min.css" />
    <link rel="stylesheet" href="../../assets/css/style.css" />
    <!-- END: Theme CSS-->
  </head>
  <body>
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
                <a href="../social-feed.jsp" class="nav-link h2">
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
              <li class="nav-item mt-1">
                <a href="searchAlumni.jsp" class="nav-link h3">
                  <i class="material-icons">
                    search
                  </i></a
                >
              </li>
              <div class="vertical-rule  nav-item"></div>
              <li class="nav-item mt-1">
                <a href="" class="nav-link h3">
                  <img
                    src="../../assets/img/portrait/large/avatar-l-1.png"
                    class="img-fluid rounded-circle width-40 profile-image"
                    alt="timeline image"
                  />
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <div class="app-content content">
      <div class="content-overlay"></div>
      <div class="content-wrapper">
        <div class="content-header row"></div>
        <div class="content-body">
          <!-- users edit start -->
          <section class="users-edit">
            <div class="card">
              <div class="card-header">
                <h4>Account</h4>
              </div>
              <div class="card-content">
                <div class="card-body">
                  <div class="tab-content">
                    <div
                      class="tab-pane active"
                      id="account"
                      aria-labelledby="account-tab"
                      role="tabpanel"
                    >
                      <!-- users edit media object start -->
                      <div class="media mb-2">
                        <a class="mr-2" href="#">
                          <img
                            src="/assets/img/portrait/large/avatar-l-1.png"
                            alt="users avatar"
                            class="users-avatar-shadow rounded-circle"
                            height="64"
                            width="64"
                          />
                        </a>
                        <div class="media-body">
                          <h4 class="media-heading">Avatar</h4>
                          <div class="col-12 px-0 d-flex">
                            <label
                              for="avatar-image"
                              class="btn btn-sm btn-primary mr-25"
                              >Change</label
                            >
                            <input
                              type="file"
                              name="avatar-image"
                              id="avatar-image"
                            />
                          </div>
                        </div>
                      </div>
                      <!-- users edit media object ends -->
                      <!-- users edit account form start -->
                      
                      <%
            session.setAttribute("prn","1");
           String sname = (String)session.getAttribute("prn");
           List li=AlumniCon.editStudProfile(sname); 
           Alumni_data ad = new Alumni_data();
           try{
           ad=(Alumni_data)li.get(0);
           }catch(Exception e){}
           ad.getClass();
       %>
                      
                      <form action="../../controller/alumni/editProfile.jsp" method="post">
                        <div class="row">
                          <div class="col-12 col-sm-6">
                            <div class="form-group">
                              <div class="controls">
                                <label>Name</label>
                                <input
                                  type="text"
                                  name="name"
                                  disabled
                                  class="form-control"
                                  placeholder="Name"
                                  value="<%=ad.getName()%>"
                                  required
                                  data-validation-required-message="Name field is required"
                                />
                              </div>
                            </div>
                                  
                                  
                            <div class="form-group">
                              <div class="controls">
                                <label>Password</label>
                                <input
                                  type="text"
                                  name="password"
                                  class="form-control"
                                  placeholder="Name"
                                  value="<%=ad.getPassword()%>"
                                  required
                                  data-validation-required-message="Password field is required"
                                />
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="controls">
                                <label>Year of admission</label>
                                <input
                                  type="text"
                                  disabled
                                  name="admissionYear"
                                  class="form-control"
                                  placeholder="Year of admission"
                                  value="<%=ad.getAdmissionYear()%>"
                                  required
                                  data-validation-required-message="Admission year field is required"
                                />
                              </div>
                            </div>

                            <div class="form-group">
                              <div class="controls">
                                <label>PRN</label>
                                <input
                                  type="text"
                                  name="prn"
                                  class="form-control"
                                  placeholder="PRN"
                                  value="<%=ad.getPrn()%>"
                                  required
                                  disabled
                                  data-validation-required-message="PRN field is required"
                                />
                              </div>
                            </div>
                            <div class="form-group">
                              <label>Programmae</label>
                              <input
                                type="text"
                                name="programme"
                                class="form-control"
                                placeholder="Programmae"
                                disabled
                                value="<%=ad.getProgramme()%>"
                              />
                            </div>
                            <div class="form-group">
                              <div class="controls">
                                <label>DOB</label>
                                <input
                                  type="text"
                                  name="dob"
                                  class="form-control"
                                  required
                                  placeholder="DOB"
                                  disabled
                                  value="<%=ad.getDob()%>"
                                  data-validation-required-message="This phone number field is required"
                                />
                              </div>
                            </div>
                          </div>
                          <div class="col-12 col-sm-6">
                            <div class="form-group">
                              <div class="controls">
                                <label>City</label>
                                <input
                                  type="text"
                                  name="city"
                                  class="form-control"
                                  placeholder="Country"
                                  value="Pune"
                                  required
                                  data-validation-required-message="Username field is required"
                                />
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="controls">
                                <label>E-mail</label>
                                <input
                                  type="email"
                                  name="email"
                                  class="form-control"
                                  placeholder="Email"
                                  value="<%=ad.getEmail()%>"
                                  required
                                  data-validation-required-message="Email field is required"
                                />
                              </div>
                            </div>

                            <div class="form-group">
                              <div class="controls">
                                <label>Year of graduation</label>
                                <input
                                  type="text"
                                  name="PassoutYear"
                                  class="form-control"
                                  placeholder="Year of graduation"
                                  disabled
                                  value="<%=ad.getPassOutYear()%>"
                                  
                                  required
                                  data-validation-required-message="Graduation year field is required"
                                />
                              </div>
                            </div>
                            <div class="form-group">
                              <label>Department</label>
                              <input
                                  type="text"
                                  name="department"
                                  class="form-control"
                                  placeholder="Department"
                                  value="<%=ad.getDepartment()%>"
                                  required
                                  disabled
                                  data-validation-required-message="Department year field is required"
                                />
                            </div>
                              
                            <div class="form-group">
                              <label>Status</label>
                              <input
                                  type="text"
                                  name="status"
                                  class="form-control"
                                  placeholder="Status"
                                  value="<%=ad.getStatus() %>"
                                  required
                                  data-validation-required-message="Status year field is required"
                                />
                              
                            </div>
                              
                            <div class="form-group">
                              <div class="controls">
                                <label>Phone Number</label>
                                <input
                                  type="text"
                                  name="mobileNo"
                                  class="form-control"
                                  required
                                  placeholder="Phone number"
                                  value="<%=ad.getMobileNo()%>"
                                  data-validation-required-message="This phone number field is required"
                                />
                              </div>
                            </div>
                          </div>
                          <div
                            class="col-12 d-flex flex-sm-row flex-column justify-content-end mt-1"
                          >
                            <button
                              type="submit"
                              class="btn btn-primary glow mb-1 mb-sm-0 mr-0 mr-sm-1"
                            >
                              Save changes
                            </button>
                            <button type="reset" class="btn btn-light">
                              Cancel
                            </button>
                          </div>
                        </div>
                      </form>
                      <!-- users edit account form ends -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- users edit ends -->
        </div>
      </div>
    </div>
    <!-- END: Content-->
    <!-- ////////////////////////////////////////////////////////////////////////////-->

    <!-- BEGIN PAGE VENDOR JS-->
    <script src="../../assets/js/jqBootstrapValidation.js"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
</html>
