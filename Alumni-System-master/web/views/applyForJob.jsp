<%-- 
    Document   : applyForJob
    Created on : Jan 11, 2020, 12:17:07 AM
    Author     : Shubham Nehe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <form action="../controller/applyForJob.jsp">
            <input type="file" name="resume">
            <input type="submit" value="Upload CV">
        </form>
    </body>
</html>
