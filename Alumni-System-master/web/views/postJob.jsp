<%-- 
    Document   : postJob
    Created on : Jan 10, 2020, 10:37:28 PM
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
        <form action="../controller/postJob.jsp" method="post"> 
            Company name : <input required type="text" name="companyName">
            designation : <select required name="designation">
                <option>DevOps Engineer</option>
                <option>Data Scientist</option>
                <option>Android Developer</option>
                <option>Network Administrator</option>
                <option>System Analyst</option>
                <option>Web Developer</option>
                <option>Security Analyst</option>
                <option>Database Administrator</option>
            </select>
            
            Salary : <input type="text" required name="salary"><br> 
            Location : <input type="text" required name="location"> <br>
            contact : <input type="text" name="contact" required> <br>
            jobDesc : <input type="textarea" name="jobDesc" required> <br>
            
            deadline : <input type="date" name="deadline" required> 
            
            <input type="submit" value="POST">
        </form>
    </body>
</html>
