<%-- 
    Document   : addBlog
    Created on : Jan 9, 2020, 6:32:05 PM
    Author     : Shubham Nehe
--%>

<%@page import="java.sql.Date"%>
<%@page import="mainController.PostsCon"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="blog" class="beans.Blogs"></jsp:useBean>
        <jsp:setProperty property="*" name="blog"/>
        <%
            blog.setAlumniID(1);
            java.sql.Timestamp sqlNow=new java.sql.Timestamp(new java.util.Date().getTime());
            blog.setDate(sqlNow.toString());
            PostsCon.addBlog(blog);
            response.sendRedirect("../views/social-feed.jsp");
        %>
    </body>
</html>
