<%-- 
    Document   : applyForJob
    Created on : Jan 11, 2020, 12:00:37 AM
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
        <jsp:useBean id="job" class="beans.Applied_jobs"></jsp:useBean>
        <jsp:setProperty property="*" name="job"/>
        <% 
            job.setJobID(1);
            job.setUserID(1);
            PostsCon.applyForJob(job);
            response.sendRedirect("../views/career.jsp");
        %>
    </body>
</html>
