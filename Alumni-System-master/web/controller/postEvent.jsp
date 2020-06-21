<%-- 
    Document   : postEvent
    Created on : Jan 11, 2020, 12:05:03 PM
    Author     : Shubham Nehe
--%>

<%@page import="mainController.PostsCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="event" class="beans.Events"/> 
        <jsp:setProperty property="*" name="event"/> 
        <%
            event.setClgID(1);
            
            //java.sql.Timestamp sqlNow=new java.sql.Timestamp(new java.util.Date().getTime());
            
            PostsCon.postEvent(event); 
            response.sendRedirect("../views/event.jsp");
        %>
    </body> 
</html> 
