<%-- 
    Document   : postJob
    Created on : Jan 10, 2020, 10:52:43 PM
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
        <jsp:useBean id="job" class="beans.Jobs"></jsp:useBean>
        <jsp:setProperty property="*" name="job"/>
        <%
            job.setPostedBy(1);
            java.sql.Timestamp sqlNow=new java.sql.Timestamp(new java.util.Date().getTime());
            job.setPostedOn(sqlNow.toString());
            PostsCon.postJob(job);
            response.sendRedirect("../views/career.jsp");
        %>
    </body>
</html> 
