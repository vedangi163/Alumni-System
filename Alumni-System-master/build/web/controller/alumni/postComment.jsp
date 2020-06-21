<%-- 
    Document   : postComment
    Created on : Jan 10, 2020, 10:25:45 AM
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
        <jsp:useBean id="comment" class="beans.Comments"></jsp:useBean>
        <jsp:setProperty property="*" name="comment"/>
        <%
            comment.setAlumniID(1);
            SimpleDateFormat f=new SimpleDateFormat("yyyy/MM/dd");
            String date=f.format(new Date());
            //Add into table
            PostsCon.postComment(comment);
            response.sendRedirect("../../views/alumni/showBlog.jsp?id="+comment.getBlogID());
        %> 
    </body>
</html>
