<%-- 
    Document   : showBlog
    Created on : Jan 9, 2020, 11:36:10 PM
    Author     : Shubham Nehe
--%>

<%@page import="mainController.AlumniCon"%>
<%@page import="beans.Alumni_data"%>
<%@page import="beans.Comments"%>
<%@page import="java.util.List"%>
<%@page import="beans.Blogs"%>
<%@page import="mainController.PostsCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <form method="post">
        <%
            int id=Integer.parseInt(request.getParameter("id"));
            Blogs b=PostsCon.getBlog(id);
        out.println("Title : "+b.getTitle()+"<br>"+"Content : "+b.getContent());%><br>
                <input type="text" required name='content' placeholder="Leave your thoughts here..">
                <input type="submit" formaction="../../controller/alumni/postComment.jsp" value="Post" required>
                <input type="hidden" name="blogID" value="<%=id%>">
            </form>
            <br>
            
            <%
                //Show All Comments
                List commentsList=PostsCon.getAllComments(id);
                Comments c;
                Alumni_data ad;
                    for(int i=0;i<commentsList.size();i++)
                    {
                        c=(Comments)commentsList.get(i);
                        ad=AlumniCon.getAlumniData(c.getAlumniID());
                        out.print(ad.getName()+"<br>");
                        out.println(c.getContent()+"<br>");
                        out.println(c.getDate()+"<br><br><br>");
                    } 
            %>
            
         
    </body>
</html>
