<%-- 
    Document   : addBlog
    Created on : Jan 8, 2020, 11:40:10 PM
    Author     : Shubham Nehe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Blog</title> 
    </head> 
    <body> 
        <form action="../../../controller/alumni/addBlog.jsp">
            Title : <input type="text" name="title">
            Content : <input type="text" name="content"> 
            Image : <input type="file" name="image">
            <input type="submit" value="ADD">
        </form> 
    </body>
</html> 
