<%@page import="mainController.AlumniCon"%>
<%@page import="beans.Alumni_data"%>
<%@page import="beans.Chat_data"%>
<%@page import="java.util.List"%>
<%@page import="mainController.chatCon"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"
    />
    <title>Chat</title>
    <link rel="apple-touch-icon" href="../assets/img/ico/apple-icon-120.png" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="../assets/images/ico/favicon.ico"
    />
    <!-- BEGIN MODERN CSS-->
    <link rel="stylesheet" type="text/css" href="../assets/css/app.css" />
    <!-- END MODERN CSS-->
    <!-- BEGIN Page Level CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/app-chats.min.css"
    />
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <!-- END Custom CSS-->
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
    <link rel="stylesheet" href="../assets/css/user-feed.min.css" />
    <link rel="stylesheet" href="../assets/css/style.css" />
    <!-- END: Theme CSS-->
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white static-top">
      <div class="nav-container ">
        <div class="row">
          <a class="navbar-brand" href="social-feed.html">
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
                <a href="social-feed.html" class="nav-link h2">
                  <i class="material-icons">
                    home
                  </i></a
                >
              </li>

              <li class="nav-item mt-1">
                <a class="nav-link h3" href="job-search.html"
                  ><i class="material-icons">
                    work
                  </i>
                </a>
              </li>
              <li class="nav-item mt-1">
                <a class="nav-link h3" href="event.html"
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
              <li class="nav-item active mt-1">
                <a href="#" class="nav-link h3"
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
    <div class="content-body  inline-block">
      <div class="row rounded-lg shadow-none">
        <!-- Users box-->
        <div class="col-5 px-0 bg-light">
          <div class="bg-white">
            <div class="bg-gray px-4 py-2 bg-light">
              <p class="h5 mb-0 py-1">Recent</p>
            </div>

            <div class="messages-box">
              <div class="list-group rounded-0">
                  <form action="#" method="post">
               <%
                   //chatCon.saveMessage(11, 1, "msgData");
                   List userList=chatCon.getMyConnections(Integer.parseInt(session.getAttribute("user").toString()));
                   Alumni_data ad;
                   for(int i=0;i<userList.size();i++)
                   {
                       //out.print(userList);
                       /*Chat_data c=(Chat_data)userList.get(i);*/
                       //out.print(" "+c.getReceiverId()+"  "+c.getStatus()+"<br>");
                       ad=AlumniCon.getAlumniData(Integer.parseInt(userList.get(i).toString()));
                    
                   
               %>   
                  
                <button 
                  name="userId" value="<%=ad.getId()%>" class="list-group-item list-group-item-action active text-white rounded-0"
                  > 
                  <div class="media"> 
                    <img
                      src="../assets/img/portrait/large/avatar-l-1.png"
                      alt="user"
                      width="50"
                      class="rounded-circle"
                    />
                    <div class="media-body ml-4">
                      <div
                        class="d-flex align-items-center justify-content-between mb-1"
                      > 
                        <h6 class="mb-0"><%=ad.getName()%></h6>
                        <small class="small font-weight-bold">25 Dec</small>
                      </div>
                      <p class="font-italic mb-0 text-small">
                        
                      </p>
                    </div>
                  </div>
                </button>
                 <%}%> 
                  </form>
                </div>
            </div>
          </div>
        </div>
<div class="col-7 px-0 h-100">
          <div class="px-4 py-5 chat-box bg-white">                  
        <%
            int uId;
            List msgs;
            int sessionId=Integer.parseInt(session.getAttribute("user").toString());
        //    out.print("sessif"+sessionId+"     ");
            try{ 
                uId=Integer.parseInt(request.getParameter("userId"));
            }catch(Exception e){uId=2;};
      //      out.print("<br>gggggggggg"+session.getAttribute("user")+"    "+uId);
            msgs=chatCon.getMessages(sessionId,uId);

            for(int i=0;i<msgs.size();i++){
                Chat_data d=(Chat_data)msgs.get(i);

                if(d.getSenderId()==sessionId){ 
            %>  
            <div class="media w-50 mb-3">
              <img src="../assets/img/portrait/large/avatar-l-1.png"
                alt="user"
                width="50"
                class="rounded-circle"
              /> 
              <div class="media-body ml-3">
                <div class="bg-light rounded py-2 px-3 mb-2">
                  <p class="text-small mb-0 text-muted">
                    <%=d.getMsgData()%>
                  </p>
                </div>
                <p class="small text-muted">12:00 PM | Aug 13</p>
              </div>
            </div>
            <%}else{  %>

            <!-- Reciever Message-->
            <div class="media w-50 ml-auto mb-3">
              <div class="media-body">
                <div class="bg-primary rounded py-2 px-3 mb-2">
                  <p class="text-small mb-0 text-white">
                    <%=d.getMsgData()%>
                  </p>
                </div>
                <p class="small text-muted">12:01 PM | Aug 13</p>
              </div>
            </div>
            <%}}%>
          </div>

          
          <!-- Typing area --> 
          <form action="saveMsg.jsp" class="bg-light">
            <div class="input-group">
              <input
                type="text" name="msgData" 
                placeholder="Type a message"
                aria-describedby="button-addon2"
                class="form-control rounded-0 border-0 py-4 bg-light"
              /> 
              <div class="input-group-append">
                <button id="button-addon2" type="submit" class="btn btn-link">
                  <i class="fa fa-paper-plane"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>

    <!-- BOOTSTRAP JS -->
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
