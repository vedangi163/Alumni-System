<%-- 
    Document   : alumniMembers
    Created on : Jan 5, 2020, 11:25:56 PM
    Author     : Shubham Nehe
--%>

<%@page import="beans.Alumni_data"%>
<%@page import="java.util.List"%>
<%@page import="mainController.AlumniCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumni Directory</title>
    </head>
    <body>
        <form method="post"> 
        <% 
            List yearList=AlumniCon.getPassOutYearList();
            Alumni_data ad;
            
            if(request.getParameter("yop")==null)
            {
                for(int i=0;i<yearList.size();i++) 
                {%>
                    <input type="submit" method="get" formaction="alumniMembers.jsp?yop=<%=yearList.get(i)%>" value="<%=yearList.get(i)%>">
                <%}
            } 
            else 
            { 
                List alumniList=AlumniCon.getAlumniByYear(Integer.parseInt(request.getParameter("yop")));%> 
                    <% 
                        for(int i=0;i<alumniList.size();i++)
                        {
                            ad=(Alumni_data)alumniList.get(i);
                    %> 
                    <tr><%=ad.getPrn()%>&nbsp&nbsp&nbsp&nbsp&nbsp<%=ad.getName()%></tr> <br>
                        <%}
                    %>
                    
            <%}%>
               
            
            </form>
    </body>
</html> 
