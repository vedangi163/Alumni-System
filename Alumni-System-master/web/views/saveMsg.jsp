<%-- 
    Document   : saveMsg
    Created on : Jan 12, 2020, 4:10:49 AM
    Author     : Shubham Nehe
--%>

<%@page import="mainController.chatCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
              String msg=request.getParameter("msgData");
              if(msg!=null)
                chatCon.saveMessage(2, 1, request.getParameter("msgData"));
              response.sendRedirect("chat.jsp");
          %>
    </body>
</html>
