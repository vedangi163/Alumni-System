<%-- 
    Document   : register
    Created on : Jan 5, 2020, 7:07:13 PM
    Author     : Shubham Nehe
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.String"%>
<%@page import="mainController.AlumniCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <jsp:useBean id="alumni" class="beans.Alumni_data"></jsp:useBean>
        <jsp:setProperty property="*" name="alumni"/>
        <% 
            alumni.setGender(request.getParameter("gender").charAt(0));
            
            
            
            
            int i=AlumniCon.register(alumni);
            out.print("i="+i);
            
            if(i>0)  
                response.sendRedirect("../../views/alumni/registerAlumni.jsp?result=Registration successful");
            else
                response.sendRedirect("../../views/alumni/alumniRegister.jsp?result=Registration successful");
        %> 
        
    </body>
</html>
