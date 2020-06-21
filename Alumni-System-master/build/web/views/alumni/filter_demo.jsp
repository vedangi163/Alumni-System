<%-- 
    Document   : filter_demo
    Created on : Jan 7, 2020, 9:27:57 PM
    Author     : Shubham Nehe
--%>

<%@page import="beans.Alumni_data"%>
<%@page import="mainController.AlumniCon"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            
            String s[]=request.getParameterValues("year");
                
            
            System.out.print("\n\n\n\n\n\n\n");
            List l=AlumniCon.getAlumniByYear(s);
            
            for(Object o:l) 
            {
                Alumni_data a=(Alumni_data)o;
                out.println(a.getName());  
            } 
                
            %>
    </body>
</html>
