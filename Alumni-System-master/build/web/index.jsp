<%-- 
    Document   : index
    Created on : Jan 5, 2020, 1:41:12 AM
    Author     : Shubham Nehe
--%>

<%@page import="beans.Alumni_data"%>
<%@page import="mainController.AlumniCon"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.service.ServiceRegistry"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    </head>
    <body>
        <h1>Hello World!</h1>
    </body> 
    
    <%
        /*if(AlumniCon.login("alumni123","alumni"))
            out.print("DONE");
        else
            out.print(" NOT DONE");*/
    %> 
    <form action="views/alumni/alumniMembers.jsp"> 
        <input type="submit" class="btn btn-md btn-success" value="Find Batchmates">
    </form>
</html> 
