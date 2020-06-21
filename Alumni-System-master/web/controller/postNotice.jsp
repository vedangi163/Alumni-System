<%-- 
    Document   : postNotice
    Created on : Jan 11, 2020, 3:42:22 PM
    Author     : Shubham Nehe
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="mainController.PostsCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="notice" class="beans.Notices"/> 
        <jsp:setProperty property="*" name="notice"/> 
        <%
            
            SimpleDateFormat f=new SimpleDateFormat("yyyy/MM/dd");
            String date=f.format(new Date());
            notice.setDate(date); 
            
            PostsCon.postNotice(notice);  
            response.sendRedirect("../views/college-feed.jsp");
        %>
    </body>
</html>
