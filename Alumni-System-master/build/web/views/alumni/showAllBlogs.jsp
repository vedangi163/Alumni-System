<%-- 
    Document   : showAllBlogs
    Created on : Jan 9, 2020, 11:25:29 PM
    Author     : Shubham Nehe
--%>


<%@page import="mainController.PostsCon"%>
<%@page import="beans.Blogs"%>
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
            List blogs=PostsCon.getAllBlogs();
            Blogs b;%>
            <form method="post">
            <%for(int i=0;i<blogs.size();i++) 
            { 
                b=(Blogs)blogs.get(i);%> 
                <a href="showBlog.jsp?id=<%=b.getBlogID()%>"><%=b.getTitle()%></a> 
                <button onclick='function like(blog_id){
                    if(document.getElementById(blog_id).value == 0)
                    {   
                        document.getElementById(blog_id).value =1;
                        var cnt=document.getElementById("count_"+blog_id).innerHTML;
                        cnt=parseInt(cnt)+1;
                        document.getElementById("count_"+blog_id).innerHTML=cnt;
                        <%PostsCon.updateBlogLikeCount(b.getBlogID()); %>
                    } 
                    
                }; like("blog_<%=b.getBlogID()%>")' id="blog_<%=b.getBlogID()%>" value="0">Like</button>
                <m id="count_blog_<%=b.getBlogID()%>"><%=PostsCon.getBlog(b.getBlogID()).getLikeCount()%></m>
                <input type="submit" formaction="showBlog.jsp?id=<%=b.getBlogID()%>" value="Comment">
                <br>
            <%}%>
            </form>
    </body> 
</html> 

 