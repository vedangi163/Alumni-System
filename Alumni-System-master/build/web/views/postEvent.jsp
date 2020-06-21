<%-- 
    Document   : postEvent
    Created on : Jan 11, 2020, 11:49:26 AM
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
        POST EVENT<br><br>
        <form action="../controller/postEvent.jsp" method="post"> 
            Title : <input required type="text" name="title"><br>
            eventDesc : <input required type="text" name="eventDesc"><br>
            date : <input type="date" name="date"><br>
            
            startTime : <input type="time" name="startTime"><br>
            endTime : <input type="time" name="endTime"><br>
            place : <input type="text" name="place"><br>
            
            alumniYear : <input type="text" name="alumniYear"><br>
            type : 
            <select required name="type">
                <option value="meetup">Meetup</option> 
                <option value="seminar">Seminar</option>
                <option value="getTogether">Get Together</option>
            </select>
            Image : <input type="file" name="image"><br>
            <input type="submit" value="POST">
        </form>
    </body>
</html>
