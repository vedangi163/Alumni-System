<%-- 
    Document   : editProfile
    Created on : Jan 7, 2020, 11:22:16 PM
    Author     : DELL
--%>

<%@page import="mainController.AlumniCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="ad" class="beans.Alumni_data"></jsp:useBean> 
        <jsp:setProperty property="*" name="ad"/>
        
        <%
            if(session.getAttribute("prn")==null)
            {
                response.sendRedirect("../../views/editProfile.jsp");
            }
            else
            {
                
                int i=AlumniCon.saveProfile(ad,(String)session.getAttribute("prn"));
                if(i>0)
                {
                    response.sendRedirect("../../views/alumni/edit-profile.jsp?result=Profile updated successfully");
                }
                else
                {
                     response.sendRedirect("../views/alumni/edit-profile.jsp?failResult=Profile updatedion failed");
                }
            }
        
        %>
    </body>
</html>
